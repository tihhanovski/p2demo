<?php
/**
 * Table Definition for pettype
 */
require_once 'P2DemoObject.php';

class DBO_Pettype extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'pettype';             // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $name;                            // varchar(100)  not_null multiple_key
    public $memo;                            // blob(65535)  not_null blob
    public $closed;                          // tinyint(4)  not_null multiple_key group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
