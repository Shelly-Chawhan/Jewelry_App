<?php
session_start();
include("head1.html"); // Include the header

if(!isset($_SESSION['user_id'])) {
    // Redirect to login page if the user is not logged in
    header("Location: login.php");
    exit;
}

// Check if jewel_id is set in the POST request
if(isset($_POST['jewel_id'])) {
    $jewel_id = $_POST['jewel_id'];
} else {
    // Redirect back to cart if there is no jewel_id provided
    header("Location: cart.php");
    exit;
}
?>

<!-- HTML code for the rental form -->
<div id="wrapper">
    <h2>Rent Jewelry Item</h2>
    <form action="process_rental.php" method="post">
        <p>Please provide your passport details for rental verification:</p>
        <input type="hidden" name="jewel_id" value="<?php echo $jewel_id; ?>">
        <input type="text" name="passport" required placeholder="Enter Passport Number">
        <input type="submit" value="Submit Rental">
    </form>
</div>

<?php include("footer.php"); // Include the footer ?>
