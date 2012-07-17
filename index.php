<?php
include('include/main.php');

if (empty($_GET['page'])) {
	$_db = new database;

	$result = $_db->query('	SELECT	address, type
							FROM	onCall
							WHERE	DATE(day) = DATE(NOW())
							');
	$onCall = $_db->fetchAll($result, 1);
	
	$addresses = getData("addresses");
	
	$_tpl->assign("addresses", $addresses);
	$_tpl->assign("onCall", $onCall);
	$_tpl->display("index.tpl");
	
} else if (!file_exists("./include/templates/".$_GET['page'].".tpl")) {
	echo "Seite nicht gefunden!";
} else {
	$_tpl->display($_GET['page'].".tpl");
}
?>