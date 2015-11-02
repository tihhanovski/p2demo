<?php
/**
 * Table Definition for webuser
 */
require_once 'P2DemoObject.php';

class DBO_Webuser extends FWWebuser
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'webuser';             // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $uid;                             // varchar(32)  unique_key
    public $pwd;                             // varchar(255)  
    public $sessionid;                       // varchar(255)  multiple_key
    public $state;                           // int(11)  not_null group_by
    public $roles;                           // blob(65535)  blob
    public $docSignature;                    // blob(65535)  blob
    public $name;                            // varchar(100)  
    public $email;                           // varchar(100)  
    public $closed;                          // tinyint(4)  not_null group_by
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  group_by
    public $mdUpdaterId;                     // int(11)  group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}

