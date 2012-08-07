<?php
/**
 * School snippet
 *
 * Copyright 2010 by LArV <larv.develop@gmail.com>
 * @author    LAtV <larv.develop@gmail.com>
 *
 * @package    eSchool
 * @subpackage snippet
 */

// check eSchool class
if( !class_exists( 'eSchool' ) ) { die(); }
$eSchool = eSchool::Instance();
if( empty( $eSchool ) || !( $eSchool instanceof eSchool ) ) { die(); }

// load .css
$eSchool->modx->regClientCSS( $eSchool->config[ 'url' ][ 'js' ] . 'ExtJS-v.3.2.1/resources/css/ext-all-notheme.css' );
$eSchool->modx->regClientCSS( $eSchool->config[ 'url' ][ 'js' ] . 'ExtJS-v.3.2.1/resources/css/eSchoole.css' );
$eSchool->regClientCSS( 'icon.css' );

// load .js
$eSchool->regClientStartupScript( 'ExtJS-v.3.2.1/adapter/ext/ext-base.js' );
//$eSchool->regClientStartupScript( 'ExtJS-v.3.2.1/ext-all.js' );
$eSchool->regClientStartupScript( 'ExtJS-v.3.2.1/ext-all-debug-w-comments.js' );
$eSchool->regClientStartupScript( 'ExtJS-v.3.2.1/src/locale/ext-lang-ru.js' );

$eSchool->regClientStartupScript( 'eSchool.js' );
$eSchool->regClientStartupScriptConnector( 'js/config.js.php?ctx=' . $eSchool->modx->context->get('key') );
$eSchool->regClientStartupScript( 'school.js' );

//$startup_js = '
//<script type="text/javascript">
//Ext.onReady( function()
//	{
//	});
//</script>
//';
//$eSchool->regClientStartupHTMLBlock( $startup_js );

$output = '<div id="eSchool-Layout-div"></div>';

return( $output );