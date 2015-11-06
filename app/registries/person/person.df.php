<?php
/**
 * Person detailform
 * @author Ilja Tihhanovski <ilja.tihhanovski@gmail.com>
 * @copyright (c) Intellisoft OÜ
 *
 */

	/*
	echo simpleform(array(
			textbox($obj, "code", "Code"),
			textbox($obj, "firstname", "Firstname"),
			textbox($obj, "lastname", "Lastname"),
			textbox($obj, "birthday", "Birthday"),
			textbox($obj, "memo", "Memo")	
		));
	*/
	echo simpleform($this->getSimpleformComponents($obj));