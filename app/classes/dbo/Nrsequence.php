<?php
/**
 * Table Definition for nrsequence
 */
require_once 'P2DemoObject.php';

class DBO_Nrsequence extends WFWNamed 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'nrsequence';          // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $name;                            // varchar(200)  not_null
    public $prefix;                          // varchar(10)  not_null
    public $suffix;                          // varchar(10)  not_null
    public $startNr;                         // int(11)  not_null group_by
    public $startDt;                         // date(10)  
    public $finishDt;                        // date(10)  
    public $memo;                            // blob(65535)  not_null blob
    public $closed;                          // tinyint(4)  not_null group_by
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  group_by
    public $mdUpdaterId;                     // int(11)  group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
