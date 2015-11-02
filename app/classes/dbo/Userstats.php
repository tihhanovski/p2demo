<?php
/**
 * Table Definition for userstats
 */
require_once 'P2DemoObject.php';

class DBO_Userstats extends FWUserstats 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'userstats';           // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $userId;                          // int(11)  multiple_key group_by
    public $useripId;                        // int(11)  group_by
    public $useragentId;                     // int(11)  group_by
    public $typeId;                          // int(11)  not_null group_by
    public $dt;                              // datetime(19)  not_null multiple_key
    public $name;                            // varchar(100)  multiple_key
    public $memo;                            // blob(65535)  blob
    public $status;                          // varchar(100)  
    public $actorId;                         // int(11)  group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
