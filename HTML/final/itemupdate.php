<?php
include_once "header.php";
require_once "connect.php";
$errormsg = "";
$showform = 1;

if(!isset($_SESSION['userid']))
{
    echo '<p>This page requires you to <a href="login.php">log in</a>.';
    include_once "footer.php";
    exit();
}

if(isset($_POST['mysubmit'])){
    /*SANATIED DATA*/
    $formfield['title'] = trim(strtolower($_POST['title']));
    $formfield['album'] = trim($_POST['album']);
    $formfield['artist'] = trim($_POST['artist']);
    $formfield['lyrics'] = trim($_POST['lyrics']);
    /*SANATIZED DATA*/

    /*CHECK FOR EMPTY FIELDS*/
    if(empty($formfield['title'])){$errormsg .="<p>You did not put the name of the song.</p>";}
    if(empty($formfield['album'])){$errormsg .="<p>You did not put an album name.</p>";}
    if(empty($formfield['artist'])){$errormsg .="<p>You did not say the artist or band</p>";}
    if(empty($formfield['lyrics'])){$errormsg .="<p>You did not put any lyrics.</p>";}
    /*CHECK FOR EMPTY FIELDS*/

    /*CHECK FOR DOUBLE TITLE NAMES*/
    if ($formfield['title'] != $_POST['title']){
        try
        {

            $sqlusers = 'SELECT * FROM tlking2_items WHERE title = :title';
            $stmtusers = $pdo->prepare($sqlusers);
            $stmtusers->bindValue(':title', $formfield['title']);
            $stmtusers->execute();
            $countusers = $stmtusers->rowCount();
            if ($countusers > 0)
            {
                $errormsg .= "<p>This song is already in the database.</p>";
            }
        }catch (PDOException $e)
        {
            echo 'Unable to fetch users. <br />' .$e->getMessage();
            exit();
        }
    }
    /*CHECK OF DOUBLE TITLE NAMES*/

    /*PRINTING ERROR MESSAGES AND UPDATING*/
    if($errormsg != "")
    {
        echo "<div class='error'><p>THERE ARE ERRORS!</p>";
        echo $errormsg;
        echo "</div>";
    }
    else{
        try {
            $sqlupdate = 'UPDATE tlking2_items SET title = :title, album = :album, artist = :artist, lyrics = :lyrics WHERE ID = :ID';
            $stmtupdate = $pdo->prepare($sqlupdate);
            $stmtupdate->bindvalue(':title', $formfield['title']);
            $stmtupdate->bindvalue(':album', $formfield['album']);
            $stmtupdate->bindvalue(':artist', $formfield['artist']);
            $stmtupdate->bindvalue(':lyrics', $formfield['lyrics']);
            $stmtupdate->bindValue(':ID', $_POST['ID']);
            $stmtupdate->execute();
            /*-------------*/
            $showform = 0;
            echo "<div class='success'><p>The song was successfully updated! Thank you.</p></div>";
        }
        catch (PDOException $e) {
            echo "<p class= 'error'>THERE ARE ERRORS! REPOPULATING WITH ORIGINAL VALUES.</p>";
            include_once "footer.php";
            exit();
        }
    }
    }

if($showform ==1 ){
    try {
        $sql = 'SELECT * FROM tlking2_items WHERE ID = :ID';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':ID', $_GET['ID']);
        $stmt->execute();
        $row = $stmt->fetch();
        ?>
        <form method="post" action="itemupdate.php" name="iteminsert">
            <table>
                <tr>
                    <th><label for="title">Title:</label></th>
                    <td><input type="text" name="title" id="title" size="35" value="<?php echo $row['title']; ?>"></td>
                </tr>
                <tr>
                    <th><label for="album">Album:</label></th>
                    <td><input type="text" name="album" id="album" size="45" value="<?php echo $row['album']; ?>"></td>
                </tr>
                <tr>
                    <th><label for="artist">Artist / Band:</label></th>
                    <td><input type="text" name="artist" id="artist" size="50" value="<?php echo $row['artist']; ?>"></td>
                </tr>
                <tr>
                    <th><label for="lyrics">Part of all the lyrics:</label></th>
                    <td><textarea name="lyrics" id="lyrics"><?php echo $row['lyrics']; ?></textarea></td>
                </tr>
                <tr>
                    <th><label for="mysubmit">Submit:</label></th>
                    <td>
                        <input type="hidden" name="ID" id="ID" value="<?php echo $row['ID']; ?>"/>
                        <input type="hidden" name="origntitle" id="origntitle" value="<?php echo $row['title']; ?>"/>
                        <input type="submit" name="mysubmit" id="mysubmit" value="GO"> </td>
                </tr>
            </table>
        </form>
        <?php
    } catch (PDOException $e){
        echo 'Error fetching users: <br />ERROR MESSAGE:<br />' . $e->getMessage();
        exit();
    }
}
include_once "footer.php";
?>



