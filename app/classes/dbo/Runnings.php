<?php
/**
 * Table Definition for runnings
 */
require_once 'P2DemoObject.php';

class DBO_Runnings extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'runnings';            // table name
    public $id;                              // int(11)  not_null group_by
    public $date;                            // datetime(19)  not_null
    public $memo;                            // varchar(444)  

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
