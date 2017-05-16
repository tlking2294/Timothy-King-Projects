<?php
$pagetitle = "Feel free to look at the details or update the song.";
include "header.php";
require_once "connect.php";

if(!isset($_SESSION['userid']))
{
    echo '<p>This page requires you to <a href="login.php">log in</a>.';
    include_once "footer.php";
    exit();
}

try{
    $sql = 'SELECT * FROM tlking2_items';
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':title', $formfield['title']);
    $stmt->execute();
    $result = $stmt->fetchAll();
    echo '<table>';
    echo '<tr><th>See Details</th><th>Update </th><th>Delete</th><th>ID</th><th>Title</th></tr>';
    foreach ($result as $row)
    {
        echo '<tr>
                    <td><a href="itemdetails.php?ID=' .$row['ID'] .'">Details</a></td>
                    <td><a href="itemupdate.php?ID=' .$row['ID'] .'">Update</a></td>
                    <td><a href="itemdelete.php?ID=' .$row['ID'] .'">Delete</a></td>
                    <td>'.$row['ID'] . '</td>
                    <td>'.$row['title'] . '</td>
              </tr>';
    }
    echo '</table>';

}//try
catch (PDOException $e)
{
    echo 'Error fetching users: <br />ERROR MESSAGE:<br />' .$e->getMessage();
    include_once "footer.php";
    exit();
}
include "footer.php";
?>