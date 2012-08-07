<?php
/**
 * @package zgds
 * @subpackage mysql
 */
$xpdo_meta_map['zgdsPName']= array (
  'package' => 'zgds',
  'version' => '1.1',
  'table' => 'zgds_pname',
  'fields' => 
  array (
    'pname' => '',
  ),
  'fieldMeta' => 
  array (
    'pname' => 
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
    'pname' => 
    array (
      'alias' => 'pname',
      'primary' => false,
      'unique' => true,
      'fulltext' => true,
      'type' => 'BTREE',
      'columns' => 
      array (
        'pname' => 
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
      'foreign' => 'pname_id',
      'cardinality' => 'many',
      'owner' => 'local',
    ),
  ),
);
