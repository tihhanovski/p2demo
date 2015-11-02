<?php
/**
 * Table Definition for tipshown
 */
require_once 'P2DemoObject.php';

class DBO_Tipshown extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'tipshown';            // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $tipId;                           // int(11)  not_null group_by
    public $userId;                          // int(11)  not_null group_by
    public $mdCreated;                       // datetime(19)  

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
