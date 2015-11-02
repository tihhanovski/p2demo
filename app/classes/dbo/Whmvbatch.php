<?php
/**
 * Table Definition for whmvbatch
 */
require_once 'P2DemoObject.php';

class DBO_Whmvbatch extends WhmvbatchParent 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'whmvbatch';           // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $typeId;                          // int(11)  not_null multiple_key group_by
    public $dt;                              // date(10)  not_null
    public $nrprefix;                        // varchar(10)  not_null
    public $nrsuffix;                        // varchar(10)  not_null
    public $nr;                              // int(11)  not_null group_by
    public $nrsequenceId;                    // int(11)  not_null multiple_key group_by
    public $fullNr;                          // varchar(50)  not_null
    public $whSrcId;                         // int(11)  not_null multiple_key group_by
    public $whDstId;                         // int(11)  not_null multiple_key group_by
    public $companySrcId;                    // int(11)  not_null multiple_key group_by
    public $companyDstId;                    // int(11)  not_null multiple_key group_by
    public $locked;                          // tinyint(4)  not_null group_by
    public $memo;                            // blob(65535)  not_null blob
    public $totalCost;                       // decimal(20)  not_null group_by
    public $totalPrice;                      // decimal(20)  not_null group_by
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  multiple_key group_by
    public $mdUpdaterId;                     // int(11)  multiple_key group_by
    public $whinventoryId;                   // int(11)  group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
