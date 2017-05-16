
<?php
include "header.php";
$errormsg = "";
$showform = 1;
$inputdate = time();
require_once "connect.php";

if(isset($_POST['mysubmit'])) {
    echo '<p>the form sent</p>';

//---------------SANITIZED DATA -------------------------//
    $formfield['firstname'] = trim($_POST['firstname']);
    $formfield['middle'] = trim($_POST['middle']);
    $formfield['lastname'] = trim($_POST['lastname']);
    $formfield['email'] = trim(strtolower($_POST['email']));
    $formfield['uname'] = trim(strtolower($_POST['uname']));
    $formfield['pwd'] = trim($_POST['pwd']);
    $formfield['pwd2'] = trim($_POST['pwd2']);
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
    if(empty($formfield['pwd'])){$errormsg .="<p>You did not put in a password.</p>";}
    if(empty($formfield['pwd2'])){$errormsg .="<p>You did not confim your password.</p>";}
    if(empty($formfield['age'])){$errormsg .="<p>You did not type in your age.</p>";}
    if(empty($formfield['address1'])){$errormsg .="<p>You did not type in your address.</p>";}
    if(empty($formfield['city'])){$errormsg .="<p>You did not type in your city.</p>";}
    if(empty($formfield['state'])){$errormsg .="<p>You did not type in your state.</p>";}
    if(empty($formfield['zip'])){$errormsg .="<p>You did not type in your zip code.</p>";}

    /*CHECK IF PASSWORDS MATCH*/
    if($formfield['pwd'] !=$formfield['pwd2']){$errormsg .= "<p>Passwords do not match.</p>";}

    /* VALIDATING THINGS */
    if (!filter_var($formfield['email'], FILTER_VALIDATE_EMAIL))
    {
        $errormsg .= "<p>Your email is not valid.</p>";
    }
        /*USERNAME CHECK*/
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
    /*EMAIL CHECK*/
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
    /*---------------DISPLAYING ERROR MESSAGES-------------*/
    if($errormsg != "")
    {
        echo "<div class='error'><p>THERE ARE ERRORS!</p>";
        echo $errormsg;
        echo "</div>";
    }
    //-----HASHING PASSWORD-----//
    else{
        for ($i = 0; $i < 22; $i++) {
            $char22 .= substr("./ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", mt_rand(0, 63), 1);
        }

        $salt = '$2a$07$' . $char22;
        $securepwd = crypt($formfield['pwd'],$salt);

        /*PUTTING THE FORM IN THE DATABASE*/
        try {
            //enter data into database
            $sqlinsert = 'INSERT INTO tlking2_users (inputdate, firstname, lastname, middle, email, uname, pwd, salt, age, address1, address2, city, state, zip)
                      VALUES (:inputdate, :firstname, :lastname, :middle, :email, :uname, :pwd, :salt, :age, :address1, :address2, :city, :state, :zip)';
            $stmtinsert = $pdo->prepare($sqlinsert);
            $stmtinsert->bindvalue(':inputdate', $inputdate);
            $stmtinsert->bindvalue(':firstname', $formfield['firstname']);
            $stmtinsert->bindvalue(':lastname', $formfield['lastname']);
            $stmtinsert->bindvalue(':middle', $formfield['middle']);
            $stmtinsert->bindvalue(':email', $formfield['email']);
            $stmtinsert->bindvalue(':uname', $formfield['uname']);
            $stmtinsert->bindvalue(':pwd', $securepwd);
            $stmtinsert->bindvalue(':salt', $salt);
            $stmtinsert->bindvalue(':age', $formfield['age']);
            $stmtinsert->bindvalue(':address1', $formfield['address1']);
            $stmtinsert->bindvalue(':address2', $formfield['address2']);
            $stmtinsert->bindvalue(':city', $formfield['city']);
            $stmtinsert->bindvalue(':state', $formfield['state']);
            $stmtinsert->bindvalue(':zip', $formfield['zip']);
            $stmtinsert->execute();
            /*-------------*/
            $showform = 0;
            echo "<div class='success'><p>You're profile was created! You can now add songs to the database!</p></div>";
        }
        catch (PDOException $e) {
            echo 'ERROR!!!' . $e->getMessage();
            exit();
        }
    }

}
?>

<form method="post" action="userinsert.php" name="userdataform">
    <table>
        <tr>
            <th><label for="firstname">First Name:</label> </th>
            <td><input type="text" name="firstname" id="firstname" size="25" value="<?php echo $formfield['firstname']; ?>"/></td>
        </tr>
        <tr>
            <th><label for="middle">Middle Initial:</label></th>
            <td><input type="text" name="middle" id="middle" size="5" maxlength="1" value="<?php echo $formfield['middle'];?>"/></td>
        </tr>
        <tr>
            <th><label for="lastname">Last Name:</label> </th>
            <td><input type="text" name="lastname" id="lastname" size="35" value="<?php echo $formfield['lastname']; ?>"/></td>
        </tr>
        <tr>
            <th><label for="email">Email:</label> </th>
            <td><input type="email" name="email" id="email" size="40" value="<?php echo $formfield['email']; ?>"/></td>
        </tr>
        <tr>
            <th><label for="uname">Username:</label> </th>
            <td><input type="text" name="uname" id="uname" size="20" value="<?php echo $formfield['uname']; ?>"/></td>
        </tr>
        <tr>
            <th><label for="pwd">Password:</label> </th>
            <td><input type="password" name="pwd" id="pwd" size="30" value="<?php echo $formfield['pwd']; ?>"/></td>
        </tr>
        <tr>
            <th><label for="pwd2">Confirmation Password:</label> </th>
            <td><input type="password" name="pwd2" id="pwd2" size="30" value="<?php echo $formfield['pwd2']; ?>"/></td>
        </tr>
        <tr>
            <th><label for="age">Age:</label> </th>
            <td><input type="text" name="age" id="age" size="5" maxlength="3" value="<?php echo $formfield['age']; ?>"/></td>
        </tr>
        <tr>
            <th><label for="address1">Street Address:</label> </th>
            <td><input type="text" name="address1" id="address1" size="45" value="<?php echo $formfield['address1']; ?>"/></td>
        </tr>
        <tr>
            <th><label for="address2">Apt./ Suite:</label> </th>
            <td><input type="text" name="address2" id="address2" size="30" value="<?php echo $formfield['address2']; ?>"/></td>
        </tr>
        <tr>
            <th><label for="city">City:</label> </th>
            <td><input type="text" name="city" id="city" size="25" value="<?php echo $formfield['city']; ?>"/></td>
        </tr>
        <tr>
            <th><label for="state">State (Initials):</label> </th>
            <td><input type="text" name="state" id="state" size="2" maxlength="2" value="<?php echo $formfield['state']; ?>"/></td>
        </tr>
        <tr>
            <th><label for="zip">5-digit Zip Code:</label> </th>
            <td><input type="text" name="zip" id="zip" size="10" maxlength="5" value="<?php echo $formfield['zip']; ?>"/></td>
        </tr>
        <tr>
            <th>Submit:</th>
            <td><input type="submit" name="mysubmit" value="GO" /></td>
        </tr>
    </table>
</form>
<?php
include "footer.php";
?>