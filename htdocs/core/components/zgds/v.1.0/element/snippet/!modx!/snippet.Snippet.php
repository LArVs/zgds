<?php
/**
 * SnippetX
 *
 * Snippet process
 *
 * @copyright Copyright (C) 2012, by LArV <larv.develop@gmail.com>
 * @author    LArV <larv.develop@gmail.com>
 *
 * @package SnippetX
 * @subpackage include
 */

if( empty( $modx ) || !( $modx instanceof modX ) ) { die(); }

$package = 'zgds';
$v = 'v.1.0';
$f = MODX_CORE_PATH . 'components/'. $package . '/' . $v . '/element/snippet/snippet.include.php';

$o = '';
if( file_exists( $f ) )
	{
	$o = require_once( $f );
	}
else
	{
//	$modx->setDebug( false );
	$modx->log( modX::LOG_LEVEL_ERROR, "SnippetX: Could not load include snippet file: '$f'" );
	$o = 'SnippetX: Fatal error, include snippet file not found.';
	}
return( $o );