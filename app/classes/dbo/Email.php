<?php
/**
 * Table Definition for email
 */
require_once 'P2DemoObject.php';

class DBO_Email extends FWEmail 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'email';               // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $recipient;                       // varchar(100)  not_null
    public $sender;                          // varchar(100)  not_null
    public $body;                            // blob(-1)  not_null blob
    public $sent;                            // datetime(19)  
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  group_by
    public $mdUpdaterId;                     // int(11)  group_by
    public $subject;                         // varchar(200)  not_null
    public $bcc;                             // varchar(200)  not_null
    public $signature;                       // blob(-1)  not_null blob
    public $attachment;                      // blob(-1)  not_null blob
    public $result;                          // blob(65535)  not_null blob

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
