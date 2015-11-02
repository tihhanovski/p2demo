<?php
/**
 * DBO Superobject
 * @author Ilja Tihhanovski <ilja.tihhanovski@gmail.com>
 * @copyright (c) 2015 Ilja Tihhanovski
 *
 */

	require_once 'DB/DataObject.php';

	class P2DemoObject extends WFWObject
	{
	}

	class P2DemoNonDBO extends P2DemoObject
	{
	    function getPrimaryKeyField()
	    {
	    	return null;
	    }

		function isNew()
		{
			return false;
		}
	}

	class P2DemoNamed extends WFWNamed {}

	class P2DemoCodedAndNamed extends WFWCodedAndNamed {}