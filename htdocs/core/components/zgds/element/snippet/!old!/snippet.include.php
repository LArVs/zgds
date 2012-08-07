<?php
/**
 * esInclude
 *
 * eSchool include snippet
 *
 * @copyright Copyright (C) 2010, by LArV <larv.develop@gmail.com>
 * @author    LArV <larv.develop@gmail.com>
 *
 * @package eSchool
 * @subpackage include
 */

if( empty( $modx ) || !( $modx instanceof modX ) ) { die(); }

$snippet_name      = $modx->getOption( 'name',      $scriptProperties, '' );
$snippet_cacheable = $modx->getOption( 'cacheable', $scriptProperties, 'true' );
$eSchool_version   = $modx->getOption( 'version',   $scriptProperties, 'v.1.0' );
	$snippet_cacheable = ( $snippet_cacheable === 'true' ? true: false );

$esBASE_PATH = dirname( dirname( dirname( dirname( dirname( __FILE__ ) ) ) ) ) . DIRECTORY_SEPARATOR;

$esPackage    = 'eSchool';
$esSubpackage = 'snippet';

require_once( MODX_CORE_PATH . "components/eSchool/$eSchool_version/model/$esPackage/$esPackage.class.php" );

$eSchool = eSchool::Instance( $modx,
	array(
		 'debug'         => true
		,'package'       => $esPackage
		,'subpackage'    => $esSubpackage
		,'version'       => $snippet_version
		)
	);
$output = '';
$output = $eSchool->getSnippet( $snippet_name, $snippet_cacheable, $scriptProperties );

return( $output );
