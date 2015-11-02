<?php
/**
 * Table Definition for softwareissue
 */
require_once 'P2DemoObject.php';

class DBO_Softwareissue extends FWSoftwareIssue 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'softwareissue';       // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $caption;                         // varchar(200)  not_null
    public $memo;                            // blob(65535)  not_null blob
    public $resolution;                      // blob(65535)  not_null blob
    public $priority;                        // int(11)  not_null group_by
    public $state;                           // varchar(100)  not_null
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorI;                      // int(11)  group_by
    public $mdUpdaterId;                     // int(11)  group_by
    public $closed;                          // tinyint(4)  not_null group_by
    public $cc;                              // varchar(255)  not_null
    public $ownerId;                         // int(11)  group_by
    public $deadline;                        // date(10)  

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
