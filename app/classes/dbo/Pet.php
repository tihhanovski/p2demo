<?php
/**
 * Table Definition for pet
 */
require_once 'P2DemoObject.php';

class DBO_Pet extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'pet';                 // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $typeId;                          // int(11)  not_null group_by
    public $ownerId;                         // int(11)  not_null group_by
    public $name;                            // varchar(100)  
    public $birthday;                        // date(10)  
    public $weight;                          // double(22)  group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE

    public $formats = array(
        "birthday" => FORMAT_DATE,
        "weight" => FORMAT_FLOAT2,
        );

    public $validators = array(
        "weight" => VALIDATION_NOT_EMPTY);
}
