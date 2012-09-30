<?php
/**
 * @package zgds
 * @subpackage mysql
 */
$xpdo_meta_map['zgdsFName']= array (
  'package' => 'zgds',
  'version' => '1.1',
  'table' => 'zgds_fname',
  'extends' => 'xPDOSimpleObject',
  'fields' => 
  array (
    'fname' => '',
  ),
  'fieldMeta' => 
  array (
    'fname' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '50',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
    ),
  ),
  'indexes' => 
  array (
    'fname' => 
    array (
      'alias' => 'fname',
      'primary' => false,
      'unique' => true,
      'fulltext' => true,
      'type' => 'BTREE',
      'columns' => 
      array (
        'fname' => 
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
      'foreign' => 'fname_id',
      'cardinality' => 'many',
      'owner' => 'local',
    ),
  ),
);
