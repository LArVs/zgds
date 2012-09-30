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
// remove object(s)
$where = array( 'id:IN' => $city );
$result = $eSchool->modx->removeCollection( 'esCity', $where );

if( $result > 0 )
	{
	return( $eSchool->modx->error->success( 'Удаление выполнено.' ) );
	}
else
	{
	return( $eSchool->modx->error->failure( 'Удаление не выполнено.' ) );
	}