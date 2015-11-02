<?php
/**
 * Table Definition for article
 */
require_once 'P2DemoObject.php';

class DBO_Article extends FWArticle 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'article';             // table name
    public $id;                              // int(11)  not_null primary_key auto_increment group_by
    public $unitId;                          // int(11)  multiple_key group_by
    public $code;                            // varchar(50)  not_null multiple_key
    public $name;                            // varchar(100)  not_null multiple_key
    public $memo;                            // blob(65535)  not_null blob
    public $closed;                          // tinyint(4)  not_null group_by
    public $typeId;                          // int(11)  not_null multiple_key group_by
    public $mdCreated;                       // datetime(19)  
    public $mdUpdated;                       // datetime(19)  
    public $mdCreatorId;                     // int(11)  group_by
    public $mdUpdaterId;                     // int(11)  group_by

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
