<?php
/*
 * Created on Oct 27, 2011
 *
 * (c) Ilja Tihhanovski, Intellisoft
 *
 */

	if(php_sapi_name() == "cli")
	{
		require_once "setup/setup.php";
		require_once WFW_ROOT . "classes/index.php";
		app()->updater()->run();
	}
	else
	{
		header("Location: index.php");
	}
