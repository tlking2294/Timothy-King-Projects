<?php
include_once "header.php";
require_once "connect.php";

if(!isset($_SESSION['userid']))
{
    echo '<p>This page requires you to <a href="login.php">log in</a>.';
    include_once "footer.php";
    exit();
}

try
{
    $sql = 'SELECT * FROM tlking2_users WHERE ID = :ID';
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':ID', $_GET['ID']);
    $stmt->execute();
    $row = $stmt->fetch();

    echo '<table>';
    echo '<tr><th>First Name:</th><td>' . $row['firstname'] . '</td></tr>';
    echo '<tr><th>Middle Initial:</th><td>' . $row['middle'] . '</td></tr>';
    echo '<tr><th>Last Name:</th><td>' . $row['lastname'] . '</td></tr>';
    echo '<tr><th>Email:</th><td>' . $row['email'] . '</td></tr>';
    echo '<tr><th>Username:</th><td>' . $row['uname'] . '</td></tr>';
    echo '<tr><th>Age:</th><td>' . $row['age'] . '</td></tr>';
    echo '<tr><th>Street Address:</th><td>' . $row['address1'] . '</td></tr>';
    echo '<tr><th>Apt. / Suite:</th><td>' . $row['address2'] . '</td></tr>';
    echo '<tr><th>City:</th><td>' . $row['city'] . '</td></tr>';
    echo '<tr><th>State:</th><td>' . $row['state'] . '</td></tr>';
    echo '<tr><th>Zip Code:</th><td>' . $row['zip'] . '</td></tr>';
    echo '</table>';
}//try
catch (PDOException $e)
{
    echo 'Error fetching users: <br />ERROR MESSAGE:<br />' .$e->getMessage();
    exit();
}
include "footer.php";
?>