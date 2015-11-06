<?php
/**
 * Table Definition for objlog
 */
require_once 'P2DemoObject.php';

class DBO_Objlog extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'objlog';              // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $dt;                              // datetime(19)  not_null multiple_key
    public $robject;                         // varchar(50)  not_null multiple_key
    public $val;                             // blob(-1)  not_null blob
    public $acn;                             // tinyint(4)  not_null group_by
    public $acntype;                         // tinyint(4)  not_null group_by
    public $userId;                          // int(11)  not_null group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
