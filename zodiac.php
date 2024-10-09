<?php
require_once 'includes/mysqli_connection.php';
// Assuming this file sets up the database connection

function getJewelryByZodiac($zodiac_id) {
    global $conn;

    $query = "SELECT * FROM zodiac_signs WHERE zodiac_sign = ? ORDER BY id DESC";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $zodiac_id);
    $stmt->execute();

    $result = $stmt->get_result();
    $items = $result->fetch_all(MYSQLI_ASSOC);

    $stmt->close();

    return $items;
}

$zodiac_signs = [
    1 => 'Aries',
    2 => 'Taurus',
    3 => 'Gemini',
    4 => 'Cancer',
    5 => 'Leo',
    6 => 'Virgo',
    7 => 'Libra',
    8 => 'Scorpio',
    9 => 'Sagittarius',
    10 => 'Capricorn',
    11 => 'Aquarius',
    12 => 'Pisces',
];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Zodiac Jewelry</title>
</head>
<body>
    <h1>Jewelry by Zodiac Signs</h1>

    <?php foreach ($zodiac_signs as $id => $sign_name): ?>
        <h2><?php echo $sign_name; ?></h2>

        <?php
        $jewelry_items = getJewelryByZodiac($id);
        if (count($jewelry_items) > 0):
        ?>

        <div class="jewelry-items">
            <?php foreach ($jewelry_items as $item): ?>
                <div class="jewelry-item">
                    <img src="<?php echo $item['path']; ?>" alt="<?php echo $item['prodname']; ?>">
                    <p><?php echo $item['prodname']; ?></p>
                    <p>Price: $<?php echo $item['price']; ?></p>
                    <p><?php echo $item['descr']; ?></p>
                </div>
            <?php endforeach; ?>
        </div>

        <?php else: ?>
            <p>No items found for this sign.</p>
        <?php endif; ?>
    <?php endforeach; ?>
</body>
</html>
