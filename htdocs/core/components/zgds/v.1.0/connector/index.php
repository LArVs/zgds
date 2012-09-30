<?php
/**
 * ConnectorX
 *
 * Connector API core
 *
 * @copyright Copyright (C) 2010-2013
 * @author    LArV <larv.develop@gmail.com>
 *
 * @package     ConnectorX
 * @subpackage  connector
 */

// check user permissions
// require permission!!!
@session_cache_limiter( 'public' );
define( 'MODX_REQP', false );

// load MODx
require_once( $gxCorePath          . 'config.core.php' );
require_once( MODX_CORE_PATH       . 'config/' . MODX_CONFIG_KEY . '.inc.php' );
require_once( MODX_CONNECTORS_PATH . 'index.php' );

// check modX class
if( empty( $modx ) || !( $modx instanceof modX ) ) { die( 'Fail core load!'); }

// security hack
$version = $modx->getVersionData();
if( version_compare( $version[ 'full_version' ],'2.1.1-pl' ) >= 0 ) {
	if( $modx->user->hasSessionContext( $modx->context->get( 'key' ) ) ) {
		$_SERVER[ 'HTTP_MODAUTH' ] = $_SESSION[ "modx.{$modx->context->get('key')}.user.token" ];
	} else {
		$_SESSION[ "modx.{$modx->context->get('key')}.user.token" ] = 0;
		$_SERVER[ 'HTTP_MODAUTH' ] = 0;
	}
} else {
	$_SERVER[ 'HTTP_MODAUTH' ] = $modx->site_id;
}
$_REQUEST['HTTP_MODAUTH'] = $_SERVER['HTTP_MODAUTH'];

// prepare GX
$debug             = $modx->getOption( 'debug',         $scriptProperties, 'false', true );

$package           = $modx->getOption( 'package',       $scriptProperties, 'zgds', true );
$version           = $modx->getOption( 'version',       $scriptProperties, 'v.1.0', true );
$subpackage        = $modx->getOption( 'subpackage',    $scriptProperties, 'connector', true );
$namespace         = $modx->getOption( 'namespace',     $scriptProperties, $package . '-' . $version, true );

$snippet_name      = $modx->getOption( 'name',          $scriptProperties, '', true );
$snippet_cacheable = $modx->getOption( 'cacheable',     $scriptProperties, 'true', true );

	$debug             = ( $debug === 'true'             ? true: false );
	$snippet_cacheable = ( $snippet_cacheable === 'true' && !$debug ? true: false );

$IncludeX_package    = 'general';
$IncludeX_subpackage = 'snippet';

require_once( MODX_CORE_PATH . "components/$package/$version/model/$IncludeX_package.class.php" );

$GX = GeneralX::Instance( $modx, array(
	'debug'      => $debug,
	'package'    => $package,
	'version'    => $version,
	'subpackage' => $subpackage,
	'namespace'  => $namespace,
));

// check GeneralX class
if( empty( $GX ) || !( $GX instanceof GeneralX ) ) { die( 'Fail general core load!'); }

