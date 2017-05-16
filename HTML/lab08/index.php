<!DOCTYPE html>
<html>
	<head lang="en">
		<meta charset="utf-8">
		<title>Super Globals</title>
		<link rel="stylesheet" href="styles.css" />
	</head>
	<body>
	<?php
	//NECESSARY VARIABLES
	$errormsg= "";
	$showform = 1;

		if( isset($_POST['mysubmit']) )
		{
			echo '<p>The form was submitted.</p>';

			/*  ****************************************************************************
     		CHECK FOR EMPTY FIELDS
    		Complete the lines below for any REQIURED form fields only.
			Do not do for optional fields.
    		**************************************************************************** */
			if(empty($_POST['mybirth'])){$errormsg .="<p>Your birth date is empty.</p>";}
			if(empty($_POST['myfirst'])){$errormsg .="<p>Your first name is empty.</p>";}
			if(empty($_POST['mylast'])){$errormsg .="<p>Your last name is empty.</p>";}
			if(empty($_POST['myemail'])){$errormsg .="<p>Your email address is empty.</p>";}
			if(empty($_POST['mypass'])){$errormsg .="<p>Your password is empty.</p>";}
			if(empty($_POST['mypass2'])){$errormsg .="<p>Your comfirmed password is empty.</p>";}
			if(empty($_POST['mygrade'])){$errormsg .="<p>Your grade is empty.</p>";}
			if(!isset($_POST['mycolor']) || empty($_POST['mycolor'])){ $errormsg .= "<p>Your color selection is empty.</p>";}
			if(empty($_POST['mycomments'])){$errormsg .="<p>Your comments are empty.</p>";}
			/*  ****************************************************************************
     		CHECK FOR MATCHING PASSWORDS
    		**************************************************************************** */
			if($_POST['mypass'] != $_POST['mypass2']){$errormsg .= "<p>Your passwords do not match.</p>";}

			/*  ****************************************************************************
			DISPLAY ERRORS
			If we have concatenated the error message with details, then let the user know
			**************************************************************************** */
			if($errormsg != ""){echo "<div class='error'><p>THESE ARE ERRORS!</p>"; echo $errormsg; echo "</div>";} else {echo "<div class='success'><p>There are no errors. Thank you</p></div>";}
		}
	?>
		<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>" name="myform">
			<fieldset><legend>Personal Information</legend>
				<table>
					<tr>
						<th><label for="mybirth">Date of Birth:</label></th>
						<td><input type="date" name="mybirth" id="mybirth" value="<?php if( isset($_POST['mybirth'])){echo $_POST['mybirth'];}?>" /></td>
					</tr>
					<tr>
						<th><label for="myfirst">First Name:</label></th>
						<td><input type="text" name="myfirst" id="myfirst" size="10" value="<?php if( isset($_POST['myfirst'])){echo $_POST['myfirst'];}?>"/></td>
					</tr>
					<tr>
						<th><label for="mymiddle">Middle Initial:</label></th>
						<td><input type="text" name="mymiddle" id="mymiddle" size="5" maxlength="1" value="<?php if( isset($_POST['mymiddle'])){echo $_POST['mymiddle'];}?>" /></td>
					</tr>
					<tr>
						<th><label for="mylast">Last Name:</label></th>
						<td><input type="text" name="mylast" id="mylast" size="35" value="<?php if( isset($_POST['mylast'])){echo $_POST['mylast'];}?>" /></td>
					</tr>
					<tr>
						<th><label for="myemail">Email:</label></th>
						<td><input type="email" name="myemail" id="myemail" value="<?php if( isset($_POST['myemail'])){echo $_POST['myemail'];}?>" /></td>
					</tr>
					<tr>
						<th><label for="mypass">Password:</label></th>
						<td><input type="password" name="mypass" id="mypass" value="<?php if( isset($_POST['mypass'])){echo $_POST['mypass'];}?>" /></td>
					</tr>
					<tr>
						<th><label for="mypass2">Confirm Password:</label></th>
						<td><input type="password" name="mypass2" id="mypass2" value="<?php if( isset($_POST['mypass2'])){echo $_POST['mypass2'];}?>" /></td>
					</tr>
					<tr>
						<th><label for="mygrade">Class Grade:</label></th>
						<td><select name="mygrade" id="mygrade">
								<option value="" <?php if( isset($_POST['mygrade']) && $_POST['mygrade'] == "" ){echo ' selected';}?>>SELECT ONE</option>
								<option value="FR" <?php if( isset($_POST['mygrade']) && $_POST['mygrade'] == "FR" ){echo ' selected';}?>>Freshman</option>
								<option value="SO" <?php if( isset($_POST['mygrade']) && $_POST['mygrade'] == "SO" ){echo ' selected';}?>>Sophomore</option>
								<option value="JR" <?php if( isset($_POST['mygrade']) && $_POST['mygrade'] == "JR" ){echo ' selected';}?>>Junior</option>
								<option value="SR" <?php if( isset($_POST['mygrade']) && $_POST['mygrade'] == "SR" ){echo ' selected';}?>>Senior</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>Pick a color:</th>
						<td><input type="radio" name="mycolor" id="colorred" value="red" <?php if( isset($_POST['mycolor']) && $_POST['mycolor'] == "red" ){echo ' checked';}?> /><label for="colorred">Red</label>
							<input type="radio" name="mycolor" id="colorgreen" value="green" /><label for="colorgreen">Green</label>
							<input type="radio" name="mycolor" id="colorblue" value="blue" /><label for="colorblue">Blue</label>
						</td>
					</tr>
					<tr>
						<th><label for="mycomments">Comments:</label></th>
						<td><textarea name="mycomments" id="mycomments"> <?php if( isset($_POST['mycomments'])){echo $_POST['mycomments'];}?></textarea></td>
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


