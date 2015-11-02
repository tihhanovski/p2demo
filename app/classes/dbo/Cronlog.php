<?php
/**
 * Table Definition for cronlog
 */
require_once 'P2DemoObject.php';

class DBO_Cronlog extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'cronlog';             // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $memo;                            // blob(65535)  not_null blob
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
