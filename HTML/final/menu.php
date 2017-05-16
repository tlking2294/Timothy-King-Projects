<ul>
    <li><a href="index.php">Home</a></li>
    <li><a href="userinsert.php">New Users! Make a Profile!</a></li>
    <li><a href="login.php">Login</a></li>
</ul>

<?php
    if(isset($_SESSION['userid'])){
        echo '<li><a href="logout.php">Logout</a></li>';
        echo '<li><a href="iteminsert.php">Insert new Song</a></li>';
        echo '<li><a href="userlist.php">List of Users</a></li>';
        echo '<li><a href="itemlist.php">List of Songs</a></li>';
    }
?>
