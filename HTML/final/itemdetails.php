<?php
include_once "header.php";
require_once "connect.php";

try
{
    $sql = 'SELECT * FROM tlking2_items WHERE ID = :ID';
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':ID', $_GET['ID']);
    $stmt->execute();
    $row = $stmt->fetch();

    echo '<table>';
    echo '<tr><th>Title:</th><td>' . $row['title'] . '</td></tr>';
    echo '<tr><th>Album:</th><td>' . $row['album'] . '</td></tr>';
    echo '<tr><th>Artist or Band:</th><td>' . $row['artist'] . '</td></tr>';
    echo '<tr><th>Partial or All Lyrics:</th><td>' . $row['lyrics'] . '</td></tr>';
    echo '</table>';
}//try
catch (PDOException $e)
{
    echo 'Error fetching users: <br />ERROR MESSAGE:<br />' .$e->getMessage();
    include "footer.php";
    exit();
}
include "footer.php";
?>