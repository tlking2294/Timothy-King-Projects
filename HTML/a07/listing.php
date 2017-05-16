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
    try{
        $sql = 'SELECT * FROM a07 ORDER BY ID';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':uname', $formfield['uname']);
        $stmt->execute();
        $result = $stmt->fetchAll();


        echo '<table>';
        echo '<tr><th>ID</th><th>User Name</th></tr>';
        foreach ($result as $row){
            echo '<tr><td>'.$row['ID'] . '</td>
                        <td><a href="details.php?ID=' .$row['ID'] . '">'.$row['uname'] . '</a></td></tr>';
        }
        echo '</table>';
    }
    catch(PDOException $e){
        echo 'Error fetching users: <br />ERROR MESSAGE:<br />' .$e->getMessage();
        exit();
    }

?>