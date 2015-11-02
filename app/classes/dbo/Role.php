<?php
/**
 * Table Definition for role
 */
require_once 'P2DemoObject.php';

class DBO_Role extends FWRole 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'role';                // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $name;                            // varchar(100)  not_null
    public $memo;                            // blob(65535)  not_null blob
    public $state;                           // int(11)  not_null group_by
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  group_by
    public $mdUpdaterId;                     // int(11)  group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
