<!DOCTYPE html>
<html>
	<head lang="en">
		<meta charset="utf-8">
		<title>SQL INSERT</title>
		<link rel="stylesheet" href="styles.css" />
	</head>
	<body>
	<?php
	//NECESSARY VARIABLES
	$errormsg= "";
	$showform = 1;

	//DATABASE CONNECTION
	require_once "connect.php";

		if( isset($_POST['mysubmit']) )
		{
			echo '<p>The form was submitted.</p>';

			//Data Cleansing
			$formfield['mybirth'] = date("Y-m-d", strtotime($_POST['mybirth']));
			$formfield['myfirst'] = trim($_POST['myfirst']);
			$formfield['mymiddle'] = trim($_POST['mymiddle']);
			$formfield['mylast'] = trim($_POST['mylast']);
			$formfield['myemail'] = trim(strtolower($_POST['myemail']));
			$formfield['myuname'] = trim(strtolower($_POST['myuname']));
			$formfield['mypass'] = trim($_POST['mypass']);
			$formfield['mypass2'] = trim($_POST['mypass2']);
			$formfield['mygrade'] = $_POST['mygrade'];
			$formfield['mycolor'] = $_POST['mycolor'];
			$formfield['mycomments'] = trim($_POST['mycomments']);

			/*  ****************************************************************************
     		CHECK FOR EMPTY FIELDS
    		Complete the lines below for any REQIURED form fields only.
			Do not do for optional fields.
    		**************************************************************************** */
			if(empty($formfield['mybirth'])){$errormsg .="<p>Your birth date is empty.</p>";}
			if(empty($formfield['myfirst'])){$errormsg .="<p>Your first name is empty.</p>";}
			if(empty($formfield['mymiddle'])){$errormsg .="<p>Your middle initial is empty.</p>";}
			if(empty($formfield['mylast'])){$errormsg .="<p>Your last name is empty.</p>";}
			if(empty($formfield['myemail'])){$errormsg .="<p>Your email address is empty.</p>";}
			if(empty($formfield['myuname'])){$errormsg .="<p>Your username is empty.</p>";}
			if(empty($formfield['mypass'])){$errormsg .="<p>Your password is empty.</p>";}
			if(empty($formfield['mypass2'])){$errormsg .="<p>Your comfirmed password is empty.</p>";}
			if(empty($formfield['mygrade'])){$errormsg .="<p>Your grade is empty.</p>";}
			if(!isset($formfield['mycolor']) || empty($formfield['mycolor'])){ $errormsg .= "<p>Your color selection is empty.</p>";}
			if(empty($formfield['mycomments'])){$errormsg .="<p>Your comments are empty.</p>";}
			/*  ****************************************************************************
     		CHECK FOR MATCHING PASSWORDS
    		**************************************************************************** */
			if($formfield['mypass'] != $formfield['mypass2']){$errormsg .= "<p>Your passwords do not match.</p>";}

			// VALIDATE ERRORS
			if (!filter_var($formfield['myemail'], FILTER_VALIDATE_EMAIL))
			{
				$errormsg .= "<p>Your email is not valid.</p>";
			}

			/*  ****************************************************************************
			DISPLAY ERRORS
			If we have concatenated the error message with details, then let the user know
			**************************************************************************** */
			if($errormsg != "")
			{
				echo "<div class='error'><p>THESE ARE ERRORS!</p>";
				echo $errormsg;
				echo "</div>";
			}
			else
			{
				try {
					$sqlinsert = 'INSERT INTO lab09 (mybirth, myfirst, mymiddle, mylast, myemail, myuname, mypass, mygrade, mycolor, mycomments)
											VALUES (:mybirth, :myfirst, :mymiddle, :mylast, :myemail, :myuname, :mypass, :mygrade, :mycolor, :mycomments)';
					$stmtinsert = $pdo->prepare($sqlinsert);
					$stmtinsert->bindvalue(':mybirth', $formfield['mybirth']);
					$stmtinsert->bindvalue(':myfirst', $formfield['myfirst']);
					$stmtinsert->bindvalue(':mymiddle', $formfield['mymiddle']);
					$stmtinsert->bindvalue(':mylast', $formfield['mylast']);
					$stmtinsert->bindvalue(':myemail', $formfield['myemail']);
					$stmtinsert->bindvalue(':myuname', $formfield['myuname']);
					$stmtinsert->bindvalue(':mypass', $formfield['mypass']);
					$stmtinsert->bindvalue(':mygrade', $formfield['mygrade']);
					$stmtinsert->bindvalue(':mycolor', $formfield['mycolor']);
					$stmtinsert->bindvalue(':mycomments', $formfield['mycomments']);
					$stmtinsert->execute();
					echo "<div class='success'><p>There are no errors. Thank you</p></div>";
				}
				catch(PDOException $e)
				{
					echo 'ERROR!!!' .$e->getMessage();
					exit();
				}

			}

		}
	?>
		<form method="post" action="index.php" name="myform">
			<fieldset><legend>Personal Information</legend>
				<table>
					<tr>
						<th><label for="mybirth">Date of Birth:</label></th>
						<td><input type="date" name="mybirth" id="mybirth" value="<?php if( isset($formfield['mybirth'])){echo $formfield['mybirth'];}?>" /></td>
					</tr>
					<tr>
						<th><label for="myfirst">First Name:</label></th>
						<td><input type="text" name="myfirst" id="myfirst" size="10" value="<?php if( isset($formfield['myfirst'])){echo $formfield['myfirst'];}?>"/></td>
					</tr>
					<tr>
						<th><label for="mymiddle">Middle Initial:</label></th>
						<td><input type="text" name="mymiddle" id="mymiddle" size="5" maxlength="1" value="<?php if( isset($formfield['mymiddle'])){echo $formfield['mymiddle'];}?>"/></td>
					</tr>
					<tr>
						<th><label for="mylast">Last Name:</label></th>
						<td><input type="text" name="mylast" id="mylast" size="35" value="<?php if( isset($formfield['mylast'])){echo $formfield['mylast'];}?>" /></td>
					</tr>
					<tr>
						<th><label for="myemail">Email:</label></th>
						<td><input type="email" name="myemail" id="myemail" value="<?php if( isset($formfield['myemail'])){echo $formfield['myemail'];}?>" /></td>
					</tr>
					<tr>
						<th><label for="myuname">Username:</label></th>
						<td><input type="text" name="myuname" id="myuname" value="<?php if( isset($formfield['myuname'])){echo $formfield['myuname'];}?>" /></td>
					</tr>
					<tr>
						<th><label for="mypass">Password:</label></th>
						<td><input type="password" name="mypass" id="mypass" value="<?php if( isset($formfield['mypass'])){echo $formfield['mypass'];}?>" /></td>
					</tr>
					<tr>
						<th><label for="mypass2">Confirm Password:</label></th>
						<td><input type="password" name="mypass2" id="mypass2" value="<?php if( isset($formfield['mypass2'])){echo $formfield['mypass2'];}?>" /></td>
					</tr>
					<tr>
						<th><label for="mygrade">Class Grade:</label></th>
						<td><select name="mygrade" id="mygrade">
								<option value="" <?php if( isset($formfield['mygrade']) && $formfield['mygrade'] == "" ){echo ' selected';}?>>SELECT ONE</option>
								<option value="FR" <?php if( isset($formfield['mygrade']) && $formfield['mygrade'] == "FR" ){echo ' selected';}?>>Freshman</option>
								<option value="SO" <?php if( isset($formfield['mygrade']) && $formfield['mygrade'] == "SO" ){echo ' selected';}?>>Sophomore</option>
								<option value="JR" <?php if( isset($formfield['mygrade']) && $formfield['mygrade'] == "JR" ){echo ' selected';}?>>Junior</option>
								<option value="SR" <?php if( isset($formfield['mygrade']) && $formfield['mygrade'] == "SR" ){echo ' selected';}?>>Senior</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>Pick a color:</th>
						<td><input type="radio" name="mycolor" id="colorred" value="red" <?php if( isset($formfield['mycolor']) && $formfield['mycolor'] == "red" ){echo ' checked';}?> /><label for="colorred">Red</label>
							<input type="radio" name="mycolor" id="colorgreen" value="green" <?php if( isset($formfield['mycolor']) && $formfield['mycolor'] == "green" ){echo ' checked';}?> /><label for="colorgreen">Green</label>
							<input type="radio" name="mycolor" id="colorblue" value="blue" <?php if( isset($formfield['mycolor']) && $formfield['mycolor'] == "blue" ){echo ' checked';}?> /><label for="colorblue">Blue</label>
						</td>
					</tr>
					<tr>
						<th><label for="mycomments">Comments:</label></th>
						<td><textarea name="mycomments" id="mycomments"> <?php if( isset($formfield['mycomments'])){echo $formfield['mycomments'];}?></textarea></td>
					</tr>
					<tr>
						<th>Submit:</th>
						<td><input type="submit" name="mysubmit" value="GO" /></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</body>
</html>


