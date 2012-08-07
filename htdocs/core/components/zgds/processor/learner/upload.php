<?php
/**
 * Upload Learner list
 *
 * Copyright 2010 by LArV <larv.develop@gmail.com>
 *
 * @package    eschool
 * @subpackage processor
 */

// check eSchool class
if( !class_exists( 'eSchool' ) ) { die(); }
$eSchool = eSchool::Instance();
if( empty( $eSchool ) || !( $eSchool instanceof eSchool ) ) { die(); }

// is object?
if( empty( $scriptProperties[ 'file-upload' ] )
	|| $scriptProperties[ 'file-upload' ][ 'error' ] !== UPLOAD_ERR_OK )
	{
	return( $eSchool->modx->error->failure( 'Ошибка при загрузке файла.' ) );
	}

// get file content
$file_name = $scriptProperties[ 'file-upload' ][ 'tmp_name' ];
$file_content = file( $file_name, FILE_TEXT );
if( empty( $file_content ) )
	{
	return( $eSchool->modx->error->failure( 'Файл пустой.' ) );
	}
// cut UTF8 BOM
if( strpos( $file_content[0], "\xef\xbb\xbf" ) === 0 )
	{
	$file_content[0] = substr( $file_content[0], 3 );
	}

$entity = array();
foreach( $file_content as $v )
	{
	$entity[] = explode( ";", $v );
	}
// trim string
esUtil::trim( $entity );

$result = true;

// class id
$class_id = 1;

//$first_name       = $eSchool->modx->getCollection( 'esFName' );
//$last_name        = $eSchool->modx->getCollection( 'esLName' );
//$patronymic_name  = $eSchool->modx->getCollection( 'esPName' );
global $debug_watch_var;
$debug_watch_var = array();
$i = 0;
foreach( $entity as $k => $v )
	{
	// *** add parent
	// first, last, patronymic name
	$fn_id = addFName( $v[3] );
	$ln_id = addLName( $v[4] );
	$pn_id = addPName( $v[5] );
	if( !( $fn_id & $ln_id & $pn_id ) ) { return( $eSchool->modx->error->success( 'Ошибка при работе с БД. (1.1)' ) ); }
$debug_watch_var[] = sprintf( "add f,l,p: %s(%d); %s(%d); %s(%d)", $v[3], $fn_id, $v[4], $ln_id, $v[5], $pn_id );
	// user profile
	$user_profile = array(
		 'fullname'    => $v[4] . ' ' . $v[3] . ' ' . $v[5]
		,'email'       => $v[7]
		,'mobilephone' => $v[8]
		);
	$user_id = addUser( $user_profile );
	// check for error
	if( !$user_id ) { return( $eSchool->modx->error->success( 'Ошибка при работе с БД. (1.2)' ) ); }

	$field = array(
		 'fname_id'     =>  $fn_id
		,'lname_id'     =>  $ln_id
		,'pname_id'     =>  $pn_id

		,'user_id'      =>  $user_id

		,'description'  =>  $v[6]
		);
	$parent_id = addParent( $field );
	// check for error
	if( !$parent_id ) { return( $eSchool->modx->error->success( 'Ошибка при работе с БД. (1.3)' ) ); }

	// *** add learner
	// first, last, patronymic name
	$fn_id = addFName( $v[0] );
	$ln_id = addLName( $v[1] );
	$pn_id = addPName( $v[2] );
	// user profile
	$user_profile = array(
		 'fullname'    => $v[1] . ' ' . $v[0] . ' ' . $v[2]
		);
	$user_id = addUser( $user_profile );
	// check for error
	if( !$user_id ) { return( $eSchool->modx->error->success( 'Ошибка при работе с БД. (2.1)' ) ); }

	$field = array(
		 'fname_id'  =>  $fn_id
		,'lname_id'  =>  $ln_id
		,'pname_id'  =>  $pn_id

		,'user_id'   =>  $user_id
		,'class_id'  =>  $class_id
		,'parent_id' =>  $parent_id
		);
	$learner_id = addLearner( $field );
	// check for error
	if( !$learner_id ) { return( $eSchool->modx->error->success( 'Ошибка при работе с БД. (2.2)' ) ); }

	if( ++$i == 1 ) { break; }
	}

/* <debug>  */
	echo( '<pre>Debug line 37: ' );
		var_dump( $debug_watch_var );
	echo( '</pre><br />' );
return;
/* </debug> */

$o = array(
	'total' => count( $file_content ),
	'data'  => $file_content,
	);
if( $result )
	{
	return( $eSchool->modx->error->success( 'Список учеников загружен.' ) );
	}
else
	{
	return( $eSchool->modx->error->failure( 'Создание не выполнено.' ) );
	}

// *** Add first name
function addFName( $value )
	{
	return( addName( 'esFName', 'fname', $value ) );
	}
// *** Add last name
function addLName( $value )
	{
	return( addName( 'esLName', 'lname', $value ) );
	}
// *** Add patronymic name
function addPName( $value )
	{
	return( addName( 'esPName', 'pname', $value ) );
	}
// *** Add name
function addName( $class_name, $key, $value )
	{
global $debug_watch_var;
	$eSchool = eSchool::Instance();
	// exist?
	$query = $eSchool->modx->newQuery( $class_name );
	$query->where( array( $key => $value ) );
	$id = 0;
	if( ( $obj = $eSchool->modx->getObject( $class_name, $query ) ) === null )
		{
		// add new object
		$new_obj = $eSchool->modx->newObject( $class_name );
		$new_obj->set( $key, $value );
		if( !$new_obj->save() ) { return( false ); }
		$id = $new_obj->get( 'id' );
$debug_watch_var[] = sprintf( "id(%d) new", $id );
		}
	else
		{
		$id = $obj->get( 'id' );
$debug_watch_var[] = sprintf( "id(%d) exist", $id );
		}
	return( $id );
	}

// *** Add user
function addUser( $user_profile )
	{
	$eSchool = eSchool::Instance();
	$user = $eSchool->modx->newObject('modUser');
//	$user->set( 'active', 1 );
//	$user->set( 'password', '' );

	// create user group links
	$ug   = $eSchool->modx->getObject( 'modUserGroup',     array( 'name' => 'esLearner' ) );
	$role = $eSchool->modx->getObject( 'modUserGroupRole', array( 'name' => 'esLearner' ) );
		if( !$ug || !$role ) { return( false ); }
	$ugms = array();
	$ugm = $eSchool->modx->newObject( 'modUserGroupMember' );
		$ugm->set( 'user_group', $ug->get( 'id' ) );
		$ugm->set( 'role',     $role->get( 'id' ) );
			$ugms[] = $ugm;
	$user->addMany( $ugms, 'UserGroupMembers' );
	if( !$user->save() ) { return( false ); }

	// make username
	$user->set( 'username', 'l' . $user->get( 'id' ) );
	if( !$user->save() ) { return( false ); }

	// create user profile
	$user->profile = $eSchool->modx->newObject( 'modUserProfile' );
	$user->profile->fromArray( $user_profile );
	$user->profile->set( 'internalKey', $user->get( 'id' ) );
	if( !$user->profile->save() ) { return( false ); }

	return( $user->get( 'id' ) );
	}

// *** Add parent
function addParent( $field )
	{
	$eSchool = eSchool::Instance();

	$new_obj = $eSchool->modx->newObject( 'esParent' );
	$new_obj->fromArray( $field );

	if( !$new_obj->save() ) { return( false ); }

	return( $new_obj->get( 'id' ) );
	}

// *** Add parent
function addLearner( $field )
	{
	$eSchool = eSchool::Instance();

	$new_obj = $eSchool->modx->newObject( 'esLearner' );
	$new_obj->fromArray( $field );

	if( !$new_obj->save() ) { return( false ); }

	return( $new_obj->get( 'id' ) );
	}

