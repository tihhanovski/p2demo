<?php
/**
 * Person registry descriptor
 * @author Ilja Tihhanovski <ilja.tihhanovski@gmail.com>
 * @copyright (c) 2015 Intellisoft OÜ
 */

	/**
	 * Person registry descriptor
	 */
	class _RegistryDescriptor extends RegistryDescriptor
	{
		//public $gridSql = "select id, code, firstname, lastname, birthday, memo from person";
        public $gridSql = "select person.id, person.code, person.firstname, person.lastname, person.birthday,
		person.memo, max(pet.birthday) as aaa,min(pet.birthday) as bbb,sum(pet.weight) as ccc from person join pet 
		on (person.id=pet.ownerId) group by person.id";
		/**
		 * {@inheritdoc}
		 */
		public function getGrid()
		{
			$ret = new RegFlexiGrid();
			$ret->sortname = "person.firstname";
			$ret->sortorder = "asc";
			//$ret->addColumn(new StyleColumn());
			//$ret->addClosedIconColumn();
			
			$ret->addColumn(new MGridColumn("Code", "code", "code", 100));
			$ret->addColumn(new MGridColumn("Firstname", "firstname", "firstname", 100));
			$ret->addColumn(new MGridColumn("Lastname", "lastname", "lastname", 100));
			$ret->addColumn(new MGridColumn("Birthday", "birthday", "birthday", 50));
			$ret->addColumn(new MGridColumn("Memo", "memo", "memo", 500));						
			
			return $ret;
		}

	
		protected function getSimpleformComponents($obj)
		{
			/*		
		$db = new PDO('mysql:host=localhost;dbname=p2demo;charset=utf8', 'root', 'password');
		//$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		//$db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $stmt=$db->query("select sum(weight) from pet where ownerId=id");
		$stmt->bindValue(":id", $this->id, PDO::PARAM_INT);
		$stmt->execute();
		$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
		$this->setValue("totalWeight","asdads");
		
		//$this->setValue("totalWeight","yyyy");
		
        $stmt=$db->query("select min(birthday) from pet where ownerId=?");
		$stmt->execute(array($this->id));
		//$stmt->execute();
		$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
		$this->setValue("oledestPet",$rows[0][0]);

        $stmt=$db->query("select max(birthday) from pet where ownerId=?");
		$stmt->execute(array($this->id));
		//$stmt->execute();
		$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
		$this->setValue("youngestPet",$rows[0][0]);
	    */
		    //$this->setValue("totalWeight","yyytty");
			$cols = array();

			$cols[] = new DetailGridColumn("typeId", "Type", "select", 16, getSelectOptions("select id, name from pettype where closed = 0 order by name"), "gridCellRight");
			$cols[] = new DetailGridColumn("name", "Name", "textbox", 4, null, "gridCellRight");
			$cols[] = new DetailGridColumn("birthday", "Birthday", "textbox", 4, null, "gridCellRight");
			$cols[] = new DetailGridColumn("weight", "Weight", "double", 4, null, "gridCellRight");

			
			return array(
				textbox($obj, "code", "Code"),
				textbox($obj, "firstname", "Firstname"),
				textbox($obj, "lastname", "Lastname"),
				datepicker($obj, "birthday", "Birthday"),
				//textbox($obj, "birthday"),
				textarea($obj, "memo"),				
  			    $this->ui_rowsGrid($cols)
			);
		}
		/*
		public function ui_pettype($obj)
		{
			return selectSqlNotNullable($obj, "name", "Pet type", SQL_COMBO_WAREHOUSE);
		}
		*/
		
		function getChildrenTree()
		{
			return array(
				"person" => array(
					"rows" => "pet",
					),
				"pettype" => array()
				);
		}

		protected function isObjEditable($obj = null)
		{
			return true;
			//return is_null($obj) ? $this->getContext()->obj->isEditable() : $obj->isEditable();
		}

		protected function ui_rowsGrid($cols)
		{
			return new DetailGrid
					(
						"rows",
						$cols,
						array(
							"caption" => "",
							"leftCaption" => false,
							"rowsChangeable" => $this->isObjEditable(),
							"rowsAppendable" => $this->isObjEditable(),
						)
					);
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