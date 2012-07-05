<?php

// enable error reporting
ini_set('display_errors','on');
error_reporting(E_ALL ^ E_NOTICE);

setlocale(LC_TIME, 'de_DE.UTF-8');

/**
 * redirects to given url
 *
 * @param string $url
 */
function redirectTo($url = "") {
	if (empty($url)) $url = $_SERVER['REQUEST_URI'];
	header("Location: " . $url);
	exit();
}

/**
 * includes the given component
 *
 * @param string $core
 */
function loadComponent($component) {
	$component = "./include/core/" . $component . ".php";
	// component exists?
	if (file_exists($component)) {
		require_once($component);
	}
}

function getData($name) {
	return json_decode(file_get_contents("./include/data/" . $name . ".json"), true);
}


// get config
require("./include/config.inc.php");

// components to load
$comps = array("templates", "database");
foreach ($comps as $comp) {
	loadComponent($comp);
}
	
?>