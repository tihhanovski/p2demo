<?php
/**
 * Table Definition for crontask
 */
require_once 'P2DemoObject.php';

class DBO_Crontask extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'crontask';            // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $name;                            // varchar(100)  not_null
    public $started;                         // datetime(19)  
    public $finished;                        // datetime(19)  
    public $log;                             // blob(4294967295)  not_null blob

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
