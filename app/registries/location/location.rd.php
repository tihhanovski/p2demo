<?php
/**
 * Location registry descriptor
 * @author Ilja Tihhanovski <ilja.tihhanovski@gmail.com>
 * @copyright (c) 2015 Intellisoft OÜ
 */

	/**
	 * Location registry descriptor
	 */
	class _RegistryDescriptor extends RegistryDescriptor
	{
		public $gridSql = "select id, code, name, info from location";

		/**
		 * {@inheritdoc}
		 */
		public function getGrid()
		{
			$ret = new RegFlexiGrid();
			$ret->sortname = "name";
			$ret->sortorder = "asc";
			//$ret->addColumn(new StyleColumn());
			//$ret->addClosedIconColumn();
			$ret->addColumn(new MGridColumn("Code", "code", "code", 100));
			$ret->addColumn(new MGridColumn("Name", "name", "name", 300));
			$ret->addColumn(new MGridColumn("Info", "info", "info", 500));
			return $ret;
		}

		/**
		 * {@inheritdoc}
		 */
		function getChildrenTree()
		{
			return array("location" => array());
		}
/*
		function appendFilter($sql, $filter)
		{
			//if(isset($filter->group) && ($filter->group))
			//	$sql = $this->addWhere($sql, "m.groupId = {$filter->group}");
			if(isset($filter->unit) && ($filter->unit))
				$sql = $this->addWhere($sql, "m.unitId = {$filter->unit}");
			if($filter->showClosed + $filter->showActive == 1)
			{
				if($filter->showClosed)
					$sql = $this->addWhere($sql, "m.closed = 1");
				if($filter->showActive)
					$sql = $this->addWhere($sql, "m.closed = 0");
			}

			return $sql;
		}
		function getFilterFields()
		{
			$fo = $this->getFilter();
			return array(
			 	new SelectSql($fo, "unit", "Unit", SQL_COMBO_UNIT),
			 	new CheckBox($fo, "showClosed", "Show closed"),
			 	new CheckBox($fo, "showActive", "Show active"),
			 	filterActiveCheckbox($fo)
			);
		}
*/
	}