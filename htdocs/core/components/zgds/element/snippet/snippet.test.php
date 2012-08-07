<?php
$a           = $modx->getOption( 'a',       $scriptProperties, 'test a', true );
/*
echo "<pre>";
	var_dump(
		$scriptProperties
		);
echo "<pre>";
//  */

return( $modx->lexicon('zgds') . ' - CCC: '. $a );
