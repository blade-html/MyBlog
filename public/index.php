<?php

error_reporting(E_ALL);

try {

	/**
	 * Read the configuration
	 */
	$config = include __DIR__ . "/../app/config/config.php";

	/**
	 * Read auto-loader
	 */
	include __DIR__ . "/../app/config/loader.php";

	/**
	 * Read services
	 */
	include __DIR__ . "/../app/config/services.php";

	/**
	 * Handle the request
	 */
	$application = new \Phalcon\Mvc\Application();
	$application->setDI($di);
	echo $application->handle()->getContent();

} catch (Phalcon\Exception $e) {
    echo get_class($e), ": ", $e->getMessage(), "<br />";
    echo " File=", $e->getFile(), "<br />";
    echo " Line=", $e->getLine(), "<br />";
    echo $e->getTraceAsString();
} catch (PDOException $e){
	echo $e->getMessage();
}
