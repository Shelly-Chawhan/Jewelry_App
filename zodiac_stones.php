<?php
include("includes/mysqli_connection.php");

$zodiac_sign_id = isset($_GET['zodiac']) ? intval($_GET['zodiac']) : 0;

// Selecting products that match the Zodiac sign
$sql = "SELECT jewellery.*, zodiac_signs.sign_name 
        FROM jewellery 
        INNER JOIN zodiac_signs ON jewellery.zodiac_sign = zodiac_signs.id 
        WHERE zodiac_signs.id = ?";

// Prepared statement to prevent SQL injection
if($stmt = $db_conx->prepare($sql)) {
    // Bind the $zodiac_sign_id to the prepared statement as an integer
    $stmt->bind_param("i", $zodiac_sign_id);

    // Execute the query
    $stmt->execute();

    // Bind the result variables
    $stmt->bind_result($id, $prodname, $path, $category, $price, $descr, $type, $noviews, $topsell, $zodiac_sign, $sign_name);

    // Fetch values
    while($stmt->fetch()) {
        // Here you would typically display the products
        echo "<div>";
        echo "<h3>" . htmlspecialchars($sign_name) . "</h3>";
        echo "<p>" . htmlspecialchars($prodname) . " - " . htmlspecialchars($price) . "</p>";
        // Add the rest of the product details here
        echo "</div>";
    }

    // Close the statement
    $stmt->close();
}

// Close database connection
$db_conx->close();
?>
