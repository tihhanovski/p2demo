<?php
/**
 * Table Definition for whmv
 */
require_once 'P2DemoObject.php';

class DBO_Whmv extends WhmvParent 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'whmv';                // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $typeId;                          // int(11)  not_null multiple_key group_by
    public $batchId;                         // int(11)  not_null multiple_key group_by
    public $dt;                              // date(10)  not_null
    public $articleId;                       // int(11)  not_null multiple_key group_by
    public $modifierId;                      // int(11)  not_null multiple_key group_by
    public $whSrcId;                         // int(11)  not_null multiple_key group_by
    public $whDstId;                         // int(11)  not_null multiple_key group_by
    public $companySrcId;                    // int(11)  not_null multiple_key group_by
    public $companyDstId;                    // int(11)  not_null multiple_key group_by
    public $quantity;                        // decimal(20)  not_null
    public $cost;                            // decimal(20)  not_null
    public $price;                           // decimal(20)  not_null
    public $discount;                        // decimal(20)  not_null
    public $memo;                            // blob(65535)  not_null blob
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  multiple_key group_by
    public $mdUpdaterId;                     // int(11)  multiple_key group_by
    public $iqp;                             // decimal(20)  not_null
    public $oqp;                             // decimal(20)  not_null

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
