<?php
    include('./conn.php');
    $username = $_REQUEST['username'];
    $password = $_REQUEST['password'];

    $sql = "select * from users where user_name='$username' and user_password='$password'";
    
    $result = $mysqli->query($sql);
    if($result->num_rows>0){
        echo "<script src='cookie.js'></script>";
        echo "<script>cookie.set('isLogin','true',1);cookie.set('username','$username',1)</script>";
        echo "<script>alert('登陆成功，点击跳转');location.href='../html/index.html';</script>";
    }else{
        echo "<script>alert('登陆失败，点击跳转');location.href='../html/login.html';</script>";
    }
?>