<?php
/**
 * Table Definition for language
 */
require_once 'P2DemoObject.php';

class DBO_Language extends FWLanguage 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'language';            // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $code;                            // char(2)  not_null
    public $name;                            // varchar(100)  not_null
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  group_by
    public $mdUpdaterId;                     // int(11)  group_by
    public $closed;                          // tinyint(4)  not_null group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
