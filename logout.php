<?php
session_start();
include_once "conexao.php";
$status = "Off-line agora";

$sql = "UPDATE user SET status = '{$status}', session = '' WHERE unique_id= {$_SESSION['unique_id']} ";
$query = mysqli_query($conn, $sql);

session_unset();
session_destroy();
header('Location: realizar_login');