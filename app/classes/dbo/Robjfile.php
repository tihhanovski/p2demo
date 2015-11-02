<?php
/**
 * Table Definition for robjfile
 */
require_once 'P2DemoObject.php';

class DBO_Robjfile extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'robjfile';            // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $name;                            // varchar(100)  not_null
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  group_by
    public $mdUpdaterId;                     // int(11)  group_by
    public $robj;                            // varchar(50)  not_null
    public $rid;                             // int(11)  not_null group_by
    public $memo;                            // blob(65535)  not_null blob

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
