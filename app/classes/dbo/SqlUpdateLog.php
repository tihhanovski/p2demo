<?php
/**
 * Table Definition for SqlUpdateLog
 */
require_once 'P2DemoObject.php';

class DBO_SqlUpdateLog extends FWSqlUpdateLog 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'sqlupdatelog';        // table name
    public $ID;                              // int(11)  not_null primary_key auto_increment group_by
    public $file;                            // varchar(100)  
    public $command;                         // blob(65535)  blob
    public $result;                          // blob(65535)  blob

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE
}
