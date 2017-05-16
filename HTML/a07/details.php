<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <title>Assignment 07</title>
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
<?php
    require_once "connect.php";
    try {
        $sql = 'SELECT * FROM a07 WHERE ID = :ID';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':ID', $_GET['ID']);
        $stmt->execute();
        $row = $stmt->fetch();

        echo '<table>';
        echo '<tr><th><p>ID</p></th><td>' . $row['ID'] . '</td></tr>';
        echo '<tr><th><p>First Name</p></th><td>' . $row['fname'] . '</td></tr>';
        echo '<tr><th><p>Middle Inital</p></th><td>' . $row['mi'] . '</td></tr>';
        echo '<tr><th><p>Last Name</p></th><td>' . $row['lname'] . '</td></tr>';
        echo '<tr><th><p>User Name</p></th><td>' . $row['uname'] . '</td></tr>';
        echo '<tr><th><p>Email</p></th><td>' . $row['email'] . '</td></tr>';
        echo '<tr><th><p>Bio</p></th><td>' . $row['bio'] . '</td></tr>';
    }
    catch (PDOException $e){
        echo 'Error fetching users: <br />ERROR MESSAGE:<br />' .$e->getMessage();
        exit();
    }

?>

