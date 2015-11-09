<?php
/**
 * Pettype registry descriptor
 * @author Ilja Tihhanovski <ilja.tihhanovski@gmail.com>
 * @copyright (c) 2015 Intellisoft OÜ
 */


	/**
	 * Pettype registry descriptor
	 */
	class _RegistryDescriptor extends RegistryDescriptor
	{
		public $gridSql = "select id, if(closed = 1, 'gclosed', '') as style,closed, name, memo from pettype";

		/**
		 * {@inheritdoc}
		 */
		public function getGrid()
		{
			$ret = new RegFlexiGrid();
			$ret->sortname = "name";
			$ret->sortorder = "asc";
			$ret->addColumn(new StyleColumn());
			$ret->addClosedIconColumn();
			$ret->addColumn(new MGridColumn("Name", "name", "name", 100));
			$ret->addColumn(new MGridColumn("Memo", "memo", "memo", 300));
			return $ret;
		}

		/**
		 * {@inheritdoc}
		 */
		function getChildrenTree()
		{
			return array("pettype" => array());
		}

		/**
		 * {@inheritdoc}
		 */
		function appendFilter($sql, $filter)
		{
			//if(isset($filter->group) && ($filter->group))
			//	$sql = $this->addWhere($sql, "m.groupId = {$filter->group}");
			if($filter->showClosed + $filter->showActive == 1)
			{
				if($filter->showClosed)
					$sql = $this->addWhere($sql, "closed = 1");
				if($filter->showActive)
					$sql = $this->addWhere($sql, "closed = 0");
			}

			return $sql;
		}

		/**
		 * {@inheritdoc}
		 */
		function getFilterFields()
		{
			$fo = $this->getFilter();
			return array(
			 	//new SelectSql($fo, "unit", "Unit", SQL_COMBO_UNIT),
			 	new CheckBox($fo, "showClosed", "Show closed"),
			 	new CheckBox($fo, "showActive", "Show active"),
			 	filterActiveCheckbox($fo)
			);
		}
	}