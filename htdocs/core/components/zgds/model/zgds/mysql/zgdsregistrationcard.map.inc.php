<?php
/**
 * @package zgds
 * @subpackage mysql
 */
$xpdo_meta_map['zgdsRegistrationCard']= array (
  'package' => 'zgds',
  'version' => '1.1',
  'table' => 'zgds_rcard',
  'fields' => 
  array (
    'eid' => 0,
    'fname_id' => 0,
    'lname_id' => 0,
    'pname_id' => 0,
    'date_of_birth' => '0000-00-00',
    'age' => 0,
  ),
  'fieldMeta' => 
  array (
    'eid' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'phptype' => 'string',
      'null' => false,
      'default' => 0,
    ),
    'fname_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'lname_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'pname_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'date_of_birth' => 
    array (
      'dbtype' => 'date',
      'phptype' => 'date',
      'null' => false,
      'default' => '0000-00-00',
    ),
    'age' => 
    array (
      'dbtype' => 'tinyint',
      'precision' => '3',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
  ),
  'indexes' => 
  array (
    'eid' => 
    array (
      'alias' => 'eid',
      'primary' => false,
      'unique' => false,
      'type' => 'BTREE',
      'columns' => 
      array (
        'eid' => 
        array (
          'length' => '',
          'collation' => 'A',
          'null' => false,
        ),
      ),
    ),
    'fname_id' => 
    array (
      'alias' => 'fname_id',
      'primary' => false,
      'unique' => false,
      'type' => 'BTREE',
      'columns' => 
      array (
        'fname_id' => 
        array (
          'length' => '',
          'collation' => 'A',
          'null' => false,
        ),
      ),
    ),
  ),
  'aggregates' => 
  array (
    'FName' => 
    array (
      'class' => 'zgdsFName',
      'local' => 'fname_id',
      'foreign' => 'id',
      'cardinality' => 'one',
      'owner' => 'foreign',
    ),
    'LName' => 
    array (
      'class' => 'zgdsLName',
      'local' => 'lname_id',
      'foreign' => 'id',
      'cardinality' => 'one',
      'owner' => 'foreign',
    ),
    'PName' => 
    array (
      'class' => 'zgdsPName',
      'local' => 'pname_id',
      'foreign' => 'id',
      'cardinality' => 'one',
      'owner' => 'foreign',
    ),
  ),
);
