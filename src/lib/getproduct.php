<?php
    include('./conn.php');

    $sql = "select * from product2";

    $res = $mysqli->query($sql);

    $arr = array();

    while($row = $res->fetch_assoc()){
        array_push($arr,$row);
    }

    $json = json_encode($arr);
    
    echo $json;

    $mysqli->close();
?>