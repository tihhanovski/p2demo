<?php
/**
 * Table Definition for tipsystem
 */
require_once 'P2DemoObject.php';

class DBO_Tipsystem extends FWTipsystem 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'tipsystem';           // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $page;                            // varchar(100)  not_null
    public $body;                            // blob(-1)  not_null blob
    public $active;                          // tinyint(4)  not_null group_by
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  group_by
    public $mdUpdaterId;                     // int(11)  group_by
    public $control;                         // varchar(100)  not_null

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
