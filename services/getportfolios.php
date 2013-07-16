<?php
header('Content-Type: application/json');
include 'config.php';

$sql = "select e.* " . 
		"from portfolio e WHERE e.mostra = 1 " .
		"order by e.id DESC limit 15";

try {
	$dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);	
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$stmt = $dbh->query($sql);  
	$employees = $stmt->fetchAll(PDO::FETCH_OBJ);
	$dbh = null;
  
	header('Content-Type: application/json');
	echo $_GET['callback'].'({"items":'. json_encode($employees).'})'; 
} catch(PDOException $e) {
	echo '{"error":{"text":'. $e->getMessage() .'}}'; 
}
?>