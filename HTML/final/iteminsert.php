<?php
include_once "header.php";
$errormsg = "";
$showform = 1;
$inputdate = time();
require_once "connect.php";

if(!isset($_SESSION['userid']))
{
    echo '<p>This page requires you to <a href="login.php">log in</a>.';
    include_once "footer.php";
    exit();
}
if($_POST['mysubmit']){
    /* SANATIZE DATA*/
    $formfield['title'] = trim(strtolower($_POST['title']));
    $formfield['album'] = trim($_POST['album']);
    $formfield['artist'] = trim($_POST['artist']);
    $formfield['lyrics'] = trim($_POST['lyrics']);
    /*SANATIZE DATA*/

    /*EMPTY FIELDS*/
    if(empty($formfield['title'])){$errormsg .="<p>You did not type in a song title.</p>";}
    if(empty($formfield['album'])){$errormsg .="<p>You did not type in the album name.</p>";}
    if(empty($formfield['artist'])){$errormsg .="<p>You did not type in the artist or band.</p>";}
    if(empty($formfield['lyrics'])){$errormsg .="<p>You did not type any lyrics.</p>";}
    /*EMPTY FIELDS*/

    /*SONG TITLE CHECK*/
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
    /*SONG TITLE CHECK*/
    if($errormsg != "")
    {
        echo "<div class='error'><p>THERE ARE ERRORS!</p>";
        echo $errormsg;
        echo "</div>";
    }
    else{
        try {
            //enter data into database
            $sqlinsert = 'INSERT INTO tlking2_items (title, album, artist, lyrics)
                      VALUES (:title, :album, :artist, :lyrics)';
            $stmtinsert = $pdo->prepare($sqlinsert);
            $stmtinsert->bindvalue(':title', $formfield['title']);
            $stmtinsert->bindvalue(':album', $formfield['album']);
            $stmtinsert->bindvalue(':artist', $formfield['artist']);
            $stmtinsert->bindvalue(':lyrics', $formfield['lyrics']);
            $stmtinsert->execute();
            /*-------------*/
            $showform = 0;
            echo "<div class='success'><p>The song was successfully stored!  Thank you.</p></div>";

        }catch (PDOException $e){
            echo 'ERROR!!!' . $e->getMessage();
            exit();
        }
    }



}

?>

<form method="post" action="iteminsert.php" name="iteminsert">
    <table>
        <tr>
            <th><label for="title">Title:</label></th>
            <td><input type="text" name="title" id="title" size="35" value="<?php echo $formfield['title']; ?>"></td>
        </tr>
        <tr>
            <th><label for="album">Album:</label></th>
            <td><input type="text" name="album" id="album" size="45" value="<?php echo $formfield['album']; ?>"></td>
        </tr>
        <tr>
            <th><label for="artist">Artist / Band:</label></th>
            <td><input type="text" name="artist" id="artist" size="50" value="<?php echo $formfield['artist']; ?>"></td>
        </tr>
        <tr>
            <th><label for="lyrics">Part of all the lyrics:</label></th>
            <td><textarea name="lyrics" id="lyrics"><?php echo $formfield['lyrics']; ?></textarea></td>
        </tr>
        <tr>
            <th><label for="mysubmit">Submit:</label></th>
            <td><input type="submit" name="mysubmit" id="mysubmit" value="GO"> </td>
        </tr>
    </table>
</form>

<?php
include_once "footer.php";
?>
