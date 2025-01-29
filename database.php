<?php
session_start();
include 'config.php';

if (isset($_POST['signup'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);

    // Vérifier si l'email existe déjà
    $checkEmailSql = "SELECT * FROM users WHERE email='$email'";
    $checkEmailResult = $conn->query($checkEmailSql);

    if ($checkEmailResult->num_rows > 0) {
        echo "Erreur : L'email existe déjà.";
    } else {
        $sql = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$password')";
        if ($conn->query($sql) === TRUE) {
            header("Location: login.php?signup_success=true");
        } else {
            echo "Erreur : " . $conn->error;
        }
    }
}

if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE email='$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        if (password_verify($password, $user['password'])) {
            $_SESSION['user'] = $user;
            header("Location: index.php");
        } else {
            echo "Erreur : Mot de passe incorrect.";
        }
    } else {
        echo "Erreur : Email non trouvé.";
    }
}
?>