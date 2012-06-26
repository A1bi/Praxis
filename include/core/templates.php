<?php
/**
 * initiates smarty template engine
 */

require('/usr/share/php/smarty/Smarty.class.php');

// init object
global $_tpl, $_config;
$_tpl = new Smarty();

$config = $_config;
// for security: remove access to database config
unset($config['db']);
$_tpl->assign("_config", $config);

// configure
$_tpl->setTemplateDir('./include/templates');
$_tpl->setCompileDir('./include/templates/compiled');
$_tpl->setCacheDir('./include/templates/cache');
$_tpl->setConfigDir('./include/templates/configs');

// register custom functions
function getFileTimestamp($params) {
	return "?ver=" . @filemtime("." . $params['file']);
}

$_tpl->registerPlugin("function", "fileVersion", "getFileTimestamp");

?>
