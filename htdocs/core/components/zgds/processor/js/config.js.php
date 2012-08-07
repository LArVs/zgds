<?php
/**
 * JS config
 *
 * Copyright 2010 by LArV <larv.develop@gmail.com>
 * @author    LAtV <larv.develop@gmail.com>
 *
 * @package    eSchool
 * @subpackage processor.js
 */

// check eSchool class
if( !class_exists( 'eSchool' ) ) { die(); }
$eSchool = eSchool::Instance();
if( empty( $eSchool ) || !( $eSchool instanceof eSchool ) ) { die(); }

$tpl = '
Ext.onReady( function()
	{
	Ext.BLANK_IMAGE_URL = "%s";

	Ext.applyIf( eSchool.config,
		{
		 auth: "%s"
		,url: %s
		});
	Ext.apply( eSchool.config,
		{
		connector:
			{
			 url: function( o )
				{
				return( eSchool.config.url.connector + o + "/index.php" );
				}
			,method: "POST"
			,defaultHeaders:
				{
				 "Powered-By" : "MODx"
				,"modAuth"    : eSchool.config.auth
				}
			,baseParams:
				{
				ctx: "%s"
				}
			}
		});
	});

';

$o = sprintf( $tpl
		,$eSchool->config[ 'url' ][ 'js' ] . 'ExtJS-v.3.2.1/resources/images/default/s.gif'
		,$eSchool->modx->site_id
		,$eSchool->modx->toJSON( $eSchool->config[ 'url' ] )
		,$eSchool->modx->context->get( 'key' )
		);

header('Content-Type: application/x-javascript');

echo( $o );

exit();