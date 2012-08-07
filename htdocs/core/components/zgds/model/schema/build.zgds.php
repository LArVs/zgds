<?php
$mtime= microtime();
$mtime= explode(" ", $mtime);
$mtime= $mtime[1] + $mtime[0];
$tstart= $mtime;

$schema_dir = dirname( __FILE__ );
$model_dir  = dirname( $schema_dir );
$core_dir   = dirname( dirname( dirname( dirname( $model_dir ) ) ) );

require_once( $core_dir   . '/config/config.inc.php' );
include_once( $core_dir   . '/xpdo/xpdo.class.php' );
require_once( $schema_dir . '/build.config.php' );

//Set some valid connection properties here
$xpdo= new xPDO(
    XPDO_DSN,
    XPDO_DB_USER,
    XPDO_DB_PASS,
    XPDO_TABLE_PREFIX,
    array (
        PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,
        PDO::ATTR_PERSISTENT => false,
        PDO::MYSQL_ATTR_USE_BUFFERED_QUERY => true
    )
);
$xpdo->setPackage( 'zgds', dirname(dirname(__FILE__)) ); // *** !
$xpdo->setDebug(true);


$xpdo->setLogLevel( xPDO::LOG_LEVEL_INFO );
$xpdo->setLogTarget( XPDO_CLI_MODE ? 'ECHO' : 'HTML' );

$manager= $xpdo->getManager();
$generator= $manager->getGenerator();

//Use this to create a schema from an existing database
//$xml= $generator->writeSchema(XPDO_CORE_PATH . '../model/schema/modx.mysql.schema.xml', 'modx', 'xPDOObject', 'modx_');

//Use this to generate classes and maps from a schema

// NOTE: by default, only maps are overwritten; delete class files if you want to regenerate classes
$generator->classTemplate= <<<EOD
<?php
/**
 * [+phpdoc-package+]
 * [+phpdoc-subpackage+]
 */
class [+class+] extends [+extends+] {
}
?>
EOD;
$generator->platformTemplate= <<<EOD
<?php
/**
 * [+phpdoc-package+]
 * [+phpdoc-subpackage+]
 */
require_once (strtr(realpath(dirname(dirname(__FILE__))), '\\\\', '/') . '/[+class-lowercase+].class.php');
class [+class+]_[+platform+] extends [+class+] {
}
?>
EOD;
$generator->mapHeader= <<<EOD
<?php
/**
 * [+phpdoc-package+]
 * [+phpdoc-subpackage+]
 */
EOD;

$package= 'zgds'; // *** !

$schema = dirname( __FILE__ ) . '/zgds.mysql.schema.xml'; // *** !
$target = dirname( dirname( __FILE__ ) ) . '/';
$generator->parseSchema($schema,$target);

/*
$package= 'modx';
$generator->parseSchema(XPDO_CORE_PATH . '../model/schema/modx.mysql.schema.xml', XPDO_CORE_PATH . '../model/');
$package= 'modx.transport';
$generator->parseSchema(XPDO_CORE_PATH . '../model/schema/modx.transport.mysql.schema.xml', XPDO_CORE_PATH . '../model/');
$package= 'modx.registry.db';
$generator->parseSchema(XPDO_CORE_PATH . '../model/schema/modx.registry.db.mysql.schema.xml', XPDO_CORE_PATH . '../model/');
*/

$mtime= microtime();
$mtime= explode(" ", $mtime);
$mtime= $mtime[1] + $mtime[0];
$tend= $mtime;
$totalTime= ($tend - $tstart);
$totalTime= sprintf("%2.4f s", $totalTime);

echo "\nExecution time: {$totalTime}\n";

exit ();

?>