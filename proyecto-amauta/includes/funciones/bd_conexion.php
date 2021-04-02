<?php
    define('AMAUTA_HOST', 'localhost');
    define('AMAUTA_DB_USUARIO', 'root');
    define('AMAUTA_DB_PASSWORD', 'root');
    define('AMAUTA_DB_DATABASE', 'amauta');

    $conn = new mysqli(AMAUTA_HOST, AMAUTA_DB_USUARIO, AMAUTA_DB_PASSWORD, AMAUTA_DB_DATABASE);
    $conn -> set_charset("utf8");
    if($conn->connect_error) {
      echo $conn->connect_error;
    }
?>