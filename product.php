<?php

namespace PDOWrapper;
require("database/Db.class.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$db = new Db('localhost', 'youtube_store', 'root', '!@#manee');
	$data = $db->query("SELECT * FROM clothes WHERE clothes.id = " .$_POST["product_id"]);
	//print_r($data);
	foreach($data as $key => $row) {
		$data[$key]["colors"] = json_decode($data[$key]["colors"]);
		echo json_encode($data[$key], JSON_UNESCAPED_UNICODE);
	}

	
	
} else {
	http_response_code(405);
	echo json_encode([
			"message" => "method not allowed"
		], 
		JSON_UNESCAPED_UNICODE
	);
}

