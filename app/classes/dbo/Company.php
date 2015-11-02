<?php
/**
 * Table Definition for company
 */
require_once 'P2DemoObject.php';

class DBO_Company extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'company';             // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $code;                            // varchar(50)  not_null
    public $name;                            // varchar(200)  not_null
    public $customer;                        // tinyint(4)  not_null group_by
    public $supplier;                        // tinyint(4)  not_null group_by
    public $memo;                            // blob(65535)  not_null blob
    public $closed;                          // tinyint(4)  not_null group_by
    public $vatCode;                         // varchar(50)  not_null
    public $regCode;                         // varchar(50)  not_null
    public $addrStreet1;                     // varchar(50)  not_null
    public $addrStreet2;                     // varchar(50)  not_null
    public $addrCity;                        // varchar(50)  not_null
    public $addrIndex;                       // varchar(50)  not_null
    public $addrCountry;                     // varchar(50)  not_null
    public $addr;                            // varchar(255)  not_null
    public $deliveryTerms;                   // varchar(100)  not_null
    public $paymentTerms;                    // varchar(100)  not_null
    public $contact;                         // varchar(50)  not_null
    public $phone;                           // varchar(50)  not_null
    public $email;                           // varchar(50)  not_null
    public $fax;                             // varchar(50)  not_null
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  group_by
    public $mdUpdaterId;                     // int(11)  group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
