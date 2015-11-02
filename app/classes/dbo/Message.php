<?php
/**
 * Table Definition for message
 */
require_once 'P2DemoObject.php';

class DBO_Message extends P2DemoObject 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'message';             // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $senderId;                        // int(11)  not_null group_by
    public $recieverId;                      // int(11)  not_null group_by
    public $caption;                         // varchar(200)  
    public $body;                            // blob(65535)  blob
    public $sent;                            // datetime(19)  not_null
    public $recieved;                        // datetime(19)  not_null
    public $replyToId;                       // int(11)  group_by
    public $robject;                         // varchar(50)  

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
