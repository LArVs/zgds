<?php
/**
 * Update City
 *
 * Copyright 2010 by LArV <larv.develop@gmail.com>
 *
 * @package    eschool
 * @subpackage processor
 */

// check eSchool class
if( !class_exists( 'eSchool' ) ) { die(); }
$eSchool = eSchool::Instance();
if( empty( $eSchool ) || !( $eSchool instanceof eSchool ) ) { die(); }

if( empty( $scriptProperties[ 'object_data' ] ) ) { die(); }
$city = $eSchool->modx->fromJSON( $scriptProperties[ 'object_data' ] );
// is total object?
if( empty( $scriptProperties[ 'object_total' ] ) || ( $scriptProperties[ 'object_total' ] > 1 && $scriptProperties[ 'object_total' ] != count( $city ) ) ) { die(); }
$total = (int)$scriptProperties[ 'object_total' ];
if( $total == 1 ) { $city = array( $city ); }
$result = true;
foreach( $city as $i => $c )
	{
	// is object id?
	$id = (int)$c[ 'id' ];
	$obj = $eSchool->modx->getObject( 'esCity', $id );
	if( empty( $obj ) ) { $result = false; continue; }
	// update object
	$obj->fromArray( $c );
	// commit object
	$result &= $obj->save();
	}
if( $result )
	{
	return( $eSchool->modx->error->success( 'Обновление выполнено.' ) );
	}
else
	{
	return( $eSchool->modx->error->failure( 'Обновление не выполнено.' ) );
	}