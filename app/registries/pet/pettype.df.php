<?php
/**
 * Pettype detailform
 * @author Ilja Tihhanovski <ilja.tihhanovski@gmail.com>
 * @copyright (c) Intellisoft OÜ
 *
 */

	echo simpleform(array(
			textbox($obj, "name", "Name"),
			textbox($obj, "memo", "Memo"),
			textbox($obj, "closed", "Closed")
		));
