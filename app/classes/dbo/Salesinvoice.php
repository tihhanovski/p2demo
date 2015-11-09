<?php
/**
 * Table Definition for salesinvoice
 */
require_once 'P2DemoObject.php';

class DBO_Salesinvoice extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'salesinvoice';        // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $dt;                              // date(10)  not_null
    public $nrprefix;                        // varchar(10)  not_null
    public $nrsuffix;                        // varchar(10)  not_null
    public $nr;                              // int(11)  not_null group_by
    public $nrsequenceId;                    // int(11)  not_null group_by
    public $fullNr;                          // varchar(50)  not_null
    public $customerId;                      // int(11)  not_null group_by
    public $payerId;                         // int(11)  not_null group_by
    public $locked;                          // tinyint(4)  not_null group_by
    public $memo;                            // blob(65535)  not_null blob
    public $totalNoVat;                      // decimal(20)  not_null group_by
    public $totalVat;                        // decimal(20)  not_null group_by
    public $totalWithVat;                    // decimal(20)  not_null group_by
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  group_by
    public $mdUpdaterId;                     // int(11)  group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
