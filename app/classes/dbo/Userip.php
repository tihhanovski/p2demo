<?php
/**
 * Table Definition for userip
 */
require_once 'P2DemoObject.php';

class DBO_Userip extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'userip';              // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $ip;                              // varchar(50)  
    public $memo;                            // blob(65535)  blob
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  group_by
    public $mdUpdaterId;                     // int(11)  group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
