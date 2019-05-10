<?php

namespace PDOWrapper;
require("database/Db.class.php");
$db = new Db('localhost', 'app_demo', 'root', '=d3voi)9/ndH');

$data = $db->query("SELECT * FROM items");
echo json_encode($data, JSON_UNESCAPED_UNICODE);
