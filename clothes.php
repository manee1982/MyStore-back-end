<?php

namespace PDOWrapper;
require("database/Db.class.php");

			
$db = new Db('localhost', 'youtube_store', 'root', '!@#manee');
$data = $db->query("SELECT * FROM clothes");

echo json_encode($data, JSON_UNESCAPED_UNICODE);

