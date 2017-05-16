<?php
include_once "header.php";
require_once "connect.php";
$showform = 1;

if(!isset($_SESSION['userid']))
{
    echo '<p>This page requires you to <a href="login.php">log in</a>.';
    include_once "footer.php";
    exit();
}

/*WHEN A BUTTON IS CHOSEN*/
if(isset ($_POST['delete']) && $_POST['delete'] == "YES")
{

    try
    {
        $sql = 'DELETE FROM tlking2_items WHERE ID = :ID';
        $s = $pdo->prepare($sql);
        $s->bindValue(':ID', $_POST['ID']); // using data from form
        $s->execute();
    }
    catch(PDOException $e)
    {
        echo 'Error deleting from database ' . $e->getMessage();
        exit();
    }
    //confirmation
    echo '<p class="success">The song ' . $_POST['ID'] . ' has been deleted.</p>';
    $showform=0;
}
/*WHEN A BUTTON IS CHOSEN*/

if($showform == 1) {
    echo 'Are you sure you want to delete song No. ' . $_GET['ID'];

    try {
        $sql = 'SELECT * FROM tlking2_items WHERE ID = :ID';
        $s = $pdo->prepare($sql);
        $s->bindValue(':ID', $_GET['ID']);
        $s->execute();
        $row = $s->fetch();
    } catch (PDOException $e) {
        echo 'Error fetching users: ' . $e->getMessage();
        exit();
    }
    echo ' (' . $row['title'] . ')?';

    ?>
    <form method="post" action="itemdelete.php" name="itemdelete">
        <input type="hidden" name="ID" value="<?php echo $_GET['ID']; ?>">
        <input type="submit" name="delete" value="YES">
        <input type="button" name="nodelete" value="NO" onClick="window.location = 'index.php'"/>
    </form>

    <?php
}
include "footer.php";
?>