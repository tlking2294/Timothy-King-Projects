<h2>Great Songs</h2>
<?php
require_once "connect.php";
try{

    $sql = 'SELECT * FROM tlking2_items';
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':title', $row['title']);
    $stmt->execute();
    $result = $stmt->fetchAll();
    echo '<table>';
    echo '<tr><th>Songs in the database</th></tr>';
    foreach ($result as $row)
    {
        $temp = $row['title'];
        echo "<tr><td><a href='itemdetails.php?ID=" .$row['ID'] ." '>$temp</a></td></tr>";
    }
    echo '</table>';

}//try
catch (PDOException $e)
{
    echo 'Error fetching users: <br />ERROR MESSAGE:<br />' .$e->getMessage();
    exit();
}
?>
