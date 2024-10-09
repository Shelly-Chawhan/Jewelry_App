<?php
session_start();
include("includes/mysqli_connection.php");

if(!isset($_SESSION['user_id'], $_POST['jewel_id'], $_POST['passport'])) {
    // Redirect to cart if required data is not provided
    header("Location: cart.php");
    exit;
}

$user_id = $_SESSION['user_id'];
$jewel_id = $_POST['jewel_id'];
$passport = $_POST['passport'];

// Process the rental here
// For example, update the cart item to indicate it is rented and save the passport number
// Make sure to implement proper validation and sanitation of input data

// Redirect to cart or a confirmation page
header("Location: cart.php");
exit;
?>
