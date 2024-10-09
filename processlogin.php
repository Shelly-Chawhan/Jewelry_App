<?php
session_start();
include "includes/connection.php";

//$msg = "";
$form_user = $_POST['txtusername'];
$form_password = $_POST['txtpassword'];

if(empty($form_user) || empty($form_password))
{
    echo '<script>alert("Please Fill up all fields!");</script>';
    echo "<script>window.location.href='default.php';</script>";
    exit;
}

//Store values in the tblChatUsers
$dbconnect = new DbConnect();
if (!$dbconnect->open()) {
    // Handle connection error
    echo "Failed to connect to the database: " . $dbconnect->error();
    exit;
}

$sql = "SELECT user_id, username, password, ac_type, user_status FROM `users` WHERE username = ? AND password = ?";
$stmt = $dbconnect->conn->prepare($sql);
$stmt->bind_param("ss", $form_user, $form_password);
$stmt->execute();
$result = $stmt->get_result();

$numrecs = $result->num_rows;

if($numrecs == 0)
{
    echo '<script>alert("Username and/or password not found! \n\n Signup or Login again");</script>';
    session_unset();
    session_destroy();
    echo "<script>window.location.href='default.php';</script>";
    exit;
}

while ($row = $result->fetch_array())
{
    $user_id = $row['user_id'];
    $username = $row['username'];
    $ac_type = $row['ac_type'];
    $status = $row['user_status'];
    
    if(($status == "0") AND ($ac_type == "Administrator"))
    {
        $_SESSION['status'] = "admin";
        echo "<script>alert('Welcome Back Webmaster Redirecting to personal home page')</script>";
        echo "<script>window.location.href='adminarea/adminhome.php';</script>";
    }
    else if(($status == "1") AND ($ac_type == "user"))
    {
        $_SESSION['username'] = $form_user;
        $_SESSION['user_id'] = $user_id;
        $_SESSION['code'] = rand();
        echo "<script>alert('Welcome Back')</script>";
        echo "<script>window.location.href='index-1.php';</script>";
    }
    else
    {
        echo "<script>window.location.href='index-1.php';</script>";
    }
}

$stmt->close();
