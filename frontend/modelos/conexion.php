<?php

class Conexion{

	public function conectar(){

		$link = new PDO("mysql:host=localhost;dbname=ecommerce",
						"root",
						"root",
						array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
		                      PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
						);

		return $link;

	}
// b6e5e76d9d929a:4ed611fc@us-cdbr-east-03.cleardb.com/heroku_81f31edf6fc71e5

}



