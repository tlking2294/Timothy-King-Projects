<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <title>Assignment 07</title>
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
<?php
    $errormsg= "";
    $showform = 1;

    require_once "connect.php";

    if( isset($_POST['mysubmit']) )
    {
        //echo '<p>The form was submitted</p>';

        //data clensing
        $formfield['fname'] = trim($_POST['fname']);
        $formfield['mi'] = trim($_POST['mi']);
        $formfield['lname'] = trim($_POST['lname']);
        $formfield['uname'] = trim(strtolower($_POST['uname']));
        $formfield['email'] = trim($_POST['email']);
        $formfield['password'] = trim($_POST['password']);
        $formfield['mypass2'] = trim($_POST['mypass2']);
        $formfield['bio'] = trim($_POST['bio']);

        if(empty($formfield['fname'])){$errormsg .="<p>Your first name is empty.</p>";}
        if(empty($formfield['mi'])){$errormsg .="<p>Your last name is empty.</p>";}
        if(empty($formfield['lname'])){$errormsg .="<p>Your last name is empty.</p>";}
        if(empty($formfield['uname'])){$errormsg .="<p>Your username is empty.</p>";}
        if(empty($formfield['email'])){$errormsg .="<p>Your email field is empty.</p>";}
        if(empty($formfield['password'])){$errormsg .="<p>Your password is empty.</p>";}
        if(empty($formfield['mypass2'])){$errormsg .="<p>Your comfirmed password is empty.</p>";}
        if(empty($formfield['bio'])){$errormsg .="<p>Your comments are empty.</p>";}

        if($formfield['password'] != $formfield['mypass2']){$errormsg .= "<p>Your passwords do not match!</p>";}

        if($errormsg != ""){
            echo "<div class='error'><p>Fill in these areas!!!</p>";
            echo $errormsg; echo "</div>";
        }
        else {
            try {
                $sqlinsert = 'INSERT INTO a07 (fname, mi, lname, uname, email, password, bio) VALUES (:fname, :mi, :lname, :uname, :email, :password, :bio)';
                $stmtinsert = $pdo->prepare($sqlinsert);
                $stmtinsert->bindValue(':fname', $formfield['fname']);
                $stmtinsert->bindValue(':mi', $formfield['mi']);
                $stmtinsert->bindValue(':lname', $formfield['lname']);
                $stmtinsert->bindValue(':uname', $formfield['uname']);
                $stmtinsert->bindValue(':email', $formfield['email']);
                $stmtinsert->bindValue(':password', $formfield['password']);
                $stmtinsert->bindValue(':bio', $formfield['bio']);
                $stmtinsert->execute();
            } catch (PDOException $e){
                echo 'Error!' . $e->getMessage();
                exit();
            }
        }
    }
?>
<form method="post" action="index.php" name="myform">
    <fieldset><legend>User Registration</legend>
        <table>

            <tr>
                <th><label for="fname">First Name:</label></th>
                <td><input type="text" name="fname" id="fname" required value="<?php if( isset($formfield['fname'])){echo $formfield['fname'];}?>" /></td>
            </tr>
            <tr>
                <th><label for="mi">Middle Initial:</label></th>
                <td><input type="text" name="mi" id="mi" size="3" maxlength="1" value="<?php if( isset($formfield['mi'])){echo $formfield['mi'];}?>"/></td>
            </tr>
            <tr>
                <th><label for="lname">Last Name:</label></th>
                <td><input type="text" name="lname" id="lname" size="35" required value="<?php if( isset($formfield['lname'])){echo $formfield['lname'];}?>" /></td>
            </tr>

            <tr>
                <th><label for="email">Email:</label></th>
                <td><input type="email" name="email" id="email" required value="<?php if( isset($formfield['email'])){echo $formfield['email'];}?>" /></td>
            </tr>

            <tr>
                <th><label for="uname">Username:</label></th>
                <td><input type="text" name="uname" id="uname" size="15" maxlength="10" required value="<?php if( isset($formfield['uname'])){echo $formfield['uname'];}?>"/></td>
            </tr>
            <tr>
                <th><label for="password">Password:</label></th>
                <td><input type="password" name="password" id="password" required value="<?php if( isset($formfield['password'])){echo $formfield['password'];}?>" /></td>
            </tr>
            <tr>
                <th><label for="mypass2">Confirm Password:</label></th>
                <td><input type="password" name="mypass2" id="mypass2" required value="<?php if( isset($formfield['mypass2'])){echo $formfield['mypass2'];}?>" /></td>
            </tr>

            <tr>
                <th><label for="bio">Bio: </label></th>
                <td><textarea name="bio" id="bio" cols="60" rows="6"  required><?php if( isset($formfield['bio'])){echo $formfield['bio'];}?></textarea></td>
            </tr>

            <tr>
                <th>Submit: </th>
                <td><input type="submit" name="mysubmit" value="GO" /></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>