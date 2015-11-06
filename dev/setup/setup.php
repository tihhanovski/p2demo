<?php
/*
 * Created on Sep 9, 2011
 *
 * (c) Ilja Tihhanovski, Intellisoft
 *
 */

	define("FULL_INSTANCE_ROOT", "http://localhost");
	define("DOC_ROOT", "C:\\xampp\\htdocs");

	define("INSTANCE_WEB", "/project1/p2demo/dev/");

	define("WFW_WEB", "/project1/p2/");
	define("APP_WEB", "/project1/p2demo/app/");
	define("L3RD_WEB", "/3rd/");

 	define("WFW_ROOT", DOC_ROOT . WFW_WEB);
	define("APP_ROOT", DOC_ROOT . APP_WEB);
 	define("INSTANCE_ROOT", DOC_ROOT . INSTANCE_WEB);
	define("L3RD_ROOT", DOC_ROOT . L3RD_WEB);

	define("WEB_ROOT", INSTANCE_WEB);

	define("APP_TITLE", "p2demo");

	define("DEBUG", false);

	define("DEFAULT_LOCALE", "en");

	define("SETUP_SPECS_SHOW_TR_DIMENSIONS", true);

	define("ANNOUNCE_COMPONENTS", "Web framework;p2demo");
	define("VERSION_SUFFIX", "-dev");
	define("TOPMENU_COLOR", "testTopMenuColor");

	const STRUCTURE_COLLATION = "utf8_general_ci";	//utf8_estonian_ci

	const SERVER_TIMEZONE = "Europe/Tallinn";
	const FORMATSTRING_DATE_HUMAN = "d.m.Y";
	const FORMATSTRING_TIME_HUMAN = "H:i";
	const FORMATSTRING_DATETIME_HUMAN = "d.m.Y H:i";
	const FORMATSTRING_DATETIME_SHORT_HUMAN = "d.m.Y H:i";
	const FORMATSTRING_DATEPICKER = "dd.mm.yy";
	const I18N_EXTENDED_LOCALES = true;

	//possible values:
	//SessionContextProvider - default
	//UserFilesContextProvider
	define("CONTEXT_PROVIDER_FLAVOR", "UserFilesContextProvider");

	define("SETUP_CSS_MAIN", WFW_WEB . "ui\wfw.css");
	define("SETUP_3RD_COMBOGRID_CSS", L3RD_WEB . "combogrid-1.5.0/resources/css/smoothness/jquery-ui-1.8.9.custom.css");
	define("SETUP_3RD_COMBOGRID_CSS2", L3RD_WEB . "combogrid-1.5.0/resources/css/smoothness/jquery.ui.combogrid.css");
	define("SETUP_HOTKEYS", L3RD_WEB . "jquery.hotkeys.js");
	define("SETUP_3RD_XLS", L3RD_ROOT . "phpexcel/Classes/PHPExcel.php");

	define("SETUP_3RD_MULTISELECT_JS", L3RD_WEB . "jquery.multiselect.js");
	define("SETUP_3RD_MULTISELECT_CSS", L3RD_WEB . "jquery.multiselect.css");

	define("SETUP_JQUERY", L3RD_WEB . "jquery.js");
	define("SETUP_JQUERY_UI", L3RD_WEB . "combogrid-1.5.0/resources/jquery/jquery-ui-1.8.9.custom.min.js");
	define("SETUP_JQUERY_I18N", L3RD_WEB . "jquery-ui-i18n.js");
	define("SETUP_COMBOGRID", L3RD_WEB . "combogrid-1.5.0/resources/plugin/jquery.ui.combogrid-1.5.0.js");
	define("SETUP_TINY_MCE", L3RD_WEB . "tinymce/jscripts/tiny_mce/");

	define("SETUP_TCPDF_CLASS", L3RD_ROOT . "tcpdf/6_2_6/tcpdf.php");


	define("DEVELOPER_USER", "ilja");
	define("SOFTWAREISSUES_EMAIL_ON_INSERT", true);

