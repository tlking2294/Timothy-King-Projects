<?php
session_start();
require_once "connect.php";
?>
<! DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <title>Timothy Logan King</title>
    <link rel="stylesheet" href="styles.css" />
    <script src="//tinymce.cachefly.net/4.2/tinymce.min.js"></script>
    <script>tinymce.init({selector:'textarea'});</script>
</head>
<body>
<header>
    <h1>Who is Your Favorite Musical Artist?</h1>
    <nav>
        <?php include "menu.php"; ?>
    </nav>
</header>
<section>
    <article>
        <h2><?php echo $pagetitle; ?></h2>