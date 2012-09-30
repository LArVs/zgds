<?php
/**
 * @package zgds
 * @subpackage mysql
 */
$xpdo_meta_map['zgdsRegistrationCard']= array (
  'package' => 'zgds',
  'version' => '1.1',
  'table' => 'zgds_rcard',
  'extends' => 'xPDOSimpleObject',
  'fields' => 
  array (
    'eid' => 0,
    'fname_id' => 0,
    'lname_id' => 0,
    'pname_id' => 0,
    'date_of_birth' => '0000-00-00',
    'age' => 0,
    'region_id' => 0,
    'city_id' => 0,
    'district_id' => 0,
    'street_id' => 0,
    'house_number' => 0,
    'house_number_a' => '',
    'flat_number' => 0,
    'telephone' => '',
    'address_info' => '',
    'status' => 0,
    'organization_id' => 0,
    'status_info' => '',
    'diagnosis_id' => 0,
    'diagnosis_type' => 0,
    'date_of_disease' => '0000-00-00',
    'date_of_reference_patient' => '0000-00-00',
    'established_lpu_id' => 0,
    'established_person' => '',
    'declarant_lpu_id' => 0,
    'declarant_person' => '',
    'direction_diagnosis_id' => 0,
    'contact_eid' => 0,
    'special_contingent' => '',
    'datetime_of_registration' => '0000-00-00 00:00:00',
    'registration_person_by_tel' => '',
    'registration_person_by_db' => '',
    'hospitalization_by_lpu_id' => 0,
    'datetime_of_hospitalization' => '0000-00-00 00:00:00',
    'belongs_to_lpu_id' => 0,
    'department_of_lpu_id' => 0,
    'hospitalization_to_lpu_id' => 0,
    'hospitalization_department_of_lpu_id' => 0,
    'diagnosis_1st_id' => 0,
    'diagnosis_1st_person' => '',
    'diagnosis_1st_date' => '0000-00-00',
    'diagnosis_2st_id' => 0,
    'diagnosis_2st_person' => '',
    'diagnosis_2st_date' => '0000-00-00',
    'discharge_type' => 0,
    'date_of_discharge' => '0000-00-00',
    'date_of_bacteriological_analysis_start' => '0000-00-00',
    'date_of_bacteriological_analysis_finish' => '0000-00-00',
    'bacteriological_analysis' => '',
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
    'region_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'city_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'district_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'street_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'house_number' => 
    array (
      'dbtype' => 'smallint',
      'precision' => '5',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'house_number_a' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '10',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
    ),
    'flat_number' => 
    array (
      'dbtype' => 'smallint',
      'precision' => '5',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'telephone' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '40',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
    ),
    'address_info' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '255',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
    ),
    'status' => 
    array (
      'dbtype' => 'tinyint',
      'precision' => '1',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'organization_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'status_info' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '255',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
    ),
    'diagnosis_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'diagnosis_type' => 
    array (
      'dbtype' => 'tinyint',
      'precision' => '1',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'date_of_disease' => 
    array (
      'dbtype' => 'date',
      'phptype' => 'date',
      'null' => false,
      'default' => '0000-00-00',
    ),
    'date_of_reference_patient' => 
    array (
      'dbtype' => 'date',
      'phptype' => 'date',
      'null' => false,
      'default' => '0000-00-00',
    ),
    'established_lpu_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'established_person' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '255',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
    ),
    'declarant_lpu_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'declarant_person' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '255',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
    ),
    'direction_diagnosis_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'contact_eid' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'phptype' => 'string',
      'null' => false,
      'default' => 0,
    ),
    'special_contingent' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '255',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
    ),
    'datetime_of_registration' => 
    array (
      'dbtype' => 'datetime',
      'phptype' => 'datetime',
      'null' => false,
      'default' => '0000-00-00 00:00:00',
    ),
    'registration_person_by_tel' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '255',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
    ),
    'registration_person_by_db' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '255',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
    ),
    'hospitalization_by_lpu_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'datetime_of_hospitalization' => 
    array (
      'dbtype' => 'datetime',
      'phptype' => 'datetime',
      'null' => false,
      'default' => '0000-00-00 00:00:00',
    ),
    'belongs_to_lpu_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'department_of_lpu_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'hospitalization_to_lpu_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'hospitalization_department_of_lpu_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'diagnosis_1st_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'diagnosis_1st_person' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '255',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
    ),
    'diagnosis_1st_date' => 
    array (
      'dbtype' => 'date',
      'phptype' => 'date',
      'null' => false,
      'default' => '0000-00-00',
    ),
    'diagnosis_2st_id' => 
    array (
      'dbtype' => 'integer',
      'precision' => '10',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'diagnosis_2st_person' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '255',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
    ),
    'diagnosis_2st_date' => 
    array (
      'dbtype' => 'date',
      'phptype' => 'date',
      'null' => false,
      'default' => '0000-00-00',
    ),
    'discharge_type' => 
    array (
      'dbtype' => 'tinyint',
      'precision' => '1',
      'attributes' => 'unsigned',
      'phptype' => 'boolean',
      'null' => false,
      'default' => 0,
    ),
    'date_of_discharge' => 
    array (
      'dbtype' => 'date',
      'phptype' => 'date',
      'null' => false,
      'default' => '0000-00-00',
    ),
    'date_of_bacteriological_analysis_start' => 
    array (
      'dbtype' => 'date',
      'phptype' => 'date',
      'null' => false,
      'default' => '0000-00-00',
    ),
    'date_of_bacteriological_analysis_finish' => 
    array (
      'dbtype' => 'date',
      'phptype' => 'date',
      'null' => false,
      'default' => '0000-00-00',
    ),
    'bacteriological_analysis' => 
    array (
      'dbtype' => 'text',
      'phptype' => 'string',
      'null' => false,
      'default' => '',
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
  ),
  'composites' => 
  array (
    'notification_ses' => 
    array (
      'class' => 'zgdsNotificationSES',
      'local' => 'eid',
      'foreign' => 'eid',
      'cardinality' => 'many',
      'owner' => 'foreign',
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
