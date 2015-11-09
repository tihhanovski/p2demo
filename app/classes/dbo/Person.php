<?php
/**
 * Table Definition for person
 */
require_once 'P2DemoObject.php';

class DBO_Person extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'person';              // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $code;                            // varchar(50)  not_null
    public $firstname;                       // varchar(100)  not_null
    public $lastname;                        // varchar(100)  not_null
    public $birthday;                        // date(10)  not_null
    public $info;                            // blob(65535)  not_null blob
    public $memo;                            // blob(65535)  not_null blob

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE

    protected $validators = array(
        "code" => VALIDATION_CLASS_METHOD,
        "id" => VALIDATION_CLASS_METHOD		
    );

	protected $formats = array(
       "birthday" =>               FORMAT_DATE,
       "weight" => FORMAT_FLOAT2,
       "totalWeight" => FORMAT_FLOAT2,
	);

    /**
     * {@inheritdoc}
     */
    public function childValueChanged($path, $value, $tree)
    {
        $this->calcTotals();
    }

    /**
     * {@inheritdoc}
     */
    public function childDeleted($path, $tree)
    {
        $this->calcTotals();
    }

    public function loadAdditionalData()
    {
    	$this->calcTotals();
    }

    public function calcTotals()
    {
    	$tw = 0;
    	if(is_array($this->rows))
    		foreach ($this->rows as $row)
    			if(!$row->willBeDeleted())
	    		{
	    			$tw += $row->weight;
	    		}

	    $this->setValue("totalWeight", $tw);
    }


	//public function __construct() {
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
		
//		return true;		
//	}
	
	public function validate_code() {
		if(strlen($this->code)>7) {
			$codex=$this->code;
			$year=substr($codex,1,2);
			$month=substr($codex,3,2);
			$day=substr($codex,5,2);
			if($year>25) $year="19".$year;
			else $year="20".$year;
			$bday=$year."-".$month."-".$day;
			//$this->setValue("birthday","1980-01-01");
			$this->setValue("birthday",$bday);
  		    return true;
		}
		
		$this->addWarning(new Warning("Person code is wrong", "code", WARNING_ERROR));
		return false;
	}
}
