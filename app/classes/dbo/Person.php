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
        "code" => VALIDATION_CLASS_METHOD
    );

	protected $formats = array(
       "birthday" =>               FORMAT_TIME,
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
		$lowestDate = 99999999999999999999;
		$highestDate = -99999999999999999999;		
		if(count($this->rows)>0) {
			$lowestDate = strtotime($this->rows[0]->birthday);
			$highestDate = strtotime($this->rows[0]->birthday);			
		}

    	if(is_array($this->rows))
			
    		foreach ($this->rows as $row)
    			if(!$row->willBeDeleted())
	    		{
	    			$tw += $row->weight;
					if(strtotime($row->birthday) < $lowestDate){
						$lowestDate = strtotime($row->birthday);
					}
	    		    if(strtotime($row->birthday) > $highestDate){
						$highestDate = strtotime($row->birthday);
					}
				}
		
		if($lowestDate==99999999999999999999) $lowestDate="";
		 else $lowestDate=date( 'd.m.y', $lowestDate);
		if($highestDate==-99999999999999999999) $highestDate="";
         else $highestDate=date( 'd.m.y', $highestDate);		
		
	    $this->setValue("totalWeight", $tw);		
		$this->setValue("oldestpetbday", $lowestDate);
	    $this->setValue("youngestpetbday", $highestDate);
		return true;
	}
	
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
