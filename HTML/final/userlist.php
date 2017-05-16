<?php
$pagetitle = "You can look the others on this site an update your own profile.";
include "header.php";
require_once "connect.php";

if(!isset($_SESSION['userid']))
{
    echo '<p>This page requires you to <a href="login.php">log in</a>.';
    include_once "footer.php";
    exit();
}

try{
    $sql = 'SELECT * FROM tlking2_users';
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':uname', $formfield['uname']);
    $stmt->execute();
    $result = $stmt->fetchAll();
    echo '<table>';
    echo '<tr><th>See User Details</th><th>Update User</th><th>ID</th><th>Username</th></tr>';
    foreach ($result as $row)
    {
        echo '<tr>
                    <td><a href="userdetails.php?ID=' .$row['ID'] .'">Details</a></td>
                    <td><a href="userupdate.php?ID=' .$row['ID'] .'">Update</a></td>
                    <td>'.$row['ID'] . '</td>
                    <td>'.$row['uname'] . '</td>
              </tr>';
    }
    echo '</table>';

}//try
catch (PDOException $e)
{
    echo 'Error fetching users: <br />ERROR MESSAGE:<br />' .$e->getMessage();
    exit();
}
include "footer.php";

?>