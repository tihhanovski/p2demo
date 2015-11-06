<?php
/**
 * Table Definition for asukohad
 */
require_once 'P2DemoObject.php';

class DBO_Asukohad extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'asukohad';            // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $code;                            // varchar(50)  not_null multiple_key
    public $name;                            // varchar(100)  not_null multiple_key
    public $info;                            // blob(65535)  not_null blob

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
