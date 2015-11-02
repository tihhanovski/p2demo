<?php
/**
 * Table Definition for rmodule
 */
require_once 'P2DemoObject.php';

class DBO_Rmodule extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'rmodule';             // table name
    public $id;                              // int(11)  not_null primary_key group_by
    public $name;                            // varchar(100)  not_null
    public $pos;                             // int(11)  not_null group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
