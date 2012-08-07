<?php
/**
 * Create City
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

// is object?
if( empty( $scriptProperties[ 'object_data' ] ) ) { die(); }
$city = $eSchool->modx->fromJSON( $scriptProperties[ 'object_data' ] );

// is total object?
if( empty( $scriptProperties[ 'object_total' ] ) || ( $scriptProperties[ 'object_total' ] > 1 && $scriptProperties[ 'object_total' ] != count( $city ) ) ) { die(); }
$total = (int)$scriptProperties[ 'object_total' ];
if( $total == 1 ) { $city = array( $city ); }
$result = true;
foreach( $city as $i => $c )
	{
	$newCity = $eSchool->modx->newObject( 'esCity' );
	$newCity->fromArray( $c );
	$result &= $newCity->save();
	}
if( $result )
	{
	return( $eSchool->modx->error->success( 'Создание выполнено.' ) );
	}
else
	{
	return( $eSchool->modx->error->failure( 'Создание не выполнено.' ) );
	}