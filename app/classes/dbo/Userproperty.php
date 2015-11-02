<?php
/**
 * Table Definition for userproperty
 */
require_once 'P2DemoObject.php';

class DBO_Userproperty extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'userproperty';        // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $userId;                          // int(11)  not_null multiple_key group_by
    public $name;                            // varchar(50)  
    public $value;                           // blob(65535)  blob

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
