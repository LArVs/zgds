<?php
/**
 * Card handler
 *
 * read/create/update/destroy
 *
 * @copyright Copyright (C) 2010-2013
 * @author    LArV <larv.develop@gmail.com>
 *
 * @package     Card
 * @subpackage  handler
 */

// get general core
$GX = GeneralX::Instance();
// check GeneralX class
if( empty( $GX ) || !( $GX instanceof GeneralX ) ) { die( 'Fail general core load!'); }

// prepare query
$object_name = 'zgdsRegistrationCard';
// for paging: get start, limit
$limit = (int)$GX->modx->getOption( 'limit', $scriptProperties, 20 );
$start = (int)$GX->modx->getOption( 'start', $scriptProperties, 0 );
$total = (int)$GX->modx->getCount( $object_name );
// guery using paging
$fileds = $GX->modx->getFields( $object_name );
$query = $GX->modx->newQuery( $object_name );
$query->limit( $limit, $start );
$query->sortby( 'datetime_of_registration', 'DESC' );
$objects = $GX->modx->getCollection( $object_name, $query );
$message = '';
$data = array();
if( empty( $objects ) ) { $message = "Нет данных"; }
else {
	foreach( $objects as $o ) {
		$data[] = $o;
		//$message .= print_r( $o->toJSON(), true ) . '<br />';
	}
}
$o = array(
	'fields' => $fileds,
	'data'   => $data,
);

return( $this->outputArray( $o, $total ) );
return( $GX->modx->error->success( $message, $o ) );
////////////////////////////////////////////////////////////////////////////////////////////////////
return( $GX->modx->error->success( '', array( empty( $GX ) ) ) );

////////////////////////////////////////////////////////////////////////////////////////////////////

$eSchool = eSchool::Instance();
if( empty( $eSchool ) || !( $eSchool instanceof eSchool ) ) { die(); }

$log = addslashes(str_replace( array( "\n", "\r" ), '', var_export( $_REQUEST, true ) ));
if( empty( $_REQUEST ) )
	{
	echo <<<"EOS"
		{
		'success': true,
		'results':
			[
			{ id: 1, number: '111', fname: 'Иванов',  lname: 'Иван', pname: 'Иванович',  dor: '2012-06-25' },
			{ id: 2, number: '121', fname: 'Петров',  lname: 'Петр', pname: 'Петрович',  dor: '2012-06-26' },
			{ id: 3, number: '131', fname: 'Сидоров', lname: 'Сидр', pname: 'Сидорович', dor: '2012-06-27' },
			],
		'log': '$log',
		}
EOS;
	}
else
	{
	echo <<<"EOS1"
		{
		'success': true,
		'results':
			[
			{ id: 1, number: '111', fname: 'Иванов',  lname: 'Иван', pname: 'Иванович',  dor: '2012-06-25' },
			{ id: 2, number: '121', fname: 'Петров',  lname: 'Петр', pname: 'Петрович',  dor: '2012-06-26' },
			{ id: 3, number: '131', fname: 'Сидоров', lname: 'Сидр', pname: 'Сидорович', dor: '2012-06-27' },
			{ id: 4, number: '141', fname: 'Сидоров1', lname: 'Сидр1', pname: 'Сидорович1', dor: '2012-06-28' },
			],
		'log': '$log',
		}
EOS1;
	}

