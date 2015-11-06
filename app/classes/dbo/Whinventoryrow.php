<?php
/**
 * Table Definition for whinventoryrow
 */
require_once 'P2DemoObject.php';

class DBO_Whinventoryrow extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'whinventoryrow';      // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $whinventoryId;                   // int(11)  not_null multiple_key group_by
    public $articleId;                       // int(11)  not_null multiple_key group_by
    public $modifierId;                      // int(11)  not_null group_by
    public $quantity;                        // decimal(20)  
    public $realQuantity;                    // decimal(20)  
    public $cost;                            // decimal(20)  
    public $memo;                            // blob(65535)  not_null blob
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  multiple_key group_by
    public $mdUpdaterId;                     // int(11)  multiple_key group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
