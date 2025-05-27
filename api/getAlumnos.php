<?php
    header("Content-Type: application/json");
    header("Access-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Uriel", "correo" => "urielrodriguez@gmail.com"],
        ["id" => 1, "nombre" => "Osman", "correo" => "osmanquinonez@gmail.com"],
        ["id" => 1, "nombre" => "Gaela", "correo" => "gaelaldapa@gmail.com"],
    ];

    echo json_encode($usuarios);

?>