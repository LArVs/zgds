<?php
/**
 * esSnippet
 *
 * eSchool snippet process
 *
 * @copyright Copyright (C) 2010, by LArV <larv.develop@gmail.com>
 * @author    LArV <larv.develop@gmail.com>
 *
 * @package eSchool
 * @subpackage snippet
 */

if( empty( $modx ) || !( $modx instanceof modX ) ) { die(); }

$v = 'v.1.0';
$f = MODX_CORE_PATH . 'components/eSchool/' . $v . '/element/snippet/snippet.esInclude.php';

$o = '';
if( file_exists( $f ) )
	{
	$o = require_once( $f );
	}
else
	{
	$modx->setDebug( true );
	$modx->log( modX::LOG_LEVEL_ERROR, "esSchool: Could not load esinclude snippet: '$f'" );
	$output = 'Snippet file not found: "' . esinclude . '"';
	}
return( $o );