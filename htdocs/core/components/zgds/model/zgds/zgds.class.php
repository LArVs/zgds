<?php
/**
 * eSchool main class
 *
 * @copyright Copyright (C) 2010, by LArV <larv.develop@gmail.com>
 * @author    LAtV <larv.develop@gmail.com>
 *
 * @package eSchool
 * @subpackage class
 */
class eSchool
	{
	/**
	 * class instance
	 *
	 * @access private
	 * @var    object    static reference
	 */
	private static $_instance;
	/**
	 * @access protected
	 * @var boolean     A debug class.
	 */
	protected $_debug    = false;
	/**
	 * @access protected
	 * @var string      A package name.
	 */
	protected $_package    = 'eSchool';
	/**
	 * @access protected
	 * @var string      A subpackage name.
	 */
	protected $_subpackage = '';
	/**
	 * @access protected
	 * @var array       package version
	 */
	protected $_version = 'v.1.0';
	/**
	 * @access protected
	 * @var array       A collection of preprocessed chunk values.
	 */
	protected $_chunk = array();
	/**
	 * @access protected
	 * @var array       A collection of preprocessed snippet values.
	 */
	protected $_snippet = array();

	/**
	 * @access public
	 * @var modX A reference to the modX object.
	 */
	public $modx = null;
	/**
	 * @access public
	 * @var array A collection of properties to adjust Quip behaviour.
	 */
	public $config = array();

	/**
	 * Create/get instance of class
	 *
	 * @access public static
	 * @param  void
	 * @return reference
	 */
	public static function Instance( modX &$modx = null, array $config = array() )
		{
		if( !isset( self::$_instance ) )
			{
			$c = __CLASS__;
			self::$_instance = new $c( $modx, $config );
			}
		return( self::$_instance );
		}

	/**
	 * The eSchool Constructor.
	 *
	 * This method is used to create a new eSchool object.
	 *
	 * @param  modX  &$modx    A reference to the modX object.
	 * @param  array $config   A collection of properties.
	 * @return eSchool         A unique eSchool instance.
	 */
	function __construct( modX &$modx = null, array $config = array() )
		{
		$modx = ( empty( $modx ) ? $GLOBALS[ 'modx' ]: $modx );
		$this->modx     = &$modx;
		$this->_package     = ( empty( $config[ 'package' ] ) ?
				$this->_package
				:
				$config[ 'package' ]
				);
		$this->_subpackage  = ( empty( $config[ 'subpackage' ] ) ?
				$this->_subpackage
				:
				$config[ 'subpackage' ]
				);

		define( 'esMODX_PATH_CORE', $this->modx->getOption( 'core_path', null, MODX_CORE_PATH ) );

		$es_ns = $this->modx->getObject( 'modNamespace', 'eSchool' );

		$this->_version  = ( empty( $config[ 'version' ] ) ?
				( empty( $this->_version ) ? basename( $es_ns->get( 'path' ) ): $this->_version )
				:
				$config[ 'version' ]
				);

		define( 'esESCHOOL_PATH_CORE',
				$this->modx->getOption(
					'eschool.core_path',
					null,
					file_exists( $es_ns->get( 'path' ) ) ?
						$es_ns->get( 'path' )
						:
						esMODX_PATH_CORE . 'components/' . $this->_package . '/' . $this->_version . '/'
					)
			);

		$this->_version  = ( empty( $config[ 'version' ] ) ?
				$this->_version
				:
				$config[ 'version' ]
				);

		define( 'esESCHOOL_PATH_ASSETS',
				$this->modx->getOption(
					'eschool.assets_path',
					null,
					MODX_ASSETS_PATH . 'components/' . $this->_package . '/' . $this->_version . '/'
					)
			);
		define( 'esESCHOOL_URL_ASSETS',
				$this->modx->getOption(
					'eschool.assets_url',
					null,
					MODX_ASSETS_URL . 'components/' . $this->_package . '/' . $this->_version . '/'
					)
			);

		// eSchool core path
		define( 'esESCHOOL_PATH_CONTROLLER', esESCHOOL_PATH_CORE     . 'controller/' );
		define( 'esESCHOOL_PATH_PROCESSOR',  esESCHOOL_PATH_CORE     . 'processor/' );
		define( 'esESCHOOL_PATH_MODEL',      esESCHOOL_PATH_CORE     . 'model/' );
		define( 'esESCHOOL_PATH_ELEMENT',    esESCHOOL_PATH_CORE     . 'element/' );
		define( 'esESCHOOL_PATH_CHUNK',      esESCHOOL_PATH_ELEMENT  . 'chunk/' );
		define( 'esESCHOOL_PATH_SNIPPET',    esESCHOOL_PATH_ELEMENT  . 'snippet/' );
		// eSchool assets path
		define( 'esESCHOOL_PATH_CONNECTOR',  esESCHOOL_PATH_ASSETS   . 'connector/' );
		define( 'esESCHOOL_PATH_CSS',        esESCHOOL_PATH_ASSETS   . 'css/' );
		define( 'esESCHOOL_PATH_JS',         esESCHOOL_PATH_ASSETS   . 'js/' );
		// eSchool assets url
		define( 'esESCHOOL_URL_CONNECTOR',   esESCHOOL_URL_ASSETS    . 'connector/' );
		define( 'esESCHOOL_URL_CSS',         esESCHOOL_URL_ASSETS    . 'css/' );
		define( 'esESCHOOL_URL_JS',          esESCHOOL_URL_ASSETS    . 'js/' );

		$this->config = array_merge(
			array(
				// eSchool misc
				'package'          => $this->_package,
				'subpackage'       => $this->_subpackage,
				'version'          => $this->_version,
				'auth'             => $this->modx->site_id,
				'path'    => array(
				                  // eSchool core path
				                  'modx_path_core'   => esMODX_PATH_CORE,
				                  'core'        => esESCHOOL_PATH_CORE,
				                  'controller'  => esESCHOOL_PATH_CONTROLLER,
				                  'processor'   => esESCHOOL_PATH_PROCESSOR,
				                  'model'       => esESCHOOL_PATH_MODEL,
				                  'element'     => esESCHOOL_PATH_ELEMENT,
				                  'chunk'       => esESCHOOL_PATH_CHUNK,
				                  'snippet'     => esESCHOOL_PATH_SNIPPET,
				                  // eSchool assets path
				                  'assets'      => esESCHOOL_PATH_ASSETS,
				                  'connector'   => esESCHOOL_PATH_CONNECTOR,
				                  'css'         => esESCHOOL_PATH_CSS,
				                  'js'          => esESCHOOL_PATH_JS,
				                  ),
				'url'     => array(
				                  // eSchool assets url
				                  'assets'       => esESCHOOL_URL_ASSETS,
				                  'connector'    => esESCHOOL_URL_CONNECTOR,
				                  'css'          => esESCHOOL_URL_CSS,
				                  'js'           => esESCHOOL_URL_JS,
				                  ),

	//			'tplquipAddComment' => '',
	//			'tplquipComment' => '',
	//			'tplquipCommentOptions' => '',
	//			'tplquipComments' => '',
	//			'tplquipLoginToComment' => '',
	//			'tplquipReport' => '',
				)
			,$config
			);

		// degug ?
//		$debug = ( $this->modx->getOption( 'debug', null, false ) === 'true' ? true: false );
		$debug = ( $this->config[ 'debug' ] === true ? true: false );
		$this->modx->setDebug( $debug );

		// load lexicon
		if( empty( $this->modx->lexicon ) || !( $this->modx->lexicon instanceof modLexicon ) )
			{
			$this->modx->getService( 'lexicon', 'modLexicon' );
			}
		$this->modx->lexicon->load( $this->_package );

		// add package
		$this->modx->addPackage( $this->_package, esESCHOOL_PATH_MODEL );
		}

	/**
	 * Initializes eSchool based on a specific context.
	 *
	 * @access public
	 * @param  string $ctx   The context to initialize in.
	 * @return string        The processed content.
	 */
	public function initialize( $ctx = 'mgr' )
		{
		$output = '';
		switch( $ctx )
			{
			case 'mgr':
//				if (!$this->modx->loadClass('quip.request.QuipControllerRequest',$this->config['modelPath'],true,true)) {
//					return 'Could not load controller request handler.';
//				}
//				$this->request = new QuipControllerRequest($this);
//				$output = $this->request->handleRequest();
				break;
			}
		return $output;
		}

	/**
	 * Gets a Snippet and caches it; also falls back to file-based snippet
	 * for easier debugging.
	 *
	 * Will always use the file-based snippet if $debug is set to true.
	 *
	 * @access public
	 * @param  string  $name         The name of the Snippet.
	 * @param  array   $properties   The properties for the Snippet.
	 * @return string                The processed content of the Snippet.
	 */
	public function getSnippet( $name, $cacheable = true, $properties = array() )
		{
		$snippet = null;
		$prefix = 'es';
			$name = $prefix . $name;
		// if not loaded snippet
		if( !isset( $this->_snippet[ $name ] ) )
			{
			// if debug then use file-based snippet
			if( !$this->_debug )
				{
				$snippet = $this->modx->getObject( 'modSnippet', array( 'name' => $name ) );
				}
			if( empty( $snippet ) )
				{
				$snippet = &$this->_loadSnippet( $name, $cacheable );
				if( $snippet === false )
					{
					$this->modx->log( modX::LOG_LEVEL_ERROR, "esSchool: Could not load snippet: '$name'!" );
					return( $snippet );
					}
				}
			$this->_snippet[ $name ] = $snippet->getContent();
			}
		// if loaded snippet
		else
			{
			$o = $this->_snippet[ $name ];
			$snippet = $this->modx->newObject( 'modSnippet' );
			$snippet->setContent( $o );
			}
		$snippet->setCacheable( $cacheable );
		return( $snippet->process( $properties ) );
		}
	/**
	 * Returns a modSnippet object from a file.
	 *
	 * @access private
	 * @param string $name          The name of the Snippet. Will parse to snippet.name.php
	 * @param string $prefix        The prefix for snippet with
	 * @return modSnippet/boolean   Returns the modSnippet object if found, else false.
	 */
	private function &_loadSnippet( $name, $cacheable = true, $prefix = 'snippet.' )
		{
		$snippet = false;
//		$prefix = $this->modx->getOption( 'prefix', $this->config, $prefix );
//		$f = $this->config[ 'path' ][ 'snippet' ] . $prefix . strtolower( $name ) . '.php';
		$f = $this->config[ 'path' ][ 'snippet' ] . $prefix . $name . '.php';
		if( file_exists( $f ) )
			{
			$o = file_get_contents( $f );
			$id = hexdec( crc32( $name ) );
			$snippet = $this->modx->newObject( 'modSnippet' );
			$snippet->xpdo->cacheManager = $snippet->xpdo->getCacheManager('cache.xPDOMemCache');
			$snippet->set( 'name', $name );
			$snippet->set( 'id', $id );
			// clean cache
			if( !$cacheable )
				{
				$cache_key = $snippet->getScriptCacheKey();
				$snippet->xpdo->cacheManager->delete( $cache_key, array( 'cache_ext' => '.cache.php' ) );
				$snippet->xpdo->cacheManager->delete( $cache_key, array( 'cache_ext' => '.include.cache.php' ) );
				}
			$snippet->setCacheable( $cacheable );
			$snippet->setContent( $o );
			}
		else
			{
			$this->modx->log( modX::LOG_LEVEL_ERROR, "esSchool: Could not load snippet: '$name' (file: $f)!" );
			}
		return( $snippet );
		}
	/**
	 * Gets a Chunk and caches it; also falls back to file-based templates
	 * for easier debugging.
	 *
	 * Will always use the file-based chunk if $debug is set to true.
	 *
	 * @access public
	 * @param string $name The name of the Chunk
	 * @param array $properties The properties for the Chunk
	 * @return string The processed content of the Chunk
	 */
	public function getChunk( $name, $properties = array() )
		{
		$chunk = null;
		if( !isset( $this->_chunk[ $name ] ) )
			{
			if( !$this->modx->getOption( 'eschool.debug', null, false ) )
				{
				$chunk = $this->modx->getObject( 'modChunk', array( 'name' => $name ) );
				}
			if( empty($chunk) )
				{
				$chunk = $this->_loadChunk( $name );
				if( $chunk == $name ) return $name;
				}
			$this->chunk[ $name ] = $chunk->getContent();
			}
		else
			{
			$o = $this->chunk[ $name ];
			$chunk = $this->modx->newObject( 'modChunk' );
			$chunk->setContent( $o );
			}
		$chunk->setCacheable( false );
		return( $chunk->process( $properties ) );
		}
	/**
	 * Returns a modChunk object from a template file.
	 *
	 * @access private
	 * @param string $name The name of the Chunk. Will parse to name.chunk.tpl
	 * @param string $suffix The suffix to postfix the chunk with
	 * @return modChunk/boolean Returns the modChunk object if found, otherwise
	 * false.
	 */
	private function _loadChunk( $name, $suffix = '.chunk.tpl' )
		{
		$chunk = $name;
		$suffix = $this->modx->getOption( 'suffix', $this->config, $suffix );
		$f = $this->config[ 'path' ][ 'chunk' ] . strtolower( $name ) . $suffix;
		if( file_exists( $f ) )
			{
			$o = file_get_contents( $f );
			$chunk = $this->modx->newObject( 'modChunk' );
			$chunk->set( 'name', $name );
			$chunk->setContent( $o );
			}
		return $chunk;
		}
	/**
	 * Register eSchool CSS to be injected inside the HEAD tag of a resource.
	 *
	 * @param string $src    The CSS to be injected before the closing HEAD tag in an HTML response.
	 */
	public function regClientCSS( $src )
		{
		$this->modx->regClientCSS( $this->config[ 'url' ][ 'css' ] . $src );
		}
	/**
	 * Register eSchool JavaScript to be injected inside the HEAD tag of a resource.
	 *
	 * @param string  $src          The JavaScript to be injected before the closing HEAD tag of an HTML response.
	 * @param boolean $plaintext    Optional param to treat the $src as plaintext rather than assuming it is JavaScript.
	 */
	public function regClientStartupScriptConnector( $src, $plaintext = false )
		{
		$this->modx->regClientStartupScript( $this->config[ 'url' ][ 'connector' ] . $src, $plaintext );
		}
	/**
	 * Register eSchool JavaScript to be injected inside the HEAD tag of a resource.
	 *
	 * @param string  $src          The JavaScript to be injected before the closing HEAD tag of an HTML response.
	 * @param boolean $plaintext    Optional param to treat the $src as plaintext rather than assuming it is JavaScript.
	 */
	public function regClientStartupScript( $src, $plaintext = false )
		{
		$this->modx->regClientStartupScript( $this->config[ 'url' ][ 'js' ] . $src, $plaintext );
		}
	/**
	 * Register eSchool JavaScript to be injected before the closing BODY tag.
	 *
	 * @param string  $src          The JavaScript to be injected before the closing BODY tag in an HTML response.
	 * @param boolean $plaintext    Optional param to treat the $src as plaintext rather than assuming it is JavaScript.
	 */
	public function regClientScript($src, $plaintext= false)
		{
		$this->modx->regClientScript( $this->config[ 'url' ][ 'js' ] . $src, $plaintext );
		}
	/**
	 * Register eSchool HTML to be injected before the closing HEAD tag.
	 *
	 * @param string $html          The HTML to be injected.
	 */
	public function regClientStartupHTMLBlock( $html )
		{
		return( $this->modx->regClientStartupScript( $html, true ) );
		}
	/**
	 * Register HTML to be injected before the closing BODY tag.
	 *
	 * @param string $html The HTML to be injected.
	 */
	public function regClientHTMLBlock( $html )
		{
		return( $this->modx->regClientScript( $html, true ) );
		}
	}

/**
 * eSchool utility class
 *
 * @copyright Copyright (C) 2010, by LArV <larv.develop@gmail.com>
 * @author    LAtV <larv.develop@gmail.com>
 *
 * @package eSchool
 * @subpackage util
 */
class esUtil
	{
	/**
	 * Strip whitespace from the beginning and end of string, array...
	 *
	 * @param mix $a          Mixed input string, array - that will be trimmed.
	 * @param mix $charlist   Simply list all characters that you want to be stripped.
	 */
	static protected function _trim( &$v, $k, $charlist = '' )
		{
		return( esUtil::trim( $v, $charlist ) );
		}
	/**
	 * Strip whitespace from the beginning and end of string, array...
	 *
	 * @param mix $a          Mixed input string, array - that will be trimmed.
	 * @param mix $charlist   Simply list all characters that you want to be stripped.
	 */
	static public function trim( &$a, $charlist = '' )
		{
		$charlist = ( empty( $charlist ) ? " \t\n\r\0\0x0b": $charlist );
		if( is_array( $a ) )
			{
			array_walk_recursive( $a, 'esUtil::_trim', $charlist );
			return( true );
			}
		elseif( is_string( $a ) )
			{
			$a = trim( $a, $charlist );
			return( true );
			}
		return( false );
		}
	}
