<?php
/**
 * Table Definition for robject
 */
require_once 'P2DemoObject.php';

class DBO_Robject extends FWRObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'robject';             // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $name;                            // varchar(100)  not_null
    public $state;                           // int(11)  not_null group_by
    public $typeId;                          // int(11)  not_null group_by
    public $module;                          // int(11)  not_null group_by
    public $menupartId;                      // int(11)  not_null group_by
    public $pos;                             // int(11)  not_null group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
