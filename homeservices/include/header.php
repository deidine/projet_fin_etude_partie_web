<?php require_once "scripts/session.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="./css/bootstrap.min.css">

    <style>
        nav a.nav-link {
            color: #fff !important;
        }
    </style>

    <title>Home Services</title>
</head>

<body>
    <nav class="nav bg-dark">
        <?php if (!isset($_SESSION['username'])): ?>
        <a class="nav-link active" href="index.php">Rechercher une Service </a>
        <a class="nav-link" href="login.php">Login</a>
        <a class="nav-link" href="register.php">Enregistrer une Service </a>
        <a class="nav-link" href="about.php">About</a>
        <a class="nav-link" href="logout.php">Log Out</a>
        <?php else : ?>
        <a class="nav-link" href="managehall.php">gereé les Services</a>
        <a class="nav-link" href="admin.php">gereé les admins </a>
        <a class="nav-link" href="users.php">gereé les utilisateur </a>
        <a class="nav-link" href="logout.php">Log Out</a>
 <?php endif; ?>

    </nav>