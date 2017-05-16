<?php
include_once "header.php";
$errormsg = "";
$showform = 1;
$inputdate = date();
require_once "connect.php";


if(!isset($_SESSION['userid']))
{
    echo '<p>This page requires you to <a href="login.php">log in</a>.';
    include_once "footer.php";
    exit();
}
if($_SESSION['userid'] != $_GET['ID'] && !isset($_POST['ID'])){
    echo '<p>You can only update your own profile!</p>';
    include_once "footer.php";
    exit();
}

if(isset($_POST['mysubmit'])) {
$_GET['ID'] = $_POST['ID'];
//---------------SANITIZED DATA -------------------------//
        $formfield['firstname'] = trim($_POST['firstname']);
        $formfield['middle'] = trim($_POST['middle']);
        $formfield['lastname'] = trim($_POST['lastname']);
        $formfield['email'] = trim(strtolower($_POST['email']));
        $formfield['uname'] = trim(strtolower($_POST['uname']));
        $formfield['age'] = trim($_POST['age']);
        $formfield['address1'] = trim($_POST['address1']);
        $formfield['address2'] = trim($_POST['address2']);
        $formfield['city'] = trim($_POST['city']);
        $formfield['state'] = trim($_POST['state']);
        $formfield['zip'] = trim($_POST['zip']);
        /*---------------SANITIZED DATA-------------------------*/

        /*--------------ERROR CHECKING-------------------------*/
        if(empty($formfield['firstname'])){$errormsg .="<p>You did not put your first name is empty.</p>";}
        if(empty($formfield['lastname'])){$errormsg .="<p>You did not put your last name is empty.</p>";}
        if(empty($formfield['email'])){$errormsg .="<p>You did not put in an email.</p>";}
        if(empty($formfield['uname'])){$errormsg .="<p>You did not put in an username.</p>";}
        if(empty($formfield['age'])){$errormsg .="<p>You did not type in your age.</p>";}
        if(empty($formfield['address1'])){$errormsg .="<p>You did not type in your address.</p>";}
        if(empty($formfield['city'])){$errormsg .="<p>You did not type in your city.</p>";}
        if(empty($formfield['state'])){$errormsg .="<p>You did not type in your state.</p>";}
        if(empty($formfield['zip'])){$errormsg .="<p>You did not type in your zip code.</p>";}

        /* VALIDATING THINGS */
        if (!filter_var($formfield['email'], FILTER_VALIDATE_EMAIL))
        {
            $errormsg .= "<p>Your email is not valid.</p>";
        }
        /*USERNAME CHECK*/
        if ($formfield['uname'] != $_POST['origuname']){
            try
            {

                $sqlusers = 'SELECT * FROM tlking2_users WHERE uname = :uname';
                $stmtusers = $pdo->prepare($sqlusers);
                $stmtusers->bindValue(':uname', $formfield['uname']);
                $stmtusers->execute();
                $countusers = $stmtusers->rowCount();
                if ($countusers > 0)
                {
                    $errormsg .= "<p>The username is already taken.</p>";
                }
            }catch (PDOException $e)
            {
                echo 'Unable to fetch users. <br />' .$e->getMessage();
                exit();
            }
        }

        /*EMAIL CHECK*/
    if ($formfield['email'] != $_POST['orignemail']){
        try
        {
            $sqlusers = 'SELECT * FROM tlking2_users WHERE email = :email';
            $stmtusers = $pdo->prepare($sqlusers);
            $stmtusers->bindValue(':email', $formfield['email']);
            $stmtusers->execute();
            $countusers = $stmtusers->rowCount();
            if ($countusers > 0)
            {
                $errormsg .= "<p>The email is already taken.</p>";
            }
        }catch (PDOException $e)
        {
            echo 'Unable to fetch users. <br />' .$e->getMessage();
            exit();
        }
    }

        /*---------------DISPLAYING ERROR MESSAGES-------------*/
        if($errormsg != "")
        {
            echo "<div class='error'><p>THERE ARE ERRORS!</p>";
            echo $errormsg;
            echo "</div>";
        }
        else{

            /*PUTTING THE FORM IN THE DATABASE*/
            try {
                $sqlupdate = 'UPDATE tlking2_users SET firstname = :firstname, lastname = :lastname, middle = :middle, email = :email, uname = :uname, age = :age, address1 = :address1, address2 = :address2, city = :city, state = :state, zip = :zip WHERE ID = :ID';
                $stmtupdate = $pdo->prepare($sqlupdate);
                $stmtupdate->bindvalue(':firstname', $formfield['firstname']);
                $stmtupdate->bindvalue(':lastname', $formfield['lastname']);
                $stmtupdate->bindvalue(':middle', $formfield['middle']);
                $stmtupdate->bindvalue(':email', $formfield['email']);
                $stmtupdate->bindvalue(':uname', $formfield['uname']);
                $stmtupdate->bindvalue(':age', $formfield['age']);
                $stmtupdate->bindvalue(':address1', $formfield['address1']);
                $stmtupdate->bindvalue(':address2', $formfield['address2']);
                $stmtupdate->bindvalue(':city', $formfield['city']);
                $stmtupdate->bindvalue(':state', $formfield['state']);
                $stmtupdate->bindvalue(':zip', $formfield['zip']);
                $stmtupdate->bindValue(':ID', $_POST['ID']);
                $stmtupdate->execute();
                /*-------------*/
                $showform = 0;
                echo "<div class='success'><p>Profile updating complete.  Thank you.</p></div>";
            }
            catch (PDOException $e) {
                echo "<p class= 'error'>THERE ARE ERRORS! REPOPULATING WITH ORIGINAL VALUES.</p>";
                include_once "footer.php";
                exit();
            }
        }
}

if($showform ==1) {
    try {
        $sql = 'SELECT * FROM tlking2_users WHERE ID = :ID';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':ID', $_GET['ID']);
        $stmt->execute();
        $row = $stmt->fetch();
        ?>
        <form method="post" action="userupdate.php" name="userdataformupdate">
            <table>
                <tr>
                    <th><label for="firstname">First Name:</label></th>
                    <td><input type="text" name="firstname" id="firstname" size="25"value="<?php echo $row['firstname']; ?>"/></td>
                </tr>
                <tr>
                    <th><label for="middle">Middle Initial:</label></th>
                    <td><input type="text" name="middle" id="middle" size="5" maxlength="1" value="<?php echo $row['middle']; ?>"/></td>
                </tr>
                <tr>
                    <th><label for="lastname">Last Name:</label></th>
                    <td><input type="text" name="lastname" id="lastname" size="35" value="<?php echo $row['lastname']; ?>"/></td>
                </tr>
                <tr>
                    <th><label for="email">Email:</label></th>
                    <td><input type="email" name="email" id="email" size="40" value="<?php echo $row['email']; ?>"/></td>
                </tr>
                <tr>
                    <th><label for="uname">Username:</label></th>
                    <td><input type="text" name="uname" id="uname" size="20" value="<?php echo $row['uname']; ?>"/></td>
                </tr>
                <tr>
                    <th><label for="age">Age:</label></th>
                    <td><input type="text" name="age" id="age" size="5" maxlength="3" value="<?php echo $row['age']; ?>"/>
                    </td>
                </tr>
                <tr>
                    <th><label for="address1">Street Address:</label></th>
                    <td><input type="text" name="address1" id="address1" size="45" value="<?php echo $row['address1']; ?>"/>
                    </td>
                </tr>
                <tr>
                    <th><label for="address2">Apt./ Suite:</label></th>
                    <td><input type="text" name="address2" id="address2" size="30" value="<?php echo $row['address2']; ?>"/>
                    </td>
                </tr>
                <tr>
                    <th><label for="city">City:</label></th>
                    <td><input type="text" name="city" id="city" size="25" value="<?php echo $row['city']; ?>"/></td>
                </tr>
                <tr>
                    <th><label for="state">State (Initials):</label></th>
                    <td><input type="text" name="state" id="state" size="2" maxlength="2"  value="<?php echo $row['state']; ?>"/></td>
                </tr>
                <tr>
                    <th><label for="zip">5-digit Zip Code:</label></th>
                    <td><input type="text" name="zip" id="zip" size="10" maxlength="5" value="<?php echo $row['zip']; ?>"/></td>
                </tr>
                <tr>
                    <th>Submit:</th>
                    <td>
                        <input type="hidden" name="ID" id="ID" value="<?php echo $row['ID']; ?>"/>
                        <input type="hidden" name="origuname" id="origuname" value="<?php echo $row['uname']; ?>"/>
                        <input type="hidden" name="orignemail" id="orignemail" value="<?php echo $row['email']; ?>"/>
                        <input type="submit" name="mysubmit" value="GO"/></td>
                </tr>
            </table>
        </form>
        <?php
    } catch (PDOException $e) {
        echo 'Error fetching users: <br />ERROR MESSAGE:<br />' . $e->getMessage();
        exit();
    }
    include_once "footer.php";
}
?>
