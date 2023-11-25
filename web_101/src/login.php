<?php
    $db = new mysqli('db', 'admin', 'password', 'myDB');
    $sql = "SELECT * FROM users";
    $result = $db->query($sql);
    foreach ($result as $row) {
        printf("%s (%s) (%s)\n", $row["id"], $row["username"], $row["password"]);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>
</body>
</html>