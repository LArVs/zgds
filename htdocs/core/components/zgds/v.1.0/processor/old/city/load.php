<?php
/**
 * City list
 *
 * Copyright 2010 by LArV <larv.develop@gmail.com>
 *
 * @package    eSchool
 * @subpackage processor.city
 */

// check eSchool class
if( !class_exists( 'eSchool' ) ) { die(); }
$eSchool = eSchool::Instance();
if( empty( $eSchool ) || !( $eSchool instanceof eSchool ) ) { die(); }

// for paging: get start, limit
$limit = (int)$eSchool->modx->getOption( 'limit', $scriptProperties, 20 );
$start = (int)$eSchool->modx->getOption( 'start', $scriptProperties, 0 );
$total = (int)$eSchool->modx->getCount( 'esCity' );
// guery using paging
$query = $eSchool->modx->newQuery( 'esCity' );
$query->limit( $limit, $start );
$query->sortby( 'name', 'ASC' );
$esCity = $eSchool->modx->getCollection( 'esCity', $query );
$output = '';
$city = array();

if( empty( $esCity ) ) { $output = "Нет данных"; }
else
	{
	foreach( $esCity as $c )
		{
		$city[] = $c;
//		$output .= print_r( $city->toJSON(), true ) . '<br />';
		}
	}
//print_r($scriptProperties);exit;
$o = array(
	'total' => $total,
	'data'  => $eSchool->modx->error->toArray( $city ),
	);

return( $eSchool->modx->error->success( '', $o ) );