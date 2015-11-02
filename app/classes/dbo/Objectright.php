<?php
/**
 * Table Definition for objectright
 */
require_once 'P2DemoObject.php';

class DBO_Objectright extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'objectright';         // table name
    public $roleId;                          // int(11)  not_null primary_key group_by
    public $registryId;                      // int(11)  not_null primary_key group_by
    public $s;                               // tinyint(4)  not_null group_by
    public $u;                               // tinyint(4)  not_null group_by
    public $d;                               // tinyint(4)  not_null group_by
    public $l;                               // tinyint(4)  not_null group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
