<?php

include "../connect.php";

$username = filterRequest("username");
$password = sha1("password");
$email = filterRequest("email");
$phone = filterRequest("phone");
$verfiycode = rand(10000,9999);

$stmt = $con->prepare("SELECT * FROM users WHERE users_email = ? OR users_phone = ? ");
$stmt->execute(array($email, $phone));
$count = $stmt->rowCount();
if ($count > 0) {
    printFailure("PHONE OR EMAIL");
} else {

    $data = array(
        "users_name" => $username,
        "users_password" =>  $password,
        "users_email" => $email,
        "users_phone" => $phone,
        "users_verifycode" => $verfiycode,
    );
    sendEmail($email, "Verify code ", "Verify Code $verfiycode");
    insertData("users" , $data) ; 

}