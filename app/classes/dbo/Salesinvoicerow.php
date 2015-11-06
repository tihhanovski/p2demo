<?php
/**
 * Table Definition for salesinvoicerow
 */
require_once 'P2DemoObject.php';

class DBO_Salesinvoicerow extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'salesinvoicerow';     // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $salesinvoiceId;                  // int(11)  not_null group_by
    public $articleId;                       // int(11)  not_null group_by
    public $quantity;                        // decimal(20)  not_null
    public $priceNoVat;                      // decimal(20)  not_null
    public $vatId;                           // int(11)  group_by
    public $vat;                             // decimal(20)  not_null
    public $priceWithVat;                    // decimal(20)  not_null
    public $totalNoVat;                      // decimal(20)  not_null
    public $totalVat;                        // decimal(20)  not_null
    public $totalWithVat;                    // decimal(20)  not_null
    public $memo;                            // blob(65535)  not_null blob

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
