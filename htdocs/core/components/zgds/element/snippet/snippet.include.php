<?php
/**
 * IncludeX
 *
 * Include snippet
 *
 * @copyright Copyright (C) 2010, by LArV <larv.develop@gmail.com>
 * @author    LArV <larv.develop@gmail.com>
 *
 * @package IncludeX
 * @subpackage include
 */

if( empty( $modx ) || !( $modx instanceof modX ) ) { die(); }
$debug             = $modx->getOption( 'debug',         $scriptProperties, 'false', true );

$package           = $modx->getOption( 'package',       $scriptProperties, 'zgds', true );
$version           = $modx->getOption( 'version',       $scriptProperties, 'v.1.0', true );
$subpackage        = $modx->getOption( 'subpackage',    $scriptProperties, 'zgds', true );

$snippet_name      = $modx->getOption( 'name',          $scriptProperties, '', true );
$snippet_cacheable = $modx->getOption( 'cacheable',     $scriptProperties, 'true', true );

	$debug             = ( $debug === 'true'             ? true: false );
	$snippet_cacheable = ( $snippet_cacheable === 'true' && !$debug ? true: false );

/*
echo "<pre>";
	var_dump(
		$scriptProperties
		,'debug', $debug
		,'snippet_cacheable', $snippet_cacheable
		);
echo "<pre>";
//*/


$IncludeX_package    = 'general';
$IncludeX_subpackage = 'snippet';

require_once( MODX_CORE_PATH . "components/$package/$version/model/$IncludeX_package.class.php" );

$GX = GeneralX::Instance( $modx,
	array(
		 'debug'             => $debug
		,'package'           => $package
		,'version'           => $version
		,'subpackage'        => $subpackage
		)
	);

$output = '';
$output = $GX->getSnippet( $snippet_name, $snippet_cacheable, $scriptProperties );

return( $output );
