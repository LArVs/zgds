<?php
/**
 * @package zgds
 * @subpackage mysql
 */
$xpdo_meta_map['zgdsLName']= array (
  'package' => 'zgds',
  'version' => '1.1',
  'table' => 'zgds_lname',
  'fields' => 
  array (
    'lname' => '',
  ),
  'fieldMeta' => 
  array (
    'lname' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '50',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
      'index' => 'unique',
    ),
  ),
  'indexes' => 
  array (
    'lname' => 
    array (
      'alias' => 'lname',
      'primary' => false,
      'unique' => true,
      'fulltext' => true,
      'type' => 'BTREE',
      'columns' => 
      array (
        'lname' => 
        array (
          'length' => '',
          'collation' => 'A',
          'null' => false,
        ),
      ),
    ),
  ),
  'composites' => 
  array (
    'RegistrationCard' => 
    array (
      'class' => 'zgdsRegistrationCard',
      'local' => 'id',
      'foreign' => 'lname_id',
      'cardinality' => 'many',
      'owner' => 'local',
    ),
  ),
);
