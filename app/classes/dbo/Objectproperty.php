<?php
/**
 * Table Definition for objectproperty
 */
require_once 'P2DemoObject.php';

class DBO_Objectproperty extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'objectproperty';      // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $robject;                         // varchar(50)  not_null multiple_key
    public $name;                            // varchar(50)  not_null
    public $value;                           // blob(65535)  blob

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
