<?php
    include('./conn.php');
    $username = $_POST['username'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $sex = $_POST['sex'];
    $sql = "select * from users where user_name='$username'";
    $result = $mysqli->query($sql);
    if($result->num_rows>0){
        echo '<script>alert("用户已存在,点击跳转");location.href="../html/enroll.html";</script>';
        break;
    }
    $insertSql = "insert into users(user_name,user_email,user_sex,user_password)values('$username','$email','$sex','$password')";
   
    $res = $mysqli->query($insertSql);
 
    if($res){
        echo '<script>alert("注册成功");location.href="../html/register.html";</script>';
     }

    $mysqli->close(); 
?>