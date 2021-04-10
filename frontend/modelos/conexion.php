<?php

class Conexion{

	public function conectar(){

		// $link = new PDO("mysql:host=localhost;dbname=ecommerce",
		// 				"root",
		// 				"root",
		// 				array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
		//                       PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
		// 				);

		// BD remoto
		$link = new PDO("mysql:host=remotemysql.com;dbname=R1XeDRSlPk",
						"R1XeDRSlPk",
						"QGDRjN82Ja",
						array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
		                      PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
						);

		return $link;

	}


}



