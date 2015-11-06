<?php
/**
 * Location detailform
 * @author Ilja Tihhanovski <ilja.tihhanovski@gmail.com>
 * @copyright (c) Intellisoft OÜ
 *
 */

	echo simpleform(array(
			textbox($obj, "code", "Code"),
			textbox($obj, "name", "Name"),
			textbox($obj, "info", "Info")
		));
