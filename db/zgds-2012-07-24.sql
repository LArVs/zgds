# SQL Manager 2007 for MySQL 4.5.0.4
# ---------------------------------------
# Host     : 127.0.0.1
# Port     : 3306
# Database : zgds


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

DROP DATABASE IF EXISTS `zgds`;

CREATE DATABASE `zgds`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `zgds`;

#
# Structure for the `modx_access_actiondom` table : 
#

DROP TABLE IF EXISTS `modx_access_actiondom`;

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_actions` table : 
#

DROP TABLE IF EXISTS `modx_access_actions`;

CREATE TABLE `modx_access_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_category` table : 
#

DROP TABLE IF EXISTS `modx_access_category`;

CREATE TABLE `modx_access_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_context` table : 
#

DROP TABLE IF EXISTS `modx_access_context`;

CREATE TABLE `modx_access_context` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_elements` table : 
#

DROP TABLE IF EXISTS `modx_access_elements`;

CREATE TABLE `modx_access_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_media_source` table : 
#

DROP TABLE IF EXISTS `modx_access_media_source`;

CREATE TABLE `modx_access_media_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_menus` table : 
#

DROP TABLE IF EXISTS `modx_access_menus`;

CREATE TABLE `modx_access_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_permissions` table : 
#

DROP TABLE IF EXISTS `modx_access_permissions`;

CREATE TABLE `modx_access_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `template` (`template`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_policies` table : 
#

DROP TABLE IF EXISTS `modx_access_policies`;

CREATE TABLE `modx_access_policies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `class` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `class` (`class`),
  KEY `template` (`template`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_policy_template_groups` table : 
#

DROP TABLE IF EXISTS `modx_access_policy_template_groups`;

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_policy_templates` table : 
#

DROP TABLE IF EXISTS `modx_access_policy_templates`;

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_group` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_resource_groups` table : 
#

DROP TABLE IF EXISTS `modx_access_resource_groups`;

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_resources` table : 
#

DROP TABLE IF EXISTS `modx_access_resources`;

CREATE TABLE `modx_access_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_access_templatevars` table : 
#

DROP TABLE IF EXISTS `modx_access_templatevars`;

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_actiondom` table : 
#

DROP TABLE IF EXISTS `modx_actiondom`;

CREATE TABLE `modx_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `set` (`set`),
  KEY `action` (`action`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `for_parent` (`for_parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_actions` table : 
#

DROP TABLE IF EXISTS `modx_actions`;

CREATE TABLE `modx_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `controller` varchar(255) NOT NULL,
  `haslayout` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `parent` (`parent`),
  KEY `controller` (`controller`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_actions_fields` table : 
#

DROP TABLE IF EXISTS `modx_actions_fields`;

CREATE TABLE `modx_actions_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(255) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `action` (`action`),
  KEY `type` (`type`),
  KEY `tab` (`tab`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_active_users` table : 
#

DROP TABLE IF EXISTS `modx_active_users`;

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_categories` table : 
#

DROP TABLE IF EXISTS `modx_categories`;

CREATE TABLE `modx_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_categories_closure` table : 
#

DROP TABLE IF EXISTS `modx_categories_closure`;

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) unsigned NOT NULL DEFAULT '0',
  `descendant` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ancestor`,`descendant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_class_map` table : 
#

DROP TABLE IF EXISTS `modx_class_map`;

CREATE TABLE `modx_class_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(255) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:resource',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`),
  KEY `parent_class` (`parent_class`),
  KEY `name_field` (`name_field`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_content_type` table : 
#

DROP TABLE IF EXISTS `modx_content_type`;

CREATE TABLE `modx_content_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_context` table : 
#

DROP TABLE IF EXISTS `modx_context`;

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_context_resource` table : 
#

DROP TABLE IF EXISTS `modx_context_resource`;

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(255) NOT NULL,
  `resource` int(11) unsigned NOT NULL,
  PRIMARY KEY (`context_key`,`resource`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_context_setting` table : 
#

DROP TABLE IF EXISTS `modx_context_setting`;

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`context_key`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_dashboard` table : 
#

DROP TABLE IF EXISTS `modx_dashboard`;

CREATE TABLE `modx_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `hide_trees` (`hide_trees`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_dashboard_widget` table : 
#

DROP TABLE IF EXISTS `modx_dashboard_widget`;

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(255) NOT NULL DEFAULT '',
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) NOT NULL DEFAULT 'half',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `namespace` (`namespace`),
  KEY `lexicon` (`lexicon`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_dashboard_widget_placement` table : 
#

DROP TABLE IF EXISTS `modx_dashboard_widget_placement`;

CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) unsigned NOT NULL DEFAULT '0',
  `widget` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dashboard`,`widget`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_document_groups` table : 
#

DROP TABLE IF EXISTS `modx_document_groups`;

CREATE TABLE `modx_document_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_documentgroup_names` table : 
#

DROP TABLE IF EXISTS `modx_documentgroup_names`;

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_element_property_sets` table : 
#

DROP TABLE IF EXISTS `modx_element_property_sets`;

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) unsigned NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`element`,`element_class`,`property_set`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_fc_profiles` table : 
#

DROP TABLE IF EXISTS `modx_fc_profiles`;

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_fc_profiles_usergroups` table : 
#

DROP TABLE IF EXISTS `modx_fc_profiles_usergroups`;

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usergroup`,`profile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_fc_sets` table : 
#

DROP TABLE IF EXISTS `modx_fc_sets`;

CREATE TABLE `modx_fc_sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `profile` (`profile`),
  KEY `action` (`action`),
  KEY `active` (`active`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_lexicon_entries` table : 
#

DROP TABLE IF EXISTS `modx_lexicon_entries`;

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(255) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `topic` (`topic`),
  KEY `namespace` (`namespace`),
  KEY `language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_manager_log` table : 
#

DROP TABLE IF EXISTS `modx_manager_log`;

CREATE TABLE `modx_manager_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT '0000-00-00 00:00:00',
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_media_sources` table : 
#

DROP TABLE IF EXISTS `modx_media_sources`;

CREATE TABLE `modx_media_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_key` (`class_key`),
  KEY `is_stream` (`is_stream`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_media_sources_contexts` table : 
#

DROP TABLE IF EXISTS `modx_media_sources_contexts`;

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_media_sources_elements` table : 
#

DROP TABLE IF EXISTS `modx_media_sources_elements`;

CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) unsigned NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`object`,`object_class`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_member_groups` table : 
#

DROP TABLE IF EXISTS `modx_member_groups`;

CREATE TABLE `modx_member_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group` int(10) unsigned NOT NULL DEFAULT '0',
  `member` int(10) unsigned NOT NULL DEFAULT '0',
  `role` int(10) unsigned NOT NULL DEFAULT '1',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_membergroup_names` table : 
#

DROP TABLE IF EXISTS `modx_membergroup_names`;

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `dashboard` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`),
  KEY `dashboard` (`dashboard`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_menus` table : 
#

DROP TABLE IF EXISTS `modx_menus`;

CREATE TABLE `modx_menus` (
  `text` varchar(255) NOT NULL DEFAULT '',
  `parent` varchar(255) NOT NULL DEFAULT '',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(11) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`text`),
  KEY `parent` (`parent`),
  KEY `action` (`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_namespaces` table : 
#

DROP TABLE IF EXISTS `modx_namespaces`;

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_property_set` table : 
#

DROP TABLE IF EXISTS `modx_property_set`;

CREATE TABLE `modx_property_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_register_messages` table : 
#

DROP TABLE IF EXISTS `modx_register_messages`;

CREATE TABLE `modx_register_messages` (
  `topic` int(10) unsigned NOT NULL,
  `id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) unsigned NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic`,`id`),
  KEY `created` (`created`),
  KEY `valid` (`valid`),
  KEY `accessed` (`accessed`),
  KEY `accesses` (`accesses`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_register_queues` table : 
#

DROP TABLE IF EXISTS `modx_register_queues`;

CREATE TABLE `modx_register_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_register_topics` table : 
#

DROP TABLE IF EXISTS `modx_register_topics`;

CREATE TABLE `modx_register_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  KEY `queue` (`queue`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_session` table : 
#

DROP TABLE IF EXISTS `modx_session`;

CREATE TABLE `modx_session` (
  `id` varchar(40) NOT NULL DEFAULT '',
  `access` int(20) unsigned DEFAULT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_site_content` table : 
#

DROP TABLE IF EXISTS `modx_site_content`;

CREATE TABLE `modx_site_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `donthit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) unsigned NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `pub_date` (`pub_date`),
  KEY `unpub_date` (`unpub_date`),
  KEY `parent` (`parent`),
  KEY `isfolder` (`isfolder`),
  KEY `template` (`template`),
  KEY `menuindex` (`menuindex`),
  KEY `searchable` (`searchable`),
  KEY `cacheable` (`cacheable`),
  KEY `hidemenu` (`hidemenu`),
  KEY `class_key` (`class_key`),
  KEY `context_key` (`context_key`),
  KEY `uri` (`uri`(333)),
  KEY `uri_override` (`uri_override`),
  KEY `hide_children_in_tree` (`hide_children_in_tree`),
  KEY `show_in_tree` (`show_in_tree`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_site_htmlsnippets` table : 
#

DROP TABLE IF EXISTS `modx_site_htmlsnippets`;

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_site_plugin_events` table : 
#

DROP TABLE IF EXISTS `modx_site_plugin_events`;

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(255) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_site_plugins` table : 
#

DROP TABLE IF EXISTS `modx_site_plugins`;

CREATE TABLE `modx_site_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`),
  KEY `static` (`static`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_site_snippets` table : 
#

DROP TABLE IF EXISTS `modx_site_snippets`;

CREATE TABLE `modx_site_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`),
  KEY `static` (`static`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_site_templates` table : 
#

DROP TABLE IF EXISTS `modx_site_templates`;

CREATE TABLE `modx_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_site_tmplvar_access` table : 
#

DROP TABLE IF EXISTS `modx_site_tmplvar_access`;

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_site_tmplvar_contentvalues` table : 
#

DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_site_tmplvar_templates` table : 
#

DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_site_tmplvars` table : 
#

DROP TABLE IF EXISTS `modx_site_tmplvars`;

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`),
  KEY `static` (`static`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_system_eventnames` table : 
#

DROP TABLE IF EXISTS `modx_system_eventnames`;

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_system_settings` table : 
#

DROP TABLE IF EXISTS `modx_system_settings`;

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_transport_packages` table : 
#

DROP TABLE IF EXISTS `modx_transport_packages`;

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `workspace` int(10) unsigned NOT NULL DEFAULT '0',
  `provider` int(10) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(255) NOT NULL,
  `metadata` text,
  `version_major` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `version_minor` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `version_patch` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`signature`),
  KEY `workspace` (`workspace`),
  KEY `provider` (`provider`),
  KEY `disabled` (`disabled`),
  KEY `package_name` (`package_name`),
  KEY `version_major` (`version_major`),
  KEY `version_minor` (`version_minor`),
  KEY `version_patch` (`version_patch`),
  KEY `release` (`release`),
  KEY `release_index` (`release_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_transport_providers` table : 
#

DROP TABLE IF EXISTS `modx_transport_providers`;

CREATE TABLE `modx_transport_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(255) NOT NULL DEFAULT '',
  `api_key` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `api_key` (`api_key`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_user_attributes` table : 
#

DROP TABLE IF EXISTS `modx_user_attributes`;

CREATE TABLE `modx_user_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '',
  `extended` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `internalKey` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_user_group_roles` table : 
#

DROP TABLE IF EXISTS `modx_user_group_roles`;

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `authority` (`authority`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_user_messages` table : 
#

DROP TABLE IF EXISTS `modx_user_messages`;

CREATE TABLE `modx_user_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_user_settings` table : 
#

DROP TABLE IF EXISTS `modx_user_settings`;

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `modx_users` table : 
#

DROP TABLE IF EXISTS `modx_users`;

CREATE TABLE `modx_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remote_key` varchar(255) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`),
  KEY `primary_group` (`primary_group`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `modx_workspaces` table : 
#

DROP TABLE IF EXISTS `modx_workspaces`;

CREATE TABLE `modx_workspaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attributes` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for the `modx_access_context` table  (LIMIT 0,500)
#

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES 
  (1,'web','modUserGroup',0,9999,3),
  (2,'mgr','modUserGroup',1,0,2),
  (3,'web','modUserGroup',1,0,2);
COMMIT;

#
# Data for the `modx_access_permissions` table  (LIMIT 0,500)
#

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES 
  (1,1,'about','perm.about_desc',1),
  (2,1,'access_permissions','perm.access_permissions_desc',1),
  (3,1,'actions','perm.actions_desc',1),
  (4,1,'change_password','perm.change_password_desc',1),
  (5,1,'change_profile','perm.change_profile_desc',1),
  (6,1,'charsets','perm.charsets_desc',1),
  (7,1,'class_map','perm.class_map_desc',1),
  (8,1,'components','perm.components_desc',1),
  (9,1,'content_types','perm.content_types_desc',1),
  (10,1,'countries','perm.countries_desc',1),
  (11,1,'create','perm.create_desc',1),
  (12,1,'credits','perm.credits_desc',1),
  (13,1,'customize_forms','perm.customize_forms_desc',1),
  (14,1,'dashboards','perm.dashboards_desc',1),
  (15,1,'database','perm.database_desc',1),
  (16,1,'database_truncate','perm.database_truncate_desc',1),
  (17,1,'delete_category','perm.delete_category_desc',1),
  (18,1,'delete_chunk','perm.delete_chunk_desc',1),
  (19,1,'delete_context','perm.delete_context_desc',1),
  (20,1,'delete_document','perm.delete_document_desc',1),
  (21,1,'delete_eventlog','perm.delete_eventlog_desc',1),
  (22,1,'delete_plugin','perm.delete_plugin_desc',1),
  (23,1,'delete_propertyset','perm.delete_propertyset_desc',1),
  (24,1,'delete_snippet','perm.delete_snippet_desc',1),
  (25,1,'delete_template','perm.delete_template_desc',1),
  (26,1,'delete_tv','perm.delete_tv_desc',1),
  (27,1,'delete_role','perm.delete_role_desc',1),
  (28,1,'delete_user','perm.delete_user_desc',1),
  (29,1,'directory_chmod','perm.directory_chmod_desc',1),
  (30,1,'directory_create','perm.directory_create_desc',1),
  (31,1,'directory_list','perm.directory_list_desc',1),
  (32,1,'directory_remove','perm.directory_remove_desc',1),
  (33,1,'directory_update','perm.directory_update_desc',1),
  (34,1,'edit_category','perm.edit_category_desc',1),
  (35,1,'edit_chunk','perm.edit_chunk_desc',1),
  (36,1,'edit_context','perm.edit_context_desc',1),
  (37,1,'edit_document','perm.edit_document_desc',1),
  (38,1,'edit_locked','perm.edit_locked_desc',1),
  (39,1,'edit_plugin','perm.edit_plugin_desc',1),
  (40,1,'edit_propertyset','perm.edit_propertyset_desc',1),
  (41,1,'edit_role','perm.edit_role_desc',1),
  (42,1,'edit_snippet','perm.edit_snippet_desc',1),
  (43,1,'edit_template','perm.edit_template_desc',1),
  (44,1,'edit_tv','perm.edit_tv_desc',1),
  (45,1,'edit_user','perm.edit_user_desc',1),
  (46,1,'element_tree','perm.element_tree_desc',1),
  (47,1,'empty_cache','perm.empty_cache_desc',1),
  (48,1,'error_log_erase','perm.error_log_erase_desc',1),
  (49,1,'error_log_view','perm.error_log_view_desc',1),
  (50,1,'export_static','perm.export_static_desc',1),
  (51,1,'file_create','perm.file_create_desc',1),
  (52,1,'file_list','perm.file_list_desc',1),
  (53,1,'file_manager','perm.file_manager_desc',1),
  (54,1,'file_remove','perm.file_remove_desc',1),
  (55,1,'file_tree','perm.file_tree_desc',1),
  (56,1,'file_update','perm.file_update_desc',1),
  (57,1,'file_upload','perm.file_upload_desc',1),
  (58,1,'file_view','perm.file_view_desc',1),
  (59,1,'flush_sessions','perm.flush_sessions_desc',1),
  (60,1,'frames','perm.frames_desc',1),
  (61,1,'help','perm.help_desc',1),
  (62,1,'home','perm.home_desc',1),
  (63,1,'import_static','perm.import_static_desc',1),
  (64,1,'languages','perm.languages_desc',1),
  (65,1,'lexicons','perm.lexicons_desc',1),
  (66,1,'list','perm.list_desc',1),
  (67,1,'load','perm.load_desc',1),
  (68,1,'logout','perm.logout_desc',1),
  (69,1,'logs','perm.logs_desc',1),
  (70,1,'menu_reports','perm.menu_reports_desc',1),
  (71,1,'menu_security','perm.menu_security_desc',1),
  (72,1,'menu_site','perm.menu_site_desc',1),
  (73,1,'menu_support','perm.menu_support_desc',1),
  (74,1,'menu_system','perm.menu_system_desc',1),
  (75,1,'menu_tools','perm.menu_tools_desc',1),
  (76,1,'menu_user','perm.menu_user_desc',1),
  (77,1,'menus','perm.menus_desc',1),
  (78,1,'messages','perm.messages_desc',1),
  (79,1,'namespaces','perm.namespaces_desc',1),
  (80,1,'new_category','perm.new_category_desc',1),
  (81,1,'new_chunk','perm.new_chunk_desc',1),
  (82,1,'new_context','perm.new_context_desc',1),
  (83,1,'new_document','perm.new_document_desc',1),
  (84,1,'new_static_resource','perm.new_static_resource_desc',1),
  (85,1,'new_symlink','perm.new_symlink_desc',1),
  (86,1,'new_weblink','perm.new_weblink_desc',1),
  (87,1,'new_document_in_root','perm.new_document_in_root_desc',1),
  (88,1,'new_plugin','perm.new_plugin_desc',1),
  (89,1,'new_propertyset','perm.new_propertyset_desc',1),
  (90,1,'new_role','perm.new_role_desc',1),
  (91,1,'new_snippet','perm.new_snippet_desc',1),
  (92,1,'new_template','perm.new_template_desc',1),
  (93,1,'new_tv','perm.new_tv_desc',1),
  (94,1,'new_user','perm.new_user_desc',1),
  (95,1,'packages','perm.packages_desc',1),
  (96,1,'policy_delete','perm.policy_delete_desc',1),
  (97,1,'policy_edit','perm.policy_edit_desc',1),
  (98,1,'policy_new','perm.policy_new_desc',1),
  (99,1,'policy_save','perm.policy_save_desc',1),
  (100,1,'policy_view','perm.policy_view_desc',1),
  (101,1,'policy_template_delete','perm.policy_template_delete_desc',1),
  (102,1,'policy_template_edit','perm.policy_template_edit_desc',1),
  (103,1,'policy_template_new','perm.policy_template_new_desc',1),
  (104,1,'policy_template_save','perm.policy_template_save_desc',1),
  (105,1,'policy_template_view','perm.policy_template_view_desc',1),
  (106,1,'property_sets','perm.property_sets_desc',1),
  (107,1,'providers','perm.providers_desc',1),
  (108,1,'publish_document','perm.publish_document_desc',1),
  (109,1,'purge_deleted','perm.purge_deleted_desc',1),
  (110,1,'remove','perm.remove_desc',1),
  (111,1,'remove_locks','perm.remove_locks_desc',1),
  (112,1,'resource_duplicate','perm.resource_duplicate_desc',1),
  (113,1,'resourcegroup_delete','perm.resourcegroup_delete_desc',1),
  (114,1,'resourcegroup_edit','perm.resourcegroup_edit_desc',1),
  (115,1,'resourcegroup_new','perm.resourcegroup_new_desc',1),
  (116,1,'resourcegroup_resource_edit','perm.resourcegroup_resource_edit_desc',1),
  (117,1,'resourcegroup_resource_list','perm.resourcegroup_resource_list_desc',1),
  (118,1,'resourcegroup_save','perm.resourcegroup_save_desc',1),
  (119,1,'resourcegroup_view','perm.resourcegroup_view_desc',1),
  (120,1,'resource_quick_create','perm.resource_quick_create_desc',1),
  (121,1,'resource_quick_update','perm.resource_quick_update_desc',1),
  (122,1,'resource_tree','perm.resource_tree_desc',1),
  (123,1,'save','perm.save_desc',1),
  (124,1,'save_category','perm.save_category_desc',1),
  (125,1,'save_chunk','perm.save_chunk_desc',1),
  (126,1,'save_context','perm.save_context_desc',1),
  (127,1,'save_document','perm.save_document_desc',1),
  (128,1,'save_plugin','perm.save_plugin_desc',1),
  (129,1,'save_propertyset','perm.save_propertyset_desc',1),
  (130,1,'save_role','perm.save_role_desc',1),
  (131,1,'save_snippet','perm.save_snippet_desc',1),
  (132,1,'save_template','perm.save_template_desc',1),
  (133,1,'save_tv','perm.save_tv_desc',1),
  (134,1,'save_user','perm.save_user_desc',1),
  (135,1,'search','perm.search_desc',1),
  (136,1,'settings','perm.settings_desc',1),
  (137,1,'source_save','perm.source_save_desc',1),
  (138,1,'source_delete','perm.source_delete_desc',1),
  (139,1,'source_edit','perm.source_edit_desc',1),
  (140,1,'source_view','perm.source_view_desc',1),
  (141,1,'sources','perm.sources_desc',1),
  (142,1,'steal_locks','perm.steal_locks_desc',1),
  (143,1,'tree_show_element_ids','perm.tree_show_element_ids_desc',1),
  (144,1,'tree_show_resource_ids','perm.tree_show_resource_ids_desc',1),
  (145,1,'undelete_document','perm.undelete_document_desc',1),
  (146,1,'unpublish_document','perm.unpublish_document_desc',1),
  (147,1,'unlock_element_properties','perm.unlock_element_properties_desc',1),
  (148,1,'usergroup_delete','perm.usergroup_delete_desc',1),
  (149,1,'usergroup_edit','perm.usergroup_edit_desc',1),
  (150,1,'usergroup_new','perm.usergroup_new_desc',1),
  (151,1,'usergroup_save','perm.usergroup_save_desc',1),
  (152,1,'usergroup_user_edit','perm.usergroup_user_edit_desc',1),
  (153,1,'usergroup_user_list','perm.usergroup_user_list_desc',1),
  (154,1,'usergroup_view','perm.usergroup_view_desc',1),
  (155,1,'view','perm.view_desc',1),
  (156,1,'view_category','perm.view_category_desc',1),
  (157,1,'view_chunk','perm.view_chunk_desc',1),
  (158,1,'view_context','perm.view_context_desc',1),
  (159,1,'view_document','perm.view_document_desc',1),
  (160,1,'view_element','perm.view_element_desc',1),
  (161,1,'view_eventlog','perm.view_eventlog_desc',1),
  (162,1,'view_offline','perm.view_offline_desc',1),
  (163,1,'view_plugin','perm.view_plugin_desc',1),
  (164,1,'view_propertyset','perm.view_propertyset_desc',1),
  (165,1,'view_role','perm.view_role_desc',1),
  (166,1,'view_snippet','perm.view_snippet_desc',1),
  (167,1,'view_sysinfo','perm.view_sysinfo_desc',1),
  (168,1,'view_template','perm.view_template_desc',1),
  (169,1,'view_tv','perm.view_tv_desc',1),
  (170,1,'view_user','perm.view_user_desc',1),
  (171,1,'view_unpublished','perm.view_unpublished_desc',1),
  (172,1,'workspaces','perm.workspaces_desc',1),
  (173,2,'add_children','perm.add_children_desc',1),
  (174,2,'copy','perm.copy_desc',1),
  (175,2,'create','perm.create_desc',1),
  (176,2,'delete','perm.delete_desc',1),
  (177,2,'list','perm.list_desc',1),
  (178,2,'load','perm.load_desc',1),
  (179,2,'move','perm.move_desc',1),
  (180,2,'publish','perm.publish_desc',1),
  (181,2,'remove','perm.remove_desc',1),
  (182,2,'save','perm.save_desc',1),
  (183,2,'steal_lock','perm.steal_lock_desc',1),
  (184,2,'undelete','perm.undelete_desc',1),
  (185,2,'unpublish','perm.unpublish_desc',1),
  (186,2,'view','perm.view_desc',1),
  (187,3,'load','perm.load_desc',1),
  (188,3,'list','perm.list_desc',1),
  (189,3,'view','perm.view_desc',1),
  (190,3,'save','perm.save_desc',1),
  (191,3,'remove','perm.remove_desc',1),
  (192,4,'add_children','perm.add_children_desc',1),
  (193,4,'create','perm.create_desc',1),
  (194,4,'copy','perm.copy_desc',1),
  (195,4,'delete','perm.delete_desc',1),
  (196,4,'list','perm.list_desc',1),
  (197,4,'load','perm.load_desc',1),
  (198,4,'remove','perm.remove_desc',1),
  (199,4,'save','perm.save_desc',1),
  (200,4,'view','perm.view_desc',1),
  (201,5,'create','perm.create_desc',1),
  (202,5,'copy','perm.copy_desc',1),
  (203,5,'list','perm.list_desc',1),
  (204,5,'load','perm.load_desc',1),
  (205,5,'remove','perm.remove_desc',1),
  (206,5,'save','perm.save_desc',1),
  (207,5,'view','perm.view_desc',1);
COMMIT;

#
# Data for the `modx_access_policies` table  (LIMIT 0,500)
#

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES 
  (1,'Resource','MODX Resource Policy with all attributes.',0,2,'','{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}','permissions'),
  (2,'Administrator','Context administration policy with all permissions.',0,1,'','{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}','permissions'),
  (3,'Load Only','A minimal policy with permission to load an object.',0,3,'','{\"load\":true}','permissions'),
  (4,'Load, List and View','Provides load, list and view permissions only.',0,3,'','{\"load\":true,\"list\":true,\"view\":true}','permissions'),
  (5,'Object','An Object policy with all permissions.',0,3,'','{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}','permissions'),
  (6,'Element','MODX Element policy with all attributes.',0,4,'','{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}','permissions'),
  (7,'Content Editor','Context administration policy with limited, content-editing related Permissions, but no publishing.',0,1,'','{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"new_document\":true,\"delete_document\":true}','permissions'),
  (8,'Media Source Admin','Media Source administration policy.',0,5,'','{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}','permissions'),
  (9,'Media Source User','Media Source user policy, with basic viewing and using - but no editing - of Media Sources.',0,5,'','{\"load\":true,\"list\":true,\"view\":true}','permissions'),
  (10,'Developer','Context administration policy with most Permissions except Administrator and Security functions.',0,0,'','{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}','permissions');
COMMIT;

#
# Data for the `modx_access_policy_template_groups` table  (LIMIT 0,500)
#

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES 
  (1,'Admin','All admin policy templates.'),
  (2,'Object','All Object-based policy templates.'),
  (3,'Resource','All Resource-based policy templates.'),
  (4,'Element','All Element-based policy templates.'),
  (5,'MediaSource','All Media Source-based policy templates.');
COMMIT;

#
# Data for the `modx_access_policy_templates` table  (LIMIT 0,500)
#

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES 
  (1,1,'AdministratorTemplate','Context administration policy template with all permissions.','permissions'),
  (2,3,'ResourceTemplate','Resource Policy Template with all attributes.','permissions'),
  (3,2,'ObjectTemplate','Object Policy Template with all attributes.','permissions'),
  (4,4,'ElementTemplate','Element Policy Template with all attributes.','permissions'),
  (5,5,'MediaSourceTemplate','Media Source Policy Template with all attributes.','permissions');
COMMIT;

#
# Data for the `modx_actions` table  (LIMIT 0,500)
#

INSERT INTO `modx_actions` (`id`, `namespace`, `parent`, `controller`, `haslayout`, `lang_topics`, `assets`, `help_url`) VALUES 
  (1,'core',0,'welcome',1,'welcome,configcheck','',''),
  (2,'core',0,'system',0,'','',''),
  (3,'core',0,'browser',0,'file','',''),
  (4,'core',6,'context/create',1,'context,setting,access,policy,user','','Contexts'),
  (5,'core',6,'context/update',1,'context,setting,access,policy,user','','Contexts'),
  (6,'core',6,'context/view',1,'context','','Contexts'),
  (7,'core',0,'element',1,'element','',''),
  (8,'core',10,'element/chunk',1,'chunk,category,propertyset,element','','Chunks'),
  (9,'core',11,'element/chunk/create',1,'chunk,category,propertyset,element','','Chunks'),
  (10,'core',11,'element/chunk/update',1,'chunk,category,propertyset,element','','Chunks'),
  (11,'core',10,'element/plugin',1,'plugin,category,system_events,propertyset,element','','Plugins'),
  (12,'core',20,'element/plugin/create',1,'plugin,category,system_events,propertyset,element','','Plugins'),
  (13,'core',20,'element/plugin/update',1,'plugin,category,system_events,propertyset,element','','Plugins'),
  (14,'core',10,'element/snippet',1,'snippet,propertyset,element','','Snippets'),
  (15,'core',25,'element/snippet/create',1,'snippet,propertyset,element','','Snippets'),
  (16,'core',25,'element/snippet/update',1,'snippet,propertyset,element','','Snippets'),
  (17,'core',10,'element/template',1,'template,propertyset,element','','Templates'),
  (18,'core',28,'element/template/create',1,'template,propertyset,element','','Templates'),
  (19,'core',28,'element/template/update',1,'template,propertyset,element','','Templates'),
  (20,'core',28,'element/template/tvsort',1,'template,tv,propertyset,element','',''),
  (21,'core',10,'element/tv',1,'tv,propertyset,element','','Template+Variables'),
  (22,'core',32,'element/tv/create',1,'tv,tv_widget,propertyset,element','','Template+Variables'),
  (23,'core',32,'element/tv/update',1,'tv,tv_widget,propertyset,element','','Template+Variables'),
  (24,'core',10,'element/view',1,'element','',''),
  (25,'core',0,'resource',1,'','',''),
  (26,'core',46,'security/usergroup/create',1,'user,access,policy,context','','User+Groups'),
  (27,'core',46,'security/usergroup/update',1,'user,access,policy,context','','User+Groups'),
  (28,'core',36,'resource/data',1,'resource','','Resource'),
  (29,'core',36,'resource/empty_recycle_bin',1,'resource','',''),
  (30,'core',36,'resource/update',1,'resource','','Resource'),
  (31,'core',0,'security',1,'user','',''),
  (32,'core',46,'security/role',1,'user','','Roles'),
  (33,'core',53,'security/user/create',1,'user,setting,access','','Users'),
  (34,'core',53,'security/user/update',1,'user,setting,access','','Users'),
  (35,'core',46,'security/login',1,'login','',''),
  (36,'core',3,'system/refresh_site',1,'','',''),
  (37,'core',3,'system/phpinfo',1,'','',''),
  (38,'core',36,'resource/tvs',0,'','',''),
  (39,'core',3,'system/file',1,'file','',''),
  (40,'core',70,'system/file/edit',1,'file','',''),
  (41,'core',65,'security/access/policy/update',1,'user,policy','','Policies'),
  (42,'core',212,'workspaces/package/view',1,'workspace,namespace','','Package+Management'),
  (43,'core',65,'security/access/policy/template/update',1,'user,policy','','PolicyTemplates'),
  (44,'core',46,'security/forms/profile/update',1,'formcustomization,user,access,policy','','Form+Customization+Profiles'),
  (45,'core',46,'security/forms/set/update',1,'formcustomization,user,access,policy','','Form+Customization+Sets'),
  (46,'core',100,'system/dashboards/update',1,'dashboards,user','','Dashboards'),
  (47,'core',100,'system/dashboards/create',1,'dashboards,user','','Dashboards'),
  (48,'core',100,'system/dashboards/widget/update',1,'dashboards,user','','Dashboard+Widgets'),
  (49,'core',100,'system/dashboards/widget/create',1,'dashboards,user','','Dashboard+Widgets'),
  (50,'core',101,'source/create',1,'sources,namespace','','Media+Sources'),
  (51,'core',101,'source/update',1,'sources,namespace','','Media+Sources'),
  (52,'core',70,'system/file/create',1,'file','',''),
  (53,'core',0,'system/dashboards',1,'about','','Dashboards'),
  (54,'core',0,'search',1,'','',''),
  (55,'core',36,'resource/create',1,'resource','','Resource'),
  (56,'core',46,'security/user',1,'user','','Users'),
  (57,'core',46,'security/permission',1,'user,access,policy','','Security'),
  (58,'core',46,'security/resourcegroup/index',1,'resource,user,access','','Resource+Groups'),
  (59,'core',46,'security/forms',1,'formcustomization,user,access,policy','','Customizing+The+Manager'),
  (60,'core',3,'system/import',1,'import','',''),
  (61,'core',59,'system/import/html',1,'import','',''),
  (62,'core',10,'element/propertyset/index',1,'element,category,propertyset','','Properties+and+Property+Sets'),
  (63,'core',10,'source/index',1,'sources,namespace','','Media+Sources'),
  (64,'core',36,'resource/site_schedule',1,'resource','',''),
  (65,'core',0,'system/logs/index',1,'manager_log','',''),
  (66,'core',3,'system/event',1,'system_events','',''),
  (67,'core',3,'system/info',1,'system_info','',''),
  (68,'core',0,'help',1,'about','',''),
  (69,'core',3,'workspaces',1,'workspace','','Package+Management'),
  (70,'core',3,'system/settings',1,'setting','','Settings'),
  (71,'core',68,'workspaces/lexicon',1,'package_builder,lexicon,namespace','','Internationalization'),
  (72,'core',3,'system/contenttype',1,'content_type','','Content+Types'),
  (73,'core',0,'context',1,'context','','Contexts'),
  (74,'core',3,'system/action',1,'action,menu,namespace','','Actions+and+Menus'),
  (75,'core',68,'workspaces/namespace',1,'workspace,package_builder,lexicon,namespace','','Namespaces'),
  (76,'core',46,'security/profile',1,'user','',''),
  (77,'core',46,'security/message',1,'messages','','');
COMMIT;

#
# Data for the `modx_actions_fields` table  (LIMIT 0,500)
#

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES 
  (1,30,'modx-resource-settings','tab','','modx-panel-resource','',0),
  (2,30,'modx-resource-main-left','tab','','modx-panel-resource','',1),
  (3,30,'id','field','modx-resource-main-left','modx-panel-resource','',0),
  (4,30,'pagetitle','field','modx-resource-main-left','modx-panel-resource','',1),
  (5,30,'longtitle','field','modx-resource-main-left','modx-panel-resource','',2),
  (6,30,'description','field','modx-resource-main-left','modx-panel-resource','',3),
  (7,30,'introtext','field','modx-resource-main-left','modx-panel-resource','',4),
  (8,30,'modx-resource-main-right','tab','','modx-panel-resource','',2),
  (9,30,'template','field','modx-resource-main-right','modx-panel-resource','',0),
  (10,30,'alias','field','modx-resource-main-right','modx-panel-resource','',1),
  (11,30,'menutitle','field','modx-resource-main-right','modx-panel-resource','',2),
  (12,30,'link_attributes','field','modx-resource-main-right','modx-panel-resource','',3),
  (13,30,'hidemenu','field','modx-resource-main-right','modx-panel-resource','',4),
  (14,30,'published','field','modx-resource-main-right','modx-panel-resource','',5),
  (15,30,'modx-page-settings','tab','','modx-panel-resource','',3),
  (16,30,'modx-page-settings-left','tab','','modx-panel-resource','',4),
  (17,30,'parent-cmb','field','modx-page-settings-left','modx-panel-resource','',0),
  (18,30,'class_key','field','modx-page-settings-left','modx-panel-resource','',1),
  (19,30,'content_type','field','modx-page-settings-left','modx-panel-resource','',2),
  (20,30,'content_dispo','field','modx-page-settings-left','modx-panel-resource','',3),
  (21,30,'menuindex','field','modx-page-settings-left','modx-panel-resource','',4),
  (22,30,'modx-page-settings-right','tab','','modx-panel-resource','',5),
  (23,30,'publishedon','field','modx-page-settings-right','modx-panel-resource','',0),
  (24,30,'pub_date','field','modx-page-settings-right','modx-panel-resource','',1),
  (25,30,'unpub_date','field','modx-page-settings-right','modx-panel-resource','',2),
  (26,30,'modx-page-settings-right-box-left','tab','','modx-panel-resource','',6),
  (27,30,'isfolder','field','modx-page-settings-right-box-left','modx-panel-resource','',0),
  (28,30,'searchable','field','modx-page-settings-right-box-left','modx-panel-resource','',1),
  (29,30,'richtext','field','modx-page-settings-right-box-left','modx-panel-resource','',2),
  (30,30,'uri_override','field','modx-page-settings-right-box-left','modx-panel-resource','',3),
  (31,30,'uri','field','modx-page-settings-right-box-left','modx-panel-resource','',4),
  (32,30,'modx-page-settings-right-box-right','tab','','modx-panel-resource','',7),
  (33,30,'cacheable','field','modx-page-settings-right-box-right','modx-panel-resource','',0),
  (34,30,'syncsite','field','modx-page-settings-right-box-right','modx-panel-resource','',1),
  (35,30,'deleted','field','modx-page-settings-right-box-right','modx-panel-resource','',2),
  (36,30,'modx-panel-resource-tv','tab','','modx-panel-resource','tv',8),
  (37,30,'modx-resource-access-permissions','tab','','modx-panel-resource','',9),
  (38,30,'modx-resource-content','field','modx-resource-content','modx-panel-resource','',0),
  (39,55,'modx-resource-settings','tab','','modx-panel-resource','',0),
  (40,55,'modx-resource-main-left','tab','','modx-panel-resource','',1),
  (41,55,'id','field','modx-resource-main-left','modx-panel-resource','',0),
  (42,55,'pagetitle','field','modx-resource-main-left','modx-panel-resource','',1),
  (43,55,'longtitle','field','modx-resource-main-left','modx-panel-resource','',2),
  (44,55,'description','field','modx-resource-main-left','modx-panel-resource','',3),
  (45,55,'introtext','field','modx-resource-main-left','modx-panel-resource','',4),
  (46,55,'modx-resource-main-right','tab','','modx-panel-resource','',2),
  (47,55,'template','field','modx-resource-main-right','modx-panel-resource','',0),
  (48,55,'alias','field','modx-resource-main-right','modx-panel-resource','',1),
  (49,55,'menutitle','field','modx-resource-main-right','modx-panel-resource','',2),
  (50,55,'link_attributes','field','modx-resource-main-right','modx-panel-resource','',3),
  (51,55,'hidemenu','field','modx-resource-main-right','modx-panel-resource','',4),
  (52,55,'published','field','modx-resource-main-right','modx-panel-resource','',5),
  (53,55,'modx-page-settings','tab','','modx-panel-resource','',3),
  (54,55,'modx-page-settings-left','tab','','modx-panel-resource','',4),
  (55,55,'parent-cmb','field','modx-page-settings-left','modx-panel-resource','',0),
  (56,55,'class_key','field','modx-page-settings-left','modx-panel-resource','',1),
  (57,55,'content_type','field','modx-page-settings-left','modx-panel-resource','',2),
  (58,55,'content_dispo','field','modx-page-settings-left','modx-panel-resource','',3),
  (59,55,'menuindex','field','modx-page-settings-left','modx-panel-resource','',4),
  (60,55,'modx-page-settings-right','tab','','modx-panel-resource','',5),
  (61,55,'publishedon','field','modx-page-settings-right','modx-panel-resource','',0),
  (62,55,'pub_date','field','modx-page-settings-right','modx-panel-resource','',1),
  (63,55,'unpub_date','field','modx-page-settings-right','modx-panel-resource','',2),
  (64,55,'modx-page-settings-right-box-left','tab','','modx-panel-resource','',6),
  (65,55,'isfolder','field','modx-page-settings-right-box-left','modx-panel-resource','',0),
  (66,55,'searchable','field','modx-page-settings-right-box-left','modx-panel-resource','',1),
  (67,55,'richtext','field','modx-page-settings-right-box-left','modx-panel-resource','',2),
  (68,55,'uri_override','field','modx-page-settings-right-box-left','modx-panel-resource','',3),
  (69,55,'uri','field','modx-page-settings-right-box-left','modx-panel-resource','',4),
  (70,55,'modx-page-settings-right-box-right','tab','','modx-panel-resource','',7),
  (71,55,'cacheable','field','modx-page-settings-right-box-right','modx-panel-resource','',0),
  (72,55,'syncsite','field','modx-page-settings-right-box-right','modx-panel-resource','',1),
  (73,55,'deleted','field','modx-page-settings-right-box-right','modx-panel-resource','',2),
  (74,55,'modx-panel-resource-tv','tab','','modx-panel-resource','tv',8),
  (75,55,'modx-resource-access-permissions','tab','','modx-panel-resource','',9),
  (76,55,'modx-resource-content','field','modx-resource-content','modx-panel-resource','',0);
COMMIT;

#
# Data for the `modx_categories` table  (LIMIT 0,500)
#

INSERT INTO `modx_categories` (`id`, `parent`, `category`) VALUES 
  (1,0,'ZGDS_1_0'),
  (2,0,'Breadcrumbs');
COMMIT;

#
# Data for the `modx_categories_closure` table  (LIMIT 0,500)
#

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES 
  (0,1,0),
  (0,2,0),
  (1,1,0),
  (2,2,0);
COMMIT;

#
# Data for the `modx_class_map` table  (LIMIT 0,500)
#

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES 
  (1,'modDocument','modResource','pagetitle','','core:resource'),
  (2,'modWebLink','modResource','pagetitle','','core:resource'),
  (3,'modSymLink','modResource','pagetitle','','core:resource'),
  (4,'modStaticResource','modResource','pagetitle','','core:resource'),
  (5,'modTemplate','modElement','templatename','','core:resource'),
  (6,'modTemplateVar','modElement','name','','core:resource'),
  (7,'modChunk','modElement','name','','core:resource'),
  (8,'modSnippet','modElement','name','','core:resource'),
  (9,'modPlugin','modElement','name','','core:resource');
COMMIT;

#
# Data for the `modx_content_type` table  (LIMIT 0,500)
#

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES 
  (1,'HTML','HTML content','text/html','.html',NULL,0),
  (2,'XML','XML content','text/xml','.xml',NULL,0),
  (3,'text','plain text content','text/plain','.txt',NULL,0),
  (4,'CSS','CSS content','text/css','.css',NULL,0),
  (5,'javascript','javascript content','text/javascript','.js',NULL,0),
  (6,'RSS','For RSS feeds','application/rss+xml','.rss',NULL,0);
COMMIT;

#
# Data for the `modx_context` table  (LIMIT 0,500)
#

INSERT INTO `modx_context` (`key`, `description`, `rank`) VALUES 
  ('mgr','The default manager or administration context for content management activity.',0),
  ('web','The default front-end context for your web site.',0);
COMMIT;

#
# Data for the `modx_context_setting` table  (LIMIT 0,500)
#

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES 
  ('mgr','allow_tags_in_post','1','combo-boolean','core','system','0000-00-00 00:00:00'),
  ('mgr','modRequest.class','modManagerRequest','textfield','core','system','0000-00-00 00:00:00');
COMMIT;

#
# Data for the `modx_dashboard` table  (LIMIT 0,500)
#

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES 
  (1,'Default','',0);
COMMIT;

#
# Data for the `modx_dashboard_widget` table  (LIMIT 0,500)
#

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES 
  (1,'w_newsfeed','w_newsfeed_desc','file','[[++manager_path]]controllers/default/dashboard/widget.modx-news.php','core','core:dashboards','half'),
  (2,'w_securityfeed','w_securityfeed_desc','file','[[++manager_path]]controllers/default/dashboard/widget.modx-security.php','core','core:dashboards','half'),
  (3,'w_whosonline','w_whosonline_desc','file','[[++manager_path]]controllers/default/dashboard/widget.grid-online.php','core','core:dashboards','half'),
  (4,'w_recentlyeditedresources','w_recentlyeditedresources_desc','file','[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php','core','core:dashboards','half'),
  (5,'w_configcheck','w_configcheck_desc','file','[[++manager_path]]controllers/default/dashboard/widget.configcheck.php','core','core:dashboards','full');
COMMIT;

#
# Data for the `modx_dashboard_widget_placement` table  (LIMIT 0,500)
#

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES 
  (1,1,1),
  (1,2,2),
  (1,3,3),
  (1,4,4),
  (1,5,0);
COMMIT;

#
# Data for the `modx_manager_log` table  (LIMIT 0,500)
#

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES 
  (1,1,'2012-01-27 13:55:58','object_create','modCategory','1'),
  (2,1,'2012-01-27 15:06:05','namespace_create','modNamespace','zgds_1_0'),
  (3,1,'2012-01-27 15:07:12','namespace_update','modNamespace','zgds_1_0'),
  (4,1,'2012-01-27 15:08:01','category_update','modCategory','1'),
  (5,1,'2012-01-27 15:12:04','snippet_create','modSnippet','1'),
  (6,1,'2012-01-27 15:12:30','snippet_update','modSnippet','1'),
  (7,1,'2012-01-27 15:12:51','snippet_update','modSnippet','1'),
  (8,1,'2012-02-02 12:51:26','resource_create','modDocument','2'),
  (9,1,'2012-02-02 12:52:00','setting_update','modSystemSetting','automatic_alias'),
  (10,1,'2012-02-02 12:52:09','setting_update','modSystemSetting','container_suffix'),
  (11,1,'2012-02-02 12:52:21','setting_update','modSystemSetting','friendly_alias_lowercase_only'),
  (12,1,'2012-02-02 12:52:36','setting_update','modSystemSetting','friendly_urls'),
  (13,1,'2012-02-02 12:52:43','setting_update','modSystemSetting','global_duplicate_uri_check'),
  (14,1,'2012-02-02 12:52:49','setting_update','modSystemSetting','use_alias_path'),
  (15,1,'2012-02-02 12:56:08','resource_update','modResource','1'),
  (16,1,'2012-02-02 12:56:20','resource_update','modResource','2'),
  (17,1,'2012-02-02 13:00:25','resource_update','modResource','1'),
  (18,1,'2012-02-02 13:00:46','resource_update','modResource','1'),
  (19,1,'2012-02-02 13:01:39','resource_update','modResource','1'),
  (20,1,'2012-02-02 13:31:07','resource_update','modResource','2'),
  (21,1,'2012-02-02 13:31:57','resource_update','modResource','2'),
  (22,1,'2012-02-02 13:37:02','resource_update','modResource','2'),
  (23,1,'2012-02-02 13:43:57','resource_update','modResource','2'),
  (24,1,'2012-02-02 13:49:38','namespace_create','modNamespace','zgds'),
  (25,1,'2012-02-02 13:59:06','namespace_update','modNamespace','zgds'),
  (26,1,'2012-02-02 14:01:10','namespace_update','modNamespace','zgds'),
  (27,1,'2012-02-02 14:10:02','namespace_update','modNamespace','zgds'),
  (28,1,'2012-02-02 14:10:09','namespace_update','modNamespace','zgds'),
  (29,1,'2012-02-02 14:10:23','namespace_update','modNamespace','zgds'),
  (30,1,'2012-02-02 14:11:22','namespace_update','modNamespace','zgds'),
  (31,1,'2012-02-02 14:11:48','namespace_update','modNamespace','zgds'),
  (32,1,'2012-02-02 14:12:22','namespace_update','modNamespace','zgds'),
  (33,1,'2012-02-02 14:12:26','namespace_delete','modNamespace','zgds_1_0'),
  (34,1,'2012-02-03 13:47:01','lexicon_entry_update','modLexiconEntry','1'),
  (35,1,'2012-02-03 13:47:37','lexicon_entry_update','modLexiconEntry','1'),
  (36,1,'2012-02-03 14:10:25','resource_update','modResource','2'),
  (37,1,'2012-02-03 14:10:37','resource_update','modResource','2'),
  (38,1,'2012-02-03 14:11:52','resource_update','modResource','2'),
  (39,1,'2012-02-03 14:16:13','resource_update','modResource','2'),
  (40,1,'2012-02-03 14:17:09','namespace_update','modNamespace','zgds'),
  (41,1,'2012-02-03 14:17:30','namespace_update','modNamespace','zgds'),
  (42,1,'2012-02-03 14:18:01','namespace_update','modNamespace','zgds'),
  (43,1,'2012-02-03 14:18:11','namespace_update','modNamespace','zgds'),
  (44,1,'2012-02-03 14:18:36','namespace_update','modNamespace','zgds'),
  (45,1,'2012-02-03 14:19:39','resource_update','modResource','2'),
  (46,1,'2012-02-03 14:19:51','resource_update','modResource','2'),
  (47,1,'2012-02-03 14:20:09','resource_update','modResource','2'),
  (48,1,'2012-02-03 14:20:21','resource_update','modResource','2'),
  (49,1,'2012-02-03 14:23:20','resource_update','modResource','2'),
  (50,1,'2012-02-03 14:28:59','template_update','modTemplate','1'),
  (51,1,'2012-02-03 14:52:34','template_update','modTemplate','1'),
  (52,1,'2012-02-03 14:56:32','template_update','modTemplate','1'),
  (53,1,'2012-02-03 15:06:32','template_update','modTemplate','1'),
  (54,1,'2012-02-03 15:10:06','template_update','modTemplate','1'),
  (55,1,'2012-02-03 15:45:29','template_update','modTemplate','1'),
  (56,1,'2012-02-03 15:55:36','template_update','modTemplate','1'),
  (57,1,'2012-02-03 16:05:01','template_update','modTemplate','1'),
  (58,1,'2012-02-03 16:06:19','template_update','modTemplate','1'),
  (59,1,'2012-02-03 16:06:38','template_update','modTemplate','1'),
  (60,1,'2012-02-03 16:07:13','template_update','modTemplate','1'),
  (61,1,'2012-02-03 16:07:37','template_update','modTemplate','1'),
  (62,1,'2012-02-03 16:07:40','template_update','modTemplate','1'),
  (63,1,'2012-02-03 16:15:57','template_update','modTemplate','1'),
  (64,1,'2012-02-03 16:26:46','template_update','modTemplate','1'),
  (65,1,'2012-02-03 16:27:15','template_update','modTemplate','1'),
  (66,1,'2012-02-03 16:33:20','template_update','modTemplate','1'),
  (67,1,'2012-02-03 16:34:04','template_update','modTemplate','1'),
  (68,1,'2012-02-03 16:37:42','template_update','modTemplate','1'),
  (69,1,'2012-02-03 16:38:31','template_update','modTemplate','1'),
  (70,1,'2012-02-09 13:33:16','resource_update','modResource','1'),
  (71,1,'2012-02-09 13:34:01','resource_update','modResource','2'),
  (72,1,'2012-02-09 13:41:27','resource_update','modResource','2'),
  (73,1,'2012-02-09 13:41:55','resource_update','modResource','2'),
  (74,1,'2012-02-09 13:57:14','resource_update','modResource','2'),
  (75,1,'2012-02-09 13:57:33','resource_update','modResource','2'),
  (76,1,'2012-02-09 13:58:00','resource_update','modResource','2'),
  (77,1,'2012-02-09 13:58:13','resource_update','modResource','2'),
  (78,1,'2012-02-09 14:05:12','resource_update','modResource','2'),
  (79,1,'2012-02-09 14:07:34','resource_update','modResource','2'),
  (80,1,'2012-02-09 14:08:43','resource_update','modResource','2'),
  (81,1,'2012-02-09 14:09:43','resource_update','modResource','2'),
  (82,1,'2012-02-09 15:03:49','resource_update','modResource','2'),
  (83,1,'2012-02-09 15:14:58','snippet_update','modSnippet','1'),
  (84,1,'2012-02-09 15:15:23','snippet_update','modSnippet','1'),
  (85,1,'2012-02-09 15:17:42','snippet_update','modSnippet','1'),
  (86,1,'2012-02-09 15:17:54','snippet_update','modSnippet','1'),
  (87,1,'2012-02-09 15:20:09','snippet_update','modSnippet','1'),
  (88,1,'2012-02-09 15:20:23','snippet_update','modSnippet','1'),
  (89,1,'2012-02-09 15:21:46','snippet_update','modSnippet','1'),
  (90,1,'2012-02-09 15:22:37','snippet_update','modSnippet','1'),
  (91,1,'2012-02-09 15:37:05','resource_update','modResource','2'),
  (92,1,'2012-02-09 15:37:28','resource_update','modResource','2'),
  (93,1,'2012-02-10 13:00:49','resource_update','modResource','2'),
  (94,1,'2012-02-10 13:01:10','resource_update','modResource','2'),
  (95,1,'2012-02-10 16:07:48','resource_update','modResource','2'),
  (96,1,'2012-02-10 16:08:35','resource_update','modResource','2');
COMMIT;

#
# Data for the `modx_media_sources` table  (LIMIT 0,500)
#

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES 
  (1,'Filesystem','','sources.modFileMediaSource','a:0:{}',1);
COMMIT;

#
# Data for the `modx_member_groups` table  (LIMIT 0,500)
#

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES 
  (1,1,1,2,0);
COMMIT;

#
# Data for the `modx_membergroup_names` table  (LIMIT 0,500)
#

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES 
  (1,'Administrator',NULL,0,0,1);
COMMIT;

#
# Data for the `modx_menus` table  (LIMIT 0,500)
#

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`) VALUES 
  ('about','reports',68,'about_desc','images/icons/information.png',4,'','','about'),
  ('api_docs','support',0,'api_docs_desc','images/icons/sysinfo.gif',3,'','window.open(\"http://api.modx.com/revolution/2.2/\");',''),
  ('components','',0,'','images/icons/plugin.gif',2,'','','components'),
  ('content_types','system',72,'content_types_desc','images/icons/logging.gif',3,'','','content_types'),
  ('contexts','system',73,'contexts_desc','images/icons/sysinfo.gif',4,'','','view_context'),
  ('dashboard','',0,'','images/misc/logo_tbar.gif',0,'','MODx.loadPage(\"\"); return false;','home'),
  ('dashboards','dashboard',53,'dashboards_desc','images/icons/information.png',0,'','','dashboards'),
  ('edit_menu','system',74,'edit_menu_desc','images/icons/sysinfo.gif',5,'','','menus,actions'),
  ('eventlog_viewer','reports',66,'eventlog_viewer_desc','images/icons/comment.gif',2,'','','view_eventlog'),
  ('flush_access','security',0,'flush_access_desc','images/icons/unzip.gif',4,'','MODx.msg.confirm({\n    title: _(''flush_access'')\n    ,text: _(''flush_access_confirm'')\n    ,url: MODx.config.connectors_url+''security/access/index.php''\n    ,params: {\n        action: ''flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});','access_permissions'),
  ('flush_sessions','security',0,'flush_sessions_desc','images/icons/unzip.gif',5,'','MODx.msg.confirm({\n    title: _(''flush_sessions'')\n    ,text: _(''flush_sessions_confirm'')\n    ,url: MODx.config.connectors_url+''security/flush.php''\n    ,params: {\n        action: ''flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});','flush_sessions'),
  ('form_customization','security',59,'form_customization_desc','images/misc/logo_tbar.gif',3,'','','customize_forms'),
  ('forums','support',0,'forums_desc','images/icons/sysinfo.gif',0,'','window.open(\"http://modx.com/forums\");',''),
  ('import_resources','tools',60,'import_resources_desc','images/icons/application_side_contract.png',0,'','','import_static'),
  ('import_site','tools',61,'import_site_desc','images/icons/application_side_contract.png',1,'','','import_static'),
  ('jira','support',0,'jira_desc','images/icons/sysinfo.gif',2,'','window.open(\"http://bugs.modx.com/projects/revo/issues\");',''),
  ('lexicon_management','system',71,'lexicon_management_desc','images/icons/logging.gif',2,'','','lexicons'),
  ('logout','site',0,'logout_desc','images/misc/logo_tbar.gif',8,'','MODx.logout(); return false;','logout'),
  ('manage_workspaces','system',69,'manage_workspaces_desc','images/icons/sysinfo.gif',0,'','','packages'),
  ('messages','user',77,'messages_desc','images/icons/messages.gif',1,'','','messages'),
  ('namespaces','system',75,'namespaces_desc','',6,'','','namespaces'),
  ('new_document','site',55,'new_document_desc','images/icons/folder_page_add.png',4,'','','new_document'),
  ('new_static_resource','site',55,'new_static_resource_desc','images/icons/link_add.png',7,'&class_key=modStaticResource','','new_static_resource'),
  ('new_symlink','site',55,'new_symlink_desc','images/icons/link_add.png',6,'&class_key=modSymLink','','new_symlink'),
  ('new_weblink','site',55,'new_weblink_desc','images/icons/link_add.png',5,'&class_key=modWebLink','','new_weblink'),
  ('preview','site',0,'preview_desc','images/icons/show.gif',0,'','MODx.preview(); return false;',''),
  ('profile','user',76,'profile_desc','',0,'','','change_profile'),
  ('propertysets','tools',62,'propertysets_desc','images/misc/logo_tbar.gif',2,'','','property_sets'),
  ('refresh_site','site',0,'refresh_site_desc','images/icons/refresh.png',1,'','MODx.clearCache(); return false;','empty_cache'),
  ('remove_locks','site',0,'remove_locks_desc','images/ext/default/grid/hmenu-unlock.png',2,'','\nMODx.msg.confirm({\n    title: _(''remove_locks'')\n    ,text: _(''confirm_remove_locks'')\n    ,url: MODx.config.connectors_url+''system/remove_locks.php''\n    ,params: {\n        action: ''remove''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { Ext.getCmp(\"modx-resource-tree\").refresh(); },scope:this}\n    }\n});','remove_locks'),
  ('reports','',0,'','images/icons/menu_settings16.gif',5,'','','menu_reports'),
  ('resource_groups','security',58,'resource_groups_desc','',2,'','','access_permissions'),
  ('search','site',54,'search_desc','images/icons/context_view.gif',3,'','','search'),
  ('security','',0,'','images/icons/lock.gif',3,'','','menu_security'),
  ('site','',0,'','images/misc/logo_tbar.gif',1,'','','menu_site'),
  ('site_schedule','reports',64,'site_schedule_desc','images/icons/cal.gif',0,'','','view_document'),
  ('sources','tools',63,'sources_desc','images/misc/logo_tbar.gif',2,'','','sources'),
  ('support','',0,'support_desc','images/icons/sysinfo.gif',8,'','','menu_support'),
  ('system','',0,'','images/misc/logo_tbar.gif',6,'','','menu_system'),
  ('system_settings','system',70,'system_settings_desc','images/icons/sysinfo.gif',1,'','','settings'),
  ('tools','',0,'','images/icons/menu_settings.gif',4,'','','menu_tools'),
  ('user','',0,'','images/icons/user_go.png',7,'','','menu_user'),
  ('user_group_management','security',57,'user_group_management_desc','images/icons/mnu_users.gif',1,'','','access_permissions'),
  ('user_management','security',56,'user_management_desc','images/icons/user.gif',0,'','','view_user'),
  ('view_logging','reports',65,'view_logging_desc','',1,'','','logs'),
  ('view_sysinfo','reports',67,'view_sysinfo_desc','images/icons/logging.gif',3,'','','view_sysinfo'),
  ('wiki','support',0,'wiki_desc','images/icons/sysinfo.gif',1,'','window.open(\"http://rtfm.modx.com/\");','');
COMMIT;

#
# Data for the `modx_namespaces` table  (LIMIT 0,500)
#

INSERT INTO `modx_namespaces` (`name`, `path`) VALUES 
  ('breadcrumbs','{core_path}components/breadcrumbs/'),
  ('codemirror','{core_path}components/codemirror/'),
  ('core','{core_path}'),
  ('wayfinder','{core_path}components/wayfinder/'),
  ('zgds','D:/home/LArV/usr/var/htdoc/vhost/zgds/htdoc/core/components/zgds/v.1.0/');
COMMIT;

#
# Data for the `modx_register_queues` table  (LIMIT 0,500)
#

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES 
  (1,'locks','a:1:{s:9:\"directory\";s:5:\"locks\";}');
COMMIT;

#
# Data for the `modx_register_topics` table  (LIMIT 0,500)
#

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES 
  (1,1,'/resource/','2012-02-02 12:51:25',NULL,NULL);
COMMIT;

#
# Data for the `modx_session` table  (LIMIT 0,500)
#

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES 
  ('1regdv2otgk4rto8pk45ksqa52',1341246090,'modx.user.contextTokens|a:0:{}'),
  ('1usanv5vnnf6h2pnsq9tbuut82',1328882853,'modx.user.0.attributes|a:2:{s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.mgr.user.token|s:52:\"modx4f215590e74cf4.80639470_14f34f5b4c8ca09.37178155\";modx.mgr.session.cookie.lifetime|i:0;modx.user.1.attributes|a:2:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}newResourceTokens|a:2:{i:0;s:23:\"4f34f5c687d882.09235645\";i:1;s:23:\"4f3524a47c35f7.83614236\";}'),
  ('728s0lkbp2f4oakgm15gsvsur6',1328793979,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.mgr.user.token|s:52:\"modx4f215590e74cf4.80639470_14f2bb24a9a5fb5.74280653\";modx.mgr.session.cookie.lifetime|i:604800;modx.user.1.attributes|a:2:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}newResourceTokens|a:6:{i:0;s:23:\"4f33ae7feff2b3.48257756\";i:1;s:23:\"4f33ae899969f6.64553244\";i:2;s:23:\"4f33aeb4811df5.65614692\";i:3;s:23:\"4f33af095f2551.34128305\";i:4;s:23:\"4f33c41e1c31d7.79514217\";i:5;s:23:\"4f33c97abd97d2.40489729\";}'),
  ('89cm8rl25rj4rp2fa2cfrf77h3',1341246090,'modx.user.contextTokens|a:0:{}'),
  ('8jj88ack2uiikl8spnpeua5ll7',1340638927,'modx.user.contextTokens|a:0:{}'),
  ('hgol9s4liev7qro90vjkiojp21',1341246090,'modx.user.contextTokens|a:0:{}'),
  ('kajdvg9osapdcvl8c82nfot4v6',1331582416,'modx.user.0.attributes|a:2:{s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.mgr.user.token|s:52:\"modx4f215590e74cf4.80639470_14f5e55ced62741.35773324\";modx.mgr.session.cookie.lifetime|i:604800;modx.user.1.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}'),
  ('r3j97113k8bi0r0ak0ktgl2dc6',1328183327,'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.userGroups|a:0:{}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.mgr.user.token|s:52:\"modx4f215590e74cf4.80639470_14f2155c1b41587.18400479\";modx.mgr.session.cookie.lifetime|i:604800;modx.user.1.attributes|a:2:{s:3:\"mgr\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}s:3:\"web\";a:4:{s:16:\"modAccessContext\";a:2:{s:3:\"mgr\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";s:1:\"1\";s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:172:{s:5:\"about\";b:1;s:18:\"access_permissions\";b:1;s:7:\"actions\";b:1;s:15:\"change_password\";b:1;s:14:\"change_profile\";b:1;s:8:\"charsets\";b:1;s:9:\"class_map\";b:1;s:10:\"components\";b:1;s:13:\"content_types\";b:1;s:9:\"countries\";b:1;s:6:\"create\";b:1;s:7:\"credits\";b:1;s:15:\"customize_forms\";b:1;s:10:\"dashboards\";b:1;s:8:\"database\";b:1;s:17:\"database_truncate\";b:1;s:15:\"delete_category\";b:1;s:12:\"delete_chunk\";b:1;s:14:\"delete_context\";b:1;s:15:\"delete_document\";b:1;s:15:\"delete_eventlog\";b:1;s:13:\"delete_plugin\";b:1;s:18:\"delete_propertyset\";b:1;s:11:\"delete_role\";b:1;s:14:\"delete_snippet\";b:1;s:15:\"delete_template\";b:1;s:9:\"delete_tv\";b:1;s:11:\"delete_user\";b:1;s:15:\"directory_chmod\";b:1;s:16:\"directory_create\";b:1;s:14:\"directory_list\";b:1;s:16:\"directory_remove\";b:1;s:16:\"directory_update\";b:1;s:13:\"edit_category\";b:1;s:10:\"edit_chunk\";b:1;s:12:\"edit_context\";b:1;s:13:\"edit_document\";b:1;s:11:\"edit_locked\";b:1;s:11:\"edit_plugin\";b:1;s:16:\"edit_propertyset\";b:1;s:9:\"edit_role\";b:1;s:12:\"edit_snippet\";b:1;s:13:\"edit_template\";b:1;s:7:\"edit_tv\";b:1;s:9:\"edit_user\";b:1;s:12:\"element_tree\";b:1;s:11:\"empty_cache\";b:1;s:15:\"error_log_erase\";b:1;s:14:\"error_log_view\";b:1;s:13:\"export_static\";b:1;s:11:\"file_create\";b:1;s:9:\"file_list\";b:1;s:12:\"file_manager\";b:1;s:11:\"file_remove\";b:1;s:9:\"file_tree\";b:1;s:11:\"file_update\";b:1;s:11:\"file_upload\";b:1;s:9:\"file_view\";b:1;s:14:\"flush_sessions\";b:1;s:6:\"frames\";b:1;s:4:\"help\";b:1;s:4:\"home\";b:1;s:13:\"import_static\";b:1;s:9:\"languages\";b:1;s:8:\"lexicons\";b:1;s:4:\"list\";b:1;s:4:\"load\";b:1;s:6:\"logout\";b:1;s:4:\"logs\";b:1;s:5:\"menus\";b:1;s:12:\"menu_reports\";b:1;s:13:\"menu_security\";b:1;s:9:\"menu_site\";b:1;s:12:\"menu_support\";b:1;s:11:\"menu_system\";b:1;s:10:\"menu_tools\";b:1;s:9:\"menu_user\";b:1;s:8:\"messages\";b:1;s:10:\"namespaces\";b:1;s:12:\"new_category\";b:1;s:9:\"new_chunk\";b:1;s:11:\"new_context\";b:1;s:12:\"new_document\";b:1;s:20:\"new_document_in_root\";b:1;s:10:\"new_plugin\";b:1;s:15:\"new_propertyset\";b:1;s:8:\"new_role\";b:1;s:11:\"new_snippet\";b:1;s:19:\"new_static_resource\";b:1;s:11:\"new_symlink\";b:1;s:12:\"new_template\";b:1;s:6:\"new_tv\";b:1;s:8:\"new_user\";b:1;s:11:\"new_weblink\";b:1;s:8:\"packages\";b:1;s:13:\"policy_delete\";b:1;s:11:\"policy_edit\";b:1;s:10:\"policy_new\";b:1;s:11:\"policy_save\";b:1;s:22:\"policy_template_delete\";b:1;s:20:\"policy_template_edit\";b:1;s:19:\"policy_template_new\";b:1;s:20:\"policy_template_save\";b:1;s:20:\"policy_template_view\";b:1;s:11:\"policy_view\";b:1;s:13:\"property_sets\";b:1;s:9:\"providers\";b:1;s:16:\"publish_document\";b:1;s:13:\"purge_deleted\";b:1;s:6:\"remove\";b:1;s:12:\"remove_locks\";b:1;s:18:\"resource_duplicate\";b:1;s:20:\"resourcegroup_delete\";b:1;s:18:\"resourcegroup_edit\";b:1;s:17:\"resourcegroup_new\";b:1;s:27:\"resourcegroup_resource_edit\";b:1;s:27:\"resourcegroup_resource_list\";b:1;s:18:\"resourcegroup_save\";b:1;s:18:\"resourcegroup_view\";b:1;s:21:\"resource_quick_create\";b:1;s:21:\"resource_quick_update\";b:1;s:13:\"resource_tree\";b:1;s:4:\"save\";b:1;s:13:\"save_category\";b:1;s:10:\"save_chunk\";b:1;s:12:\"save_context\";b:1;s:13:\"save_document\";b:1;s:11:\"save_plugin\";b:1;s:16:\"save_propertyset\";b:1;s:9:\"save_role\";b:1;s:12:\"save_snippet\";b:1;s:13:\"save_template\";b:1;s:7:\"save_tv\";b:1;s:9:\"save_user\";b:1;s:6:\"search\";b:1;s:8:\"settings\";b:1;s:7:\"sources\";b:1;s:13:\"source_delete\";b:1;s:11:\"source_edit\";b:1;s:11:\"source_save\";b:1;s:11:\"source_view\";b:1;s:11:\"steal_locks\";b:1;s:21:\"tree_show_element_ids\";b:1;s:22:\"tree_show_resource_ids\";b:1;s:17:\"undelete_document\";b:1;s:25:\"unlock_element_properties\";b:1;s:18:\"unpublish_document\";b:1;s:16:\"usergroup_delete\";b:1;s:14:\"usergroup_edit\";b:1;s:13:\"usergroup_new\";b:1;s:14:\"usergroup_save\";b:1;s:19:\"usergroup_user_edit\";b:1;s:19:\"usergroup_user_list\";b:1;s:14:\"usergroup_view\";b:1;s:4:\"view\";b:1;s:13:\"view_category\";b:1;s:10:\"view_chunk\";b:1;s:12:\"view_context\";b:1;s:13:\"view_document\";b:1;s:12:\"view_element\";b:1;s:13:\"view_eventlog\";b:1;s:12:\"view_offline\";b:1;s:11:\"view_plugin\";b:1;s:16:\"view_propertyset\";b:1;s:9:\"view_role\";b:1;s:12:\"view_snippet\";b:1;s:12:\"view_sysinfo\";b:1;s:13:\"view_template\";b:1;s:7:\"view_tv\";b:1;s:16:\"view_unpublished\";b:1;s:9:\"view_user\";b:1;s:10:\"workspaces\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}}}modx.user.1.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.1.userGroups|a:1:{i:0;i:1;}newResourceTokens|a:14:{i:0;s:23:\"4f2155e12d6059.46372591\";i:1;s:23:\"4f2a6a29702d79.31020602\";i:2;s:23:\"4f2a6aafe87163.74998974\";i:3;s:23:\"4f2a6b06663133.42362875\";i:4;s:23:\"4f2a6b0ed81cb0.43591372\";i:5;s:23:\"4f2a6b9a7cb125.18920102\";i:6;s:23:\"4f2a6bcac91626.13588231\";i:7;s:23:\"4f2a6cc3496407.53641787\";i:8;s:23:\"4f2a6d092a3cf9.37359705\";i:9;s:23:\"4f2a6d0e092860.41786384\";i:10;s:23:\"4f2a6eee762ed7.78500690\";i:11;s:23:\"4f2a73e8c47c30.38668487\";i:12;s:23:\"4f2a76f5d48858.96478437\";i:13;s:23:\"4f2a781ecccd67.72045569\";}');
COMMIT;

#
# Data for the `modx_site_content` table  (LIMIT 0,500)
#

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`) VALUES 
  (1,'document','text/html','Главная','Главная страница','Описание главной страницы.','index','',1,0,0,0,0,'','Содержание главной страницы.',1,1,0,1,1,1,1327584678,1,1328787196,0,0,0,0,0,'',0,0,0,0,0,'modDocument','web',1,'index.html',0,0,1),
  (2,'document','text/html','Тест','Тестовая страница','Описание тестовой страницы','test','',1,0,0,0,0,'','[[!SnippetX?\r\ndebug=`true`\r\n&name=`test`\r\n&a=`simple A`\r\n]]\r\n<br />\r\nzgds.core_path_desc: [[%zgds.core_path_desc? &namespace=`zgds`]]\r\n<br />\r\n[[%zgds.core_path]]',1,1,1,1,1,1,1328179885,1,1328882915,0,0,0,1328180160,1,'',0,0,0,0,0,'modDocument','web',1,'test.html',0,0,1);
COMMIT;

#
# Data for the `modx_site_plugin_events` table  (LIMIT 0,500)
#

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES 
  (1,'OnChunkFormPrerender',0,0),
  (1,'OnFileEditFormPrerender',0,0),
  (1,'OnPluginFormPrerender',0,0),
  (1,'OnRichTextEditorRegister',0,0),
  (1,'OnSnipFormPrerender',0,0),
  (1,'OnTempFormPrerender',0,0);
COMMIT;

#
# Data for the `modx_site_plugins` table  (LIMIT 0,500)
#

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES 
  (1,0,0,'CodeMirror','CodeMirror 2.0.0-pl plugin for MODx Revolution',0,0,0,'/**\n * @package codemirror\n */\nif ($modx->event->name == ''OnRichTextEditorRegister'') {\n    $modx->event->output(''CodeMirror'');\n    return;\n}\nif ($modx->getOption(''which_element_editor'',null,''CodeMirror'') != ''CodeMirror'') return;\nif (!$modx->getOption(''use_editor'',null,true)) return;\nif (!$modx->getOption(''codemirror.enable'',null,true)) return;\n\n$codeMirror = $modx->getService(''codemirror'',''CodeMirror'',$modx->getOption(''codemirror.core_path'',null,$modx->getOption(''core_path'').''components/codemirror/'').''model/codemirror/'');\nif (!($codeMirror instanceof CodeMirror)) return '''';\n\n\n$options = array(\n    ''modx_path'' => $codeMirror->config[''assetsUrl''],\n    ''electricChars'' => (boolean)$modx->getOption(''electricChars'',$scriptProperties,true),\n    ''enterMode'' => $modx->getOption(''tabMode'',$scriptProperties,''indent''),\n    ''firstLineNumber'' => (int)$modx->getOption(''firstLineNumber'',$scriptProperties,1),\n    ''highlightLine'' => (boolean)$modx->getOption(''highlightLine'',$scriptProperties,true),\n    ''indentUnit'' => (int)$modx->getOption(''indentUnit'',$scriptProperties,$modx->getOption(''indent_unit'',$scriptProperties,2)),\n    ''indentWithTabs'' => (boolean)$modx->getOption(''indentWithTabs'',$scriptProperties,true),\n    ''lineNumbers'' => (boolean)$modx->getOption(''lineNumbers'',$scriptProperties,$modx->getOption(''line_numbers'',$scriptProperties,true)),\n    ''matchBrackets'' => (boolean)$modx->getOption(''matchBrackets'',$scriptProperties,true),\n    ''showSearchForm'' => (boolean)$modx->getOption(''showSearchForm'',$scriptProperties,true),\n    ''tabMode'' => $modx->getOption(''tabMode'',$scriptProperties,$modx->getOption(''tab_mode'',$scriptProperties,''classic'')),\n    ''undoDepth'' => $modx->getOption(''undoDepth'',$scriptProperties,40),\n);\n\n$load = false;\nswitch ($modx->event->name) {\n    case ''OnSnipFormPrerender'':\n        $options[''modx_loader''] = ''onSnippet'';\n        $options[''mode''] = ''php'';\n        $load = true;\n        break;\n    case ''OnTempFormPrerender'':\n        $options[''modx_loader''] = ''onTemplate'';\n        $options[''mode''] = ''htmlmixed'';\n        $load = true;\n        break;\n    case ''OnChunkFormPrerender'':\n        $options[''modx_loader''] = ''onChunk'';\n        $options[''mode''] = ''htmlmixed'';\n        $load = true;\n        break;\n    case ''OnPluginFormPrerender'':\n        $options[''modx_loader''] = ''onPlugin'';\n        $options[''mode''] = ''php'';\n        $load = true;\n        break;\n    /* disabling TVs for now, since it causes problems with newlines\n    case ''OnTVFormPrerender'':\n        $options[''modx_loader''] = ''onTV'';\n        $options[''height''] = ''250px'';\n        $load = true;\n        break;*/\n    case ''OnFileEditFormPrerender'':\n        $options[''modx_loader''] = ''onFile'';\n        $options[''mode''] = ''php'';\n        $load = true;\n        break;\n    /* debated whether or not to use */\n    case ''OnRichTextEditorInit'':\n        break;\n    case ''OnRichTextBrowserInit'':\n        break;\n}\n\nif ($load) {\n    $options[''searchTpl''] = $codeMirror->getChunk(''search'');\n\n    $modx->regClientStartupHTMLBlock(''<script type=\"text/javascript\">MODx.codem = ''.$modx->toJSON($options).'';</script>'');\n    $modx->regClientCSS($codeMirror->config[''assetsUrl''].''css/codemirror-compressed.css'');\n    $modx->regClientCSS($codeMirror->config[''assetsUrl''].''css/cm.css'');\n    $modx->regClientStartupScript($codeMirror->config[''assetsUrl''].''js/codemirror-compressed.js'');\n    $modx->regClientStartupScript($codeMirror->config[''assetsUrl''].''js/cm.js'');\n}\n\nreturn;',0,'a:11:{s:10:\"indentUnit\";a:6:{s:4:\"name\";s:10:\"indentUnit\";s:4:\"desc\";s:23:\"prop_cm.indentUnit_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:2;s:7:\"lexicon\";s:21:\"codemirror:properties\";}s:14:\"indentWithTabs\";a:6:{s:4:\"name\";s:14:\"indentWithTabs\";s:4:\"desc\";s:27:\"prop_cm.indentWithTabs_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:21:\"codemirror:properties\";}s:7:\"tabMode\";a:6:{s:4:\"name\";s:7:\"tabMode\";s:4:\"desc\";s:20:\"prop_cm.tabMode_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:15:\"prop_cm.classic\";s:5:\"value\";s:7:\"classic\";}i:1;a:2:{s:4:\"text\";s:13:\"prop_cm.shift\";s:5:\"value\";s:5:\"shift\";}i:2;a:2:{s:4:\"text\";s:14:\"prop_cm.indent\";s:5:\"value\";s:6:\"indent\";}i:3;a:2:{s:4:\"text\";s:23:\"prop_cm.browser_default\";s:5:\"value\";s:7:\"default\";}}s:5:\"value\";s:7:\"classic\";s:7:\"lexicon\";s:21:\"codemirror:properties\";}s:9:\"enterMode\";a:6:{s:4:\"name\";s:9:\"enterMode\";s:4:\"desc\";s:22:\"prop_cm.enterMode_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:14:\"prop_cm.indent\";s:5:\"value\";s:6:\"indent\";}i:1;a:2:{s:4:\"text\";s:12:\"prop_cm.keep\";s:5:\"value\";s:4:\"keep\";}i:2;a:2:{s:4:\"text\";s:12:\"prop_cm.flat\";s:5:\"value\";s:4:\"flat\";}}s:5:\"value\";s:6:\"indent\";s:7:\"lexicon\";s:21:\"codemirror:properties\";}s:13:\"electricChars\";a:6:{s:4:\"name\";s:13:\"electricChars\";s:4:\"desc\";s:26:\"prop_cm.electricChars_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:21:\"codemirror:properties\";}s:11:\"lineNumbers\";a:6:{s:4:\"name\";s:11:\"lineNumbers\";s:4:\"desc\";s:24:\"prop_cm.lineNumbers_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:21:\"codemirror:properties\";}s:15:\"firstLineNumber\";a:6:{s:4:\"name\";s:15:\"firstLineNumber\";s:4:\"desc\";s:28:\"prop_cm.firstLineNumber_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:1;s:7:\"lexicon\";s:21:\"codemirror:properties\";}s:13:\"highlightLine\";a:6:{s:4:\"name\";s:13:\"highlightLine\";s:4:\"desc\";s:26:\"prop_cm.highlightLine_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:21:\"codemirror:properties\";}s:13:\"matchBrackets\";a:6:{s:4:\"name\";s:13:\"matchBrackets\";s:4:\"desc\";s:26:\"prop_cm.matchBrackets_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:21:\"codemirror:properties\";}s:14:\"showSearchForm\";a:6:{s:4:\"name\";s:14:\"showSearchForm\";s:4:\"desc\";s:27:\"prop_cm.showSearchForm_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:21:\"codemirror:properties\";}s:9:\"undoDepth\";a:6:{s:4:\"name\";s:9:\"undoDepth\";s:4:\"desc\";s:22:\"prop_cm.undoDepth_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:40;s:7:\"lexicon\";s:21:\"codemirror:properties\";}}',0,'',0,'');
COMMIT;

#
# Data for the `modx_site_snippets` table  (LIMIT 0,500)
#

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES 
  (1,1,0,'SnippetX','',0,1,0,'/**\n * SnippetX\n *\n * Snippet process\n *\n * @copyright Copyright (C) 2012, by LArV <larv.develop@gmail.com>\n * @author    LArV <larv.develop@gmail.com>\n *\n * @package SnippetX\n * @subpackage include\n */\n\nif( empty( $modx ) || !( $modx instanceof modX ) ) { die(); }\n\n$package = ''zgds'';\n$v = ''v.1.0'';\n$f = MODX_CORE_PATH . ''components/''. $package . ''/'' . $v . ''/element/snippet/snippet.include.php'';\n\n$o = '''';\nif( file_exists( $f ) )\n\t{\n\t$o = require_once( $f );\n\t}\nelse\n\t{\n//\t$modx->setDebug( false );\n\t$modx->log( modX::LOG_LEVEL_ERROR, \"SnippetX: Could not load include snippet file: ''$f''\" );\n\t$o = ''SnippetX: Fatal error, include snippet file not found.'';\n\t}\nreturn( $o );',0,'a:0:{}','',1,'core/components/zgds/v.1.0/element/snippet/!modx!/snippet.Snippet.php'),
  (2,0,0,'Breadcrumbs','',0,2,0,'/**\n * BreadCrumbs\n *\n * Copyright 2009-2011 by Shaun McCormick <shaun+bc@modx.com>\n *\n * BreadCrumbs is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * BreadCrumbs is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * BreadCrumbs; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package breadcrumbs\n */\n/**\n * @name BreadCrumbs\n * @version 0.9f\n * @created 2006-06-12\n * @since 2009-05-11\n * @author Jared <jaredc@honeydewdesign.com>\n * @editor Bill Wilson\n * @editor wendy@djamoer.net\n * @editor grad\n * @editor Shaun McCormick <shaun@collabpad.com>\n * @editor Shawn Wilkerson <shawn@shawnwilkerson.com>\n * @editor Wieger Sloot, Sterc.nl <wieger@sterc.nl>\n * @tester Bob Ray\n * @package breadcrumbs\n *\n * This snippet was designed to show the path through the various levels of site\n * structure back to the root. It is NOT necessarily the path the user took to\n * arrive at a given page.\n *\n * @see breadcrumbs.class.php for config settings\n *\n * Included classes\n * .B_crumbBox Span that surrounds all crumb output\n * .B_hideCrumb Span surrounding the \"...\" if there are more crumbs than will be shown\n * .B_currentCrumb Span or A tag surrounding the current crumb\n * .B_firstCrumb Span that always surrounds the first crumb, whether it is \"home\" or not\n * .B_lastCrumb Span surrounding last crumb, whether it is the current page or not .\n * .B_crumb Class given to each A tag surrounding the intermediate crumbs (not home, or\n * hide)\n * .B_homeCrumb Class given to the home crumb\n */\nrequire_once $modx->getOption(''breadcrumbs.core_path'',null,$modx->getOption(''core_path'').''components/breadcrumbs/'').''model/breadcrumbs/breadcrumbs.class.php'';\n$bc = new BreadCrumbs($modx,$scriptProperties);\nreturn $bc->run();',0,'','',0,''),
  (3,0,0,'Wayfinder','Wayfinder for MODx Revolution 2.0.0-beta-5 and later.',0,0,0,'/**\n * Wayfinder Snippet to build site navigation menus\n *\n * Totally refactored from original DropMenu nav builder to make it easier to\n * create custom navigation by using chunks as output templates. By using\n * templates, many of the paramaters are no longer needed for flexible output\n * including tables, unordered- or ordered-lists (ULs or OLs), definition lists\n * (DLs) or in any other format you desire.\n *\n * @version 2.1.1-beta5\n * @author Garry Nutting (collabpad.com)\n * @author Kyle Jaebker (muddydogpaws.com)\n * @author Ryan Thrash (modx.com)\n * @author Shaun McCormick (modx.com)\n * @author Jason Coward (modx.com)\n *\n * @example [[Wayfinder? &startId=`0`]]\n *\n * @var modX $modx\n * @var array $scriptProperties\n * \n * @package wayfinder\n */\n$wayfinder_base = $modx->getOption(''wayfinder.core_path'',$scriptProperties,$modx->getOption(''core_path'').''components/wayfinder/'');\n\n/* include a custom config file if specified */\nif (isset($scriptProperties[''config''])) {\n    $scriptProperties[''config''] = str_replace(''../'','''',$scriptProperties[''config'']);\n    $scriptProperties[''config''] = $wayfinder_base.''configs/''.$scriptProperties[''config''].''.config.php'';\n} else {\n    $scriptProperties[''config''] = $wayfinder_base.''configs/default.config.php'';\n}\nif (file_exists($scriptProperties[''config''])) {\n    include $scriptProperties[''config''];\n}\n\n/* include wayfinder class */\ninclude_once $wayfinder_base.''wayfinder.class.php'';\nif (!$modx->loadClass(''Wayfinder'',$wayfinder_base,true,true)) {\n    return ''error: Wayfinder class not found'';\n}\n$wf = new Wayfinder($modx,$scriptProperties);\n\n/* get user class definitions\n * TODO: eventually move these into config parameters */\n$wf->_css = array(\n    ''first'' => isset($firstClass) ? $firstClass : '''',\n    ''last'' => isset($lastClass) ? $lastClass : ''last'',\n    ''here'' => isset($hereClass) ? $hereClass : ''active'',\n    ''parent'' => isset($parentClass) ? $parentClass : '''',\n    ''row'' => isset($rowClass) ? $rowClass : '''',\n    ''outer'' => isset($outerClass) ? $outerClass : '''',\n    ''inner'' => isset($innerClass) ? $innerClass : '''',\n    ''level'' => isset($levelClass) ? $levelClass: '''',\n    ''self'' => isset($selfClass) ? $selfClass : '''',\n    ''weblink'' => isset($webLinkClass) ? $webLinkClass : ''''\n);\n\n/* get user templates\n * TODO: eventually move these into config parameters */\n$wf->_templates = array(\n    ''outerTpl'' => isset($outerTpl) ? $outerTpl : '''',\n    ''rowTpl'' => isset($rowTpl) ? $rowTpl : '''',\n    ''parentRowTpl'' => isset($parentRowTpl) ? $parentRowTpl : '''',\n    ''parentRowHereTpl'' => isset($parentRowHereTpl) ? $parentRowHereTpl : '''',\n    ''hereTpl'' => isset($hereTpl) ? $hereTpl : '''',\n    ''innerTpl'' => isset($innerTpl) ? $innerTpl : '''',\n    ''innerRowTpl'' => isset($innerRowTpl) ? $innerRowTpl : '''',\n    ''innerHereTpl'' => isset($innerHereTpl) ? $innerHereTpl : '''',\n    ''activeParentRowTpl'' => isset($activeParentRowTpl) ? $activeParentRowTpl : '''',\n    ''categoryFoldersTpl'' => isset($categoryFoldersTpl) ? $categoryFoldersTpl : '''',\n    ''startItemTpl'' => isset($startItemTpl) ? $startItemTpl : ''''\n);\n\n/* process Wayfinder */\n$output = $wf->run();\nif ($wf->_config[''debug'']) {\n    $output .= $wf->renderDebugOutput();\n}\n\n/* output results */\nif ($wf->_config[''ph'']) {\n    $modx->setPlaceholder($wf->_config[''ph''],$output);\n} else {\n    return $output;\n}',0,'a:48:{s:5:\"level\";a:6:{s:4:\"name\";s:5:\"level\";s:4:\"desc\";s:25:\"prop_wayfinder.level_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"includeDocs\";a:6:{s:4:\"name\";s:11:\"includeDocs\";s:4:\"desc\";s:31:\"prop_wayfinder.includeDocs_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"excludeDocs\";a:6:{s:4:\"name\";s:11:\"excludeDocs\";s:4:\"desc\";s:31:\"prop_wayfinder.excludeDocs_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:8:\"contexts\";a:6:{s:4:\"name\";s:8:\"contexts\";s:4:\"desc\";s:28:\"prop_wayfinder.contexts_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"cacheResults\";a:6:{s:4:\"name\";s:12:\"cacheResults\";s:4:\"desc\";s:32:\"prop_wayfinder.cacheResults_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:9:\"cacheTime\";a:6:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:29:\"prop_wayfinder.cacheTime_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:3600;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:2:\"ph\";a:6:{s:4:\"name\";s:2:\"ph\";s:4:\"desc\";s:22:\"prop_wayfinder.ph_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:5:\"debug\";a:6:{s:4:\"name\";s:5:\"debug\";s:4:\"desc\";s:25:\"prop_wayfinder.debug_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"ignoreHidden\";a:6:{s:4:\"name\";s:12:\"ignoreHidden\";s:4:\"desc\";s:32:\"prop_wayfinder.ignoreHidden_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"hideSubMenus\";a:6:{s:4:\"name\";s:12:\"hideSubMenus\";s:4:\"desc\";s:32:\"prop_wayfinder.hideSubMenus_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:13:\"useWeblinkUrl\";a:6:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:33:\"prop_wayfinder.useWeblinkUrl_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:8:\"fullLink\";a:6:{s:4:\"name\";s:8:\"fullLink\";s:4:\"desc\";s:28:\"prop_wayfinder.fullLink_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:6:\"scheme\";a:6:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:26:\"prop_wayfinder.scheme_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:23:\"prop_wayfinder.relative\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:23:\"prop_wayfinder.absolute\";s:5:\"value\";s:3:\"abs\";}i:2;a:2:{s:4:\"text\";s:19:\"prop_wayfinder.full\";s:5:\"value\";s:4:\"full\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:9:\"sortOrder\";a:6:{s:4:\"name\";s:9:\"sortOrder\";s:4:\"desc\";s:29:\"prop_wayfinder.sortOrder_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:24:\"prop_wayfinder.ascending\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:25:\"prop_wayfinder.descending\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:6:\"sortBy\";a:6:{s:4:\"name\";s:6:\"sortBy\";s:4:\"desc\";s:26:\"prop_wayfinder.sortBy_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:5:\"limit\";a:6:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:25:\"prop_wayfinder.limit_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:6:\"cssTpl\";a:6:{s:4:\"name\";s:6:\"cssTpl\";s:4:\"desc\";s:26:\"prop_wayfinder.cssTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:5:\"jsTpl\";a:6:{s:4:\"name\";s:5:\"jsTpl\";s:4:\"desc\";s:25:\"prop_wayfinder.jsTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"rowIdPrefix\";a:6:{s:4:\"name\";s:11:\"rowIdPrefix\";s:4:\"desc\";s:31:\"prop_wayfinder.rowIdPrefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"textOfLinks\";a:6:{s:4:\"name\";s:11:\"textOfLinks\";s:4:\"desc\";s:31:\"prop_wayfinder.textOfLinks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:9:\"menutitle\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"titleOfLinks\";a:6:{s:4:\"name\";s:12:\"titleOfLinks\";s:4:\"desc\";s:32:\"prop_wayfinder.titleOfLinks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:9:\"pagetitle\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"displayStart\";a:6:{s:4:\"name\";s:12:\"displayStart\";s:4:\"desc\";s:32:\"prop_wayfinder.displayStart_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:10:\"firstClass\";a:6:{s:4:\"name\";s:10:\"firstClass\";s:4:\"desc\";s:30:\"prop_wayfinder.firstClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"first\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:9:\"lastClass\";a:6:{s:4:\"name\";s:9:\"lastClass\";s:4:\"desc\";s:29:\"prop_wayfinder.lastClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:4:\"last\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:9:\"hereClass\";a:6:{s:4:\"name\";s:9:\"hereClass\";s:4:\"desc\";s:29:\"prop_wayfinder.hereClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:6:\"active\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"parentClass\";a:6:{s:4:\"name\";s:11:\"parentClass\";s:4:\"desc\";s:31:\"prop_wayfinder.parentClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:8:\"rowClass\";a:6:{s:4:\"name\";s:8:\"rowClass\";s:4:\"desc\";s:28:\"prop_wayfinder.rowClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:10:\"outerClass\";a:6:{s:4:\"name\";s:10:\"outerClass\";s:4:\"desc\";s:30:\"prop_wayfinder.outerClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:10:\"innerClass\";a:6:{s:4:\"name\";s:10:\"innerClass\";s:4:\"desc\";s:30:\"prop_wayfinder.innerClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:10:\"levelClass\";a:6:{s:4:\"name\";s:10:\"levelClass\";s:4:\"desc\";s:30:\"prop_wayfinder.levelClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:9:\"selfClass\";a:6:{s:4:\"name\";s:9:\"selfClass\";s:4:\"desc\";s:29:\"prop_wayfinder.selfClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"webLinkClass\";a:6:{s:4:\"name\";s:12:\"webLinkClass\";s:4:\"desc\";s:32:\"prop_wayfinder.webLinkClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:8:\"outerTpl\";a:6:{s:4:\"name\";s:8:\"outerTpl\";s:4:\"desc\";s:28:\"prop_wayfinder.outerTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:6:\"rowTpl\";a:6:{s:4:\"name\";s:6:\"rowTpl\";s:4:\"desc\";s:26:\"prop_wayfinder.rowTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"parentRowTpl\";a:6:{s:4:\"name\";s:12:\"parentRowTpl\";s:4:\"desc\";s:32:\"prop_wayfinder.parentRowTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:16:\"parentRowHereTpl\";a:6:{s:4:\"name\";s:16:\"parentRowHereTpl\";s:4:\"desc\";s:36:\"prop_wayfinder.parentRowHereTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:7:\"hereTpl\";a:6:{s:4:\"name\";s:7:\"hereTpl\";s:4:\"desc\";s:27:\"prop_wayfinder.hereTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:8:\"innerTpl\";a:6:{s:4:\"name\";s:8:\"innerTpl\";s:4:\"desc\";s:28:\"prop_wayfinder.innerTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"innerRowTpl\";a:6:{s:4:\"name\";s:11:\"innerRowTpl\";s:4:\"desc\";s:31:\"prop_wayfinder.innerRowTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"innerHereTpl\";a:6:{s:4:\"name\";s:12:\"innerHereTpl\";s:4:\"desc\";s:32:\"prop_wayfinder.innerHereTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:18:\"activeParentRowTpl\";a:6:{s:4:\"name\";s:18:\"activeParentRowTpl\";s:4:\"desc\";s:38:\"prop_wayfinder.activeParentRowTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:18:\"categoryFoldersTpl\";a:6:{s:4:\"name\";s:18:\"categoryFoldersTpl\";s:4:\"desc\";s:38:\"prop_wayfinder.categoryFoldersTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"startItemTpl\";a:6:{s:4:\"name\";s:12:\"startItemTpl\";s:4:\"desc\";s:32:\"prop_wayfinder.startItemTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"permissions\";a:6:{s:4:\"name\";s:11:\"permissions\";s:4:\"desc\";s:31:\"prop_wayfinder.permissions_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:4:\"list\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:6:\"hereId\";a:6:{s:4:\"name\";s:6:\"hereId\";s:4:\"desc\";s:26:\"prop_wayfinder.hereId_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:5:\"where\";a:6:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:25:\"prop_wayfinder.where_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:9:\"templates\";a:6:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:29:\"prop_wayfinder.templates_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:18:\"previewUnpublished\";a:6:{s:4:\"name\";s:18:\"previewUnpublished\";s:4:\"desc\";s:38:\"prop_wayfinder.previewunpublished_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}}','',0,'');
COMMIT;

#
# Data for the `modx_site_templates` table  (LIMIT 0,500)
#

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES 
  (1,0,0,'BaseTemplate','Template',0,0,'',0,'<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">\n\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\">\n\n<head>\n\n<base href=\"[[++site_url]]\" />\n\n<meta http-equiv=\"Content-Type\" content=\"text/html;charset=utf-8\" />\n<title>[[++site_name]] - [[*pagetitle]]</title>\n\n<script src=\"[[++assets_url]]js/seo.js\" type=\"text/javascript\"></script>\n\n<!--\n<link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"[[++assets_url]]templates/main/css/reset.css\" />\n<link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"[[++assets_url]]templates/main/css/text.css\" />\n<link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"[[++assets_url]]templates/main/css/960_24_col.css\" />\n -->\n<link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"[[++assets_url]]templates/main/css/layout.css\" />\n<link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"[[++assets_url]]templates/main/css/content.css\" />\n<link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"[[++assets_url]]templates/main/css/element.css\" />\n\n</head>\n\n<body>\n\n<!-- block_header -->\n<div id=\"block_header\">\n<a id=\"top\"></a>\n<a href=\"[[++site_url]]\" title=\"Главная страница\">\nСистема регистрация инфекционных заболеваний\n</a>\n</div>\n<!-- /block_header -->\n\n<!-- block_middle -->\n<div id=\"block_middle\">\n\n<!-- block_middle -->\n<div id=\"block_mn_wrap\">\n\n<!-- block_menu -->\n<div id=\"block_menu\">\n<!-- [[#Wayfinder? &startId=`0` &level=`2`]] -->\n[[Wayfinder? &startId=`0`]]\n</div> <!-- /block_menu -->\n\n[[*id:neq=`1`:then=`\n<!-- block_navigation -->\n<div id=\"block_navigation\">\n[[Breadcrumbs? &crumbSeparator=`<span class=\"separator\">»</span>`]]\n</div> <!-- /block_navigation -->\n`]]\n\n</div> <!-- /block_mn_wrap -->\n\n<!-- content -->\n<div id=\"block_content\"><div id=\"content\">\n\n[[*longtitle:neq=``:then=`<h1 class=\"alpha center\">[[*longtitle]]</h1>`:else=`<h1 class=\"alpha center\">[[*pagetitle]]</h1>`]]\n\n[[*content]]\n\n</div></div> <!-- /content -->\n\n<div class=\"clear\"></div>\n\n<div id=\"content_footer\">\n<!-- go to page top --><a id=\"go2top\" href=\"[[~[[*id]]]]#top\" onclick=\"javascript:scroll(0,0);return(false);\" title=\"Перейти вверх страницы\">Перейти вверх страницы</a><!-- /go to page top -->\n</div>\n</div><!-- /block_middle -->\n\n\n<!-- block_footer -->\n<div id=\"block_footer\">\n\t<a href=\"[[++site_url]]\" title=\"Главная страница\">\n\t\tСистема регистрация инфекционных заболеваний\n\t</a>\n</div> <!-- /block_footer -->\n\n<!-- block_validator -->\n<!-- <div id=\"block_validator\">\n\t<div id=\"block_validator_content\">\n\t\t<a href=\"http://validator.w3.org/check?uri=[[~[[*id]] ? &scheme=`full`]]\">\n\t\t\t<img src=\"http://www.w3.org/Icons/valid-xhtml11\" alt=\"Правильный XHTML v.1.1!\" />\n\t\t</a>\n\t\t<a href=\"http://jigsaw.w3.org/css-validator/validator?profile=css3&amp;usermedium=all&amp;warning=1&amp;vextwarning=&amp;uri=[[~[[*id]]  ? &scheme=`full`]]\">\n\t\t\t<img src=\"http://jigsaw.w3.org/css-validator/images/vcss\" alt=\"Правильный CSS!\" />\n\t\t</a>\n\t</div>\n</div> --><!-- /block_validator -->\n\n</body>\n\n</html>\n',0,'a:0:{}',0,'');
COMMIT;

#
# Data for the `modx_system_eventnames` table  (LIMIT 0,500)
#

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES 
  ('OnBeforeCacheUpdate',4,'System'),
  ('OnBeforeChunkFormDelete',1,'Chunks'),
  ('OnBeforeChunkFormSave',1,'Chunks'),
  ('OnBeforeDocFormDelete',1,'Resources'),
  ('OnBeforeDocFormSave',1,'Resources'),
  ('OnBeforeEmptyTrash',1,'Resources'),
  ('OnBeforeManagerLogin',2,'Security'),
  ('OnBeforeManagerLogout',2,'Security'),
  ('OnBeforeManagerPageInit',2,'System'),
  ('OnBeforePluginFormDelete',1,'Plugins'),
  ('OnBeforePluginFormSave',1,'Plugins'),
  ('OnBeforeSaveWebPageCache',4,'System'),
  ('OnBeforeSnipFormDelete',1,'Snippets'),
  ('OnBeforeSnipFormSave',1,'Snippets'),
  ('OnBeforeTempFormDelete',1,'Templates'),
  ('OnBeforeTempFormSave',1,'Templates'),
  ('OnBeforeTVFormDelete',1,'Template Variables'),
  ('OnBeforeTVFormSave',1,'Template Variables'),
  ('OnBeforeUserActivate',1,'Users'),
  ('OnBeforeUserDeactivate',1,'Users'),
  ('OnBeforeUserFormDelete',1,'Users'),
  ('OnBeforeUserFormSave',1,'Users'),
  ('OnBeforeUserGroupFormRemove',1,'User Groups'),
  ('OnBeforeUserGroupFormSave',1,'User Groups'),
  ('OnBeforeWebLogin',3,'Security'),
  ('OnBeforeWebLogout',3,'Security'),
  ('OnCacheUpdate',4,'System'),
  ('OnCategoryBeforeRemove',1,'Categories'),
  ('OnCategoryBeforeSave',1,'Categories'),
  ('OnCategoryRemove',1,'Categories'),
  ('OnCategorySave',1,'Categories'),
  ('OnChunkBeforeRemove',1,'Chunks'),
  ('OnChunkBeforeSave',1,'Chunks'),
  ('OnChunkFormDelete',1,'Chunks'),
  ('OnChunkFormPrerender',1,'Chunks'),
  ('OnChunkFormRender',1,'Chunks'),
  ('OnChunkFormSave',1,'Chunks'),
  ('OnChunkRemove',1,'Chunks'),
  ('OnChunkSave',1,'Chunks'),
  ('OnContextBeforeRemove',1,'Contexts'),
  ('OnContextBeforeSave',1,'Contexts'),
  ('OnContextFormPrerender',2,'Contexts'),
  ('OnContextFormRender',2,'Contexts'),
  ('OnContextRemove',1,'Contexts'),
  ('OnContextSave',1,'Contexts'),
  ('OnDocFormDelete',1,'Resources'),
  ('OnDocFormPrerender',1,'Resources'),
  ('OnDocFormRender',1,'Resources'),
  ('OnDocFormSave',1,'Resources'),
  ('OnDocPublished',5,'Resources'),
  ('OnDocUnPublished',5,'Resources'),
  ('OnEmptyTrash',1,'Resources'),
  ('OnFileCreateFormPrerender',1,'System'),
  ('OnFileManagerUpload',1,'System'),
  ('OnHandleRequest',5,'System'),
  ('OnInitCulture',3,'Internationalization'),
  ('OnLoadWebDocument',5,'System'),
  ('OnLoadWebPageCache',4,'System'),
  ('OnManagerAuthentication',2,'Security'),
  ('OnManagerLogin',2,'Security'),
  ('OnManagerLoginFormPrerender',2,'Security'),
  ('OnManagerLoginFormRender',2,'Security'),
  ('OnManagerLogout',2,'Security'),
  ('OnManagerPageAfterRender',2,'System'),
  ('OnManagerPageBeforeRender',2,'System'),
  ('OnManagerPageInit',2,'System'),
  ('OnMediaSourceBeforeFormDelete',1,'Media Sources'),
  ('OnMediaSourceBeforeFormSave',1,'Media Sources'),
  ('OnMediaSourceDuplicate',1,'Resources'),
  ('OnMediaSourceFormDelete',1,'Media Sources'),
  ('OnMediaSourceFormSave',1,'Media Sources'),
  ('OnMediaSourceGetProperties',1,'Media Sources'),
  ('OnPageNotFound',1,'System'),
  ('OnPageUnauthorized',1,'Security'),
  ('OnParseDocument',5,'System'),
  ('OnPluginBeforeRemove',1,'Plugins'),
  ('OnPluginBeforeSave',1,'Plugins'),
  ('OnPluginEventBeforeRemove',1,'Plugin Events'),
  ('OnPluginEventBeforeSave',1,'Plugin Events'),
  ('OnPluginEventRemove',1,'Plugin Events'),
  ('OnPluginEventSave',1,'Plugin Events'),
  ('OnPluginFormDelete',1,'Plugins'),
  ('OnPluginFormPrerender',1,'Plugins'),
  ('OnPluginFormRender',1,'Plugins'),
  ('OnPluginFormSave',1,'Plugins'),
  ('OnPluginRemove',1,'Plugins'),
  ('OnPluginSave',1,'Plugins'),
  ('OnPropertySetBeforeRemove',1,'Property Sets'),
  ('OnPropertySetBeforeSave',1,'Property Sets'),
  ('OnPropertySetRemove',1,'Property Sets'),
  ('OnPropertySetSave',1,'Property Sets'),
  ('OnResourceAddToResourceGroup',1,'Resources'),
  ('OnResourceBeforeSort',1,'Resources'),
  ('OnResourceDelete',1,'Resources'),
  ('OnResourceDuplicate',1,'Resources'),
  ('OnResourceGroupBeforeRemove',1,'Security'),
  ('OnResourceGroupBeforeSave',1,'Security'),
  ('OnResourceGroupRemove',1,'Security'),
  ('OnResourceGroupSave',1,'Security'),
  ('OnResourceRemoveFromResourceGroup',1,'Resources'),
  ('OnResourceSort',1,'Resources'),
  ('OnResourceToolbarLoad',1,'Resources'),
  ('OnResourceTVFormPrerender',1,'Resources'),
  ('OnResourceTVFormRender',1,'Resources'),
  ('OnResourceUndelete',1,'Resources'),
  ('OnRichTextBrowserInit',1,'RichText Editor'),
  ('OnRichTextEditorInit',1,'RichText Editor'),
  ('OnRichTextEditorRegister',1,'RichText Editor'),
  ('OnSiteRefresh',1,'System'),
  ('OnSiteSettingsRender',1,'Settings'),
  ('OnSnipFormDelete',1,'Snippets'),
  ('OnSnipFormPrerender',1,'Snippets'),
  ('OnSnipFormRender',1,'Snippets'),
  ('OnSnipFormSave',1,'Snippets'),
  ('OnSnippetBeforeRemove',1,'Snippets'),
  ('OnSnippetBeforeSave',1,'Snippets'),
  ('OnSnippetRemove',1,'Snippets'),
  ('OnSnippetSave',1,'Snippets'),
  ('OnTempFormDelete',1,'Templates'),
  ('OnTempFormPrerender',1,'Templates'),
  ('OnTempFormRender',1,'Templates'),
  ('OnTempFormSave',1,'Templates'),
  ('OnTemplateBeforeRemove',1,'Templates'),
  ('OnTemplateBeforeSave',1,'Templates'),
  ('OnTemplateRemove',1,'Templates'),
  ('OnTemplateSave',1,'Templates'),
  ('OnTemplateVarBeforeRemove',1,'Template Variables'),
  ('OnTemplateVarBeforeSave',1,'Template Variables'),
  ('OnTemplateVarRemove',1,'Template Variables'),
  ('OnTemplateVarSave',1,'Template Variables'),
  ('OnTVFormDelete',1,'Template Variables'),
  ('OnTVFormPrerender',1,'Template Variables'),
  ('OnTVFormRender',1,'Template Variables'),
  ('OnTVFormSave',1,'Template Variables'),
  ('OnTVInputPropertiesList',1,'Template Variables'),
  ('OnTVInputRenderList',1,'Template Variables'),
  ('OnTVOutputRenderList',1,'Template Variables'),
  ('OnTVOutputRenderPropertiesList',1,'Template Variables'),
  ('OnUserActivate',1,'Users'),
  ('OnUserAddToGroup',1,'User Groups'),
  ('OnUserBeforeAddToGroup',1,'User Groups'),
  ('OnUserBeforeRemove',1,'Users'),
  ('OnUserBeforeRemoveFromGroup',1,'User Groups'),
  ('OnUserBeforeSave',1,'Users'),
  ('OnUserChangePassword',1,'Users'),
  ('OnUserDeactivate',1,'Users'),
  ('OnUserFormDelete',1,'Users'),
  ('OnUserFormPrerender',1,'Users'),
  ('OnUserFormRender',1,'Users'),
  ('OnUserFormSave',1,'Users'),
  ('OnUserGroupBeforeRemove',1,'User Groups'),
  ('OnUserGroupBeforeSave',1,'User Groups'),
  ('OnUserGroupFormSave',1,'User Groups'),
  ('OnUserGroupRemove',1,'User Groups'),
  ('OnUserGroupSave',1,'User Groups'),
  ('OnUserNotFound',1,'Users'),
  ('OnUserRemove',1,'Users'),
  ('OnUserRemoveFromGroup',1,'User Groups'),
  ('OnUserSave',1,'Users'),
  ('OnWebAuthentication',3,'Security'),
  ('OnWebLogin',3,'Security'),
  ('OnWebLogout',3,'Security'),
  ('OnWebPageComplete',5,'System'),
  ('OnWebPageInit',5,'System'),
  ('OnWebPagePrerender',5,'System');
COMMIT;

#
# Data for the `modx_system_settings` table  (LIMIT 0,500)
#

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES 
  ('access_category_enabled','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),
  ('access_context_enabled','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),
  ('access_resource_group_enabled','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),
  ('allow_forward_across_contexts','','combo-boolean','core','system','0000-00-00 00:00:00'),
  ('allow_manager_login_forgot_password','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),
  ('allow_multiple_emails','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),
  ('allow_tags_in_post','1','combo-boolean','core','system','0000-00-00 00:00:00'),
  ('archive_with','','combo-boolean','core','system','0000-00-00 00:00:00'),
  ('automatic_alias','1','combo-boolean','core','furls','2012-02-02 12:52:00'),
  ('auto_check_pkg_updates','1','combo-boolean','core','system','0000-00-00 00:00:00'),
  ('auto_check_pkg_updates_cache_expire','15','textfield','core','system','0000-00-00 00:00:00'),
  ('auto_menuindex','1','combo-boolean','core','site','0000-00-00 00:00:00'),
  ('base_help_url','http://rtfm.modx.com/display/revolution20/','textfield','core','manager','0000-00-00 00:00:00'),
  ('blocked_minutes','60','textfield','core','authentication','0000-00-00 00:00:00'),
  ('cache_action_map','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('cache_context_settings','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('cache_db','0','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('cache_db_expires','0','textfield','core','caching','0000-00-00 00:00:00'),
  ('cache_db_session','0','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('cache_db_session_lifetime','','textfield','core','caching','0000-00-00 00:00:00'),
  ('cache_default','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('cache_disabled','0','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('cache_expires','0','textfield','core','caching','0000-00-00 00:00:00'),
  ('cache_format','0','textfield','core','caching','0000-00-00 00:00:00'),
  ('cache_handler','xPDOFileCache','textfield','core','caching','0000-00-00 00:00:00'),
  ('cache_lang_js','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('cache_lexicon_topics','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('cache_noncore_lexicon_topics','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('cache_resource','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('cache_resource_expires','0','textfield','core','caching','0000-00-00 00:00:00'),
  ('cache_scripts','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('cache_system_settings','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('clear_cache_refresh_trees','0','combo-boolean','core','caching','0000-00-00 00:00:00'),
  ('codemirror.enable','1','combo-boolean','codemirror','Editor','0000-00-00 00:00:00'),
  ('compress_css','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
  ('compress_js','0','combo-boolean','core','manager','2012-01-26 15:39:54'),
  ('compress_js_groups','','combo-boolean','core','manager','0000-00-00 00:00:00'),
  ('compress_js_max_files','10','textfield','core','manager','0000-00-00 00:00:00'),
  ('container_suffix','.html','textfield','core','furls','2012-02-02 12:52:09'),
  ('context_tree_sort','','combo-boolean','core','manager','0000-00-00 00:00:00'),
  ('context_tree_sortby','rank','textfield','core','manager','0000-00-00 00:00:00'),
  ('context_tree_sortdir','ASC','textfield','core','manager','0000-00-00 00:00:00'),
  ('cultureKey','ru','modx-combo-language','core','language','2012-01-26 15:31:18'),
  ('date_timezone','','textfield','core','system','0000-00-00 00:00:00'),
  ('debug','','textfield','core','system','0000-00-00 00:00:00'),
  ('default_content_type','1','modx-combo-content-type','core','site','0000-00-00 00:00:00'),
  ('default_duplicate_publish_option','preserve','textfield','core','manager','0000-00-00 00:00:00'),
  ('default_media_source','1','modx-combo-source','core','manager','0000-00-00 00:00:00'),
  ('default_per_page','20','textfield','core','manager','0000-00-00 00:00:00'),
  ('default_template','1','modx-combo-template','core','site','0000-00-00 00:00:00'),
  ('editor_css_path','','textfield','core','editor','0000-00-00 00:00:00'),
  ('editor_css_selectors','','textfield','core','editor','0000-00-00 00:00:00'),
  ('emailsender','admin@modx.loc','textfield','core','authentication','2012-01-26 15:31:17'),
  ('emailsubject','Your login details','textfield','core','authentication','0000-00-00 00:00:00'),
  ('enable_dragdrop','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
  ('error_page','1','textfield','core','site','0000-00-00 00:00:00'),
  ('failed_login_attempts','5','textfield','core','authentication','0000-00-00 00:00:00'),
  ('feed_modx_news','http://feeds.feedburner.com/modx-announce','textfield','core','system','0000-00-00 00:00:00'),
  ('feed_modx_news_enabled','1','combo-boolean','core','system','0000-00-00 00:00:00'),
  ('feed_modx_security','http://feeds.feedburner.com/modxsecurity','textfield','core','system','0000-00-00 00:00:00'),
  ('feed_modx_security_enabled','1','combo-boolean','core','system','0000-00-00 00:00:00'),
  ('fe_editor_lang','en','modx-combo-language','core','language','0000-00-00 00:00:00'),
  ('filemanager_path','','textfield','core','file','0000-00-00 00:00:00'),
  ('filemanager_path_relative','1','combo-boolean','core','file','0000-00-00 00:00:00'),
  ('filemanager_url','','textfield','core','file','0000-00-00 00:00:00'),
  ('filemanager_url_relative','1','combo-boolean','core','file','0000-00-00 00:00:00'),
  ('forgot_login_email','<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>','textarea','core','authentication','0000-00-00 00:00:00'),
  ('forward_merge_excludes','type,published,class_key,context_key','textfield','core','system','0000-00-00 00:00:00'),
  ('friendly_alias_lowercase_only','0','combo-boolean','core','furls','2012-02-02 12:52:20'),
  ('friendly_alias_max_length','0','textfield','core','furls','0000-00-00 00:00:00'),
  ('friendly_alias_restrict_chars','pattern','textfield','core','furls','0000-00-00 00:00:00'),
  ('friendly_alias_restrict_chars_pattern','/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^''\\\\]/','textfield','core','furls','0000-00-00 00:00:00'),
  ('friendly_alias_strip_element_tags','1','combo-boolean','core','furls','0000-00-00 00:00:00'),
  ('friendly_alias_translit','none','textfield','core','furls','0000-00-00 00:00:00'),
  ('friendly_alias_translit_class','translit.modTransliterate','textfield','core','furls','0000-00-00 00:00:00'),
  ('friendly_alias_translit_class_path','{core_path}components/','textfield','core','furls','0000-00-00 00:00:00'),
  ('friendly_alias_trim_chars','/.-_','textfield','core','furls','0000-00-00 00:00:00'),
  ('friendly_alias_word_delimiter','-','textfield','core','furls','0000-00-00 00:00:00'),
  ('friendly_alias_word_delimiters','-_','textfield','core','furls','0000-00-00 00:00:00'),
  ('friendly_urls','1','combo-boolean','core','furls','2012-02-02 12:52:36'),
  ('global_duplicate_uri_check','1','combo-boolean','core','furls','2012-02-02 12:52:42'),
  ('hidemenu_default','0','combo-boolean','core','site','0000-00-00 00:00:00'),
  ('inline_help','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
  ('link_tag_scheme','-1','textfield','core','site','0000-00-00 00:00:00'),
  ('locale','','textfield','core','language','0000-00-00 00:00:00'),
  ('log_level','1','textfield','core','system','0000-00-00 00:00:00'),
  ('log_target','FILE','textfield','core','system','0000-00-00 00:00:00'),
  ('mail_charset','UTF-8','modx-combo-charset','core','mail','0000-00-00 00:00:00'),
  ('mail_encoding','8bit','textfield','core','mail','0000-00-00 00:00:00'),
  ('mail_smtp_auth','','combo-boolean','core','mail','0000-00-00 00:00:00'),
  ('mail_smtp_helo','','textfield','core','mail','0000-00-00 00:00:00'),
  ('mail_smtp_hosts','localhost','textfield','core','mail','0000-00-00 00:00:00'),
  ('mail_smtp_keepalive','','combo-boolean','core','mail','0000-00-00 00:00:00'),
  ('mail_smtp_pass','','text-password','core','mail','0000-00-00 00:00:00'),
  ('mail_smtp_port','587','textfield','core','mail','0000-00-00 00:00:00'),
  ('mail_smtp_prefix','','textfield','core','mail','0000-00-00 00:00:00'),
  ('mail_smtp_single_to','','combo-boolean','core','mail','0000-00-00 00:00:00'),
  ('mail_smtp_timeout','10','textfield','core','mail','0000-00-00 00:00:00'),
  ('mail_smtp_user','','textfield','core','mail','0000-00-00 00:00:00'),
  ('mail_use_smtp','','combo-boolean','core','mail','0000-00-00 00:00:00'),
  ('manager_date_format','Y-m-d','textfield','core','manager','0000-00-00 00:00:00'),
  ('manager_direction','ltr','textfield','core','language','0000-00-00 00:00:00'),
  ('manager_favicon_url','','textfield','core','manager','0000-00-00 00:00:00'),
  ('manager_html5_cache','0','combo-boolean','core','manager','0000-00-00 00:00:00'),
  ('manager_js_cache_file_locking','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
  ('manager_js_cache_max_age','3600','textfield','core','manager','0000-00-00 00:00:00'),
  ('manager_js_document_root','','textfield','core','manager','0000-00-00 00:00:00'),
  ('manager_js_zlib_output_compression','0','combo-boolean','core','manager','0000-00-00 00:00:00'),
  ('manager_language','ru','modx-combo-language','core','language','2012-01-26 15:31:18'),
  ('manager_lang_attribute','ru','textfield','core','language','2012-01-26 15:31:18'),
  ('manager_login_url_alternate','','textfield','core','authentication','0000-00-00 00:00:00'),
  ('manager_theme','default','textfield','core','manager','0000-00-00 00:00:00'),
  ('manager_time_format','g:i a','textfield','core','manager','0000-00-00 00:00:00'),
  ('modx_charset','UTF-8','modx-combo-charset','core','language','0000-00-00 00:00:00'),
  ('password_generated_length','8','textfield','core','authentication','0000-00-00 00:00:00'),
  ('password_min_length','8','textfield','core','authentication','0000-00-00 00:00:00'),
  ('phpthumb_allow_src_above_docroot','','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_cache_maxage','30','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_cache_maxfiles','10000','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_cache_maxsize','100','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_cache_source_enabled','','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_document_root','','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_error_bgcolor','CCCCFF','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_error_fontsize','1','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_error_textcolor','FF0000','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_far','C','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_imagemagick_path','','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_nohotlink_enabled','1','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_nohotlink_erase_image','1','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_nohotlink_text_message','Off-server thumbnailing is not allowed','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_nohotlink_valid_domains','{http_host}','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_nooffsitelink_enabled','','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_nooffsitelink_erase_image','1','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_nooffsitelink_require_refer','','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_nooffsitelink_text_message','Off-server linking is not allowed','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_nooffsitelink_valid_domains','{http_host}','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_nooffsitelink_watermark_src','','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('phpthumb_zoomcrop','0','textfield','core','phpthumb','0000-00-00 00:00:00'),
  ('principal_targets','modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource','textfield','core','authentication','0000-00-00 00:00:00'),
  ('proxy_auth_type','BASIC','textfield','core','proxy','0000-00-00 00:00:00'),
  ('proxy_host','','textfield','core','proxy','0000-00-00 00:00:00'),
  ('proxy_password','','text-password','core','proxy','0000-00-00 00:00:00'),
  ('proxy_port','','textfield','core','proxy','0000-00-00 00:00:00'),
  ('proxy_username','','textfield','core','proxy','0000-00-00 00:00:00'),
  ('publish_default','','combo-boolean','core','site','0000-00-00 00:00:00'),
  ('rb_base_dir','','textfield','core','file','0000-00-00 00:00:00'),
  ('rb_base_url','','textfield','core','file','0000-00-00 00:00:00'),
  ('request_controller','index.php','textfield','core','gateway','0000-00-00 00:00:00'),
  ('request_method_strict','0','combo-boolean','core','gateway','0000-00-00 00:00:00'),
  ('request_param_alias','q','textfield','core','gateway','0000-00-00 00:00:00'),
  ('request_param_id','id','textfield','core','gateway','0000-00-00 00:00:00'),
  ('resolve_hostnames','0','combo-boolean','core','system','0000-00-00 00:00:00'),
  ('resource_tree_node_name','pagetitle','textfield','core','manager','0000-00-00 00:00:00'),
  ('resource_tree_node_tooltip','','textfield','core','manager','0000-00-00 00:00:00'),
  ('richtext_default','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
  ('search_default','1','combo-boolean','core','site','0000-00-00 00:00:00'),
  ('server_offset_time','0','textfield','core','system','0000-00-00 00:00:00'),
  ('server_protocol','http','textfield','core','system','0000-00-00 00:00:00'),
  ('session_cookie_domain','','textfield','core','session','0000-00-00 00:00:00'),
  ('session_cookie_lifetime','604800','textfield','core','session','0000-00-00 00:00:00'),
  ('session_cookie_path','','textfield','core','session','0000-00-00 00:00:00'),
  ('session_cookie_secure','','combo-boolean','core','session','0000-00-00 00:00:00'),
  ('session_gc_maxlifetime','604800','textfield','core','session','0000-00-00 00:00:00'),
  ('session_handler_class','modSessionHandler','textfield','core','session','0000-00-00 00:00:00'),
  ('session_name','','textfield','core','session','0000-00-00 00:00:00'),
  ('settings_distro','advanced','textfield','core','system','0000-00-00 00:00:00'),
  ('settings_version','2.2.0-pl2','textfield','core','system','0000-00-00 00:00:00'),
  ('set_header','1','combo-boolean','core','system','0000-00-00 00:00:00'),
  ('show_tv_categories_header','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
  ('signupemail_message','<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>','textarea','core','authentication','0000-00-00 00:00:00'),
  ('site_name','MODX Revolution','textfield','core','site','0000-00-00 00:00:00'),
  ('site_start','1','textfield','core','site','0000-00-00 00:00:00'),
  ('site_status','1','combo-boolean','core','site','0000-00-00 00:00:00'),
  ('site_unavailable_message','The site is currently unavailable','textfield','core','site','0000-00-00 00:00:00'),
  ('site_unavailable_page','0','textfield','core','site','0000-00-00 00:00:00'),
  ('strip_image_paths','1','combo-boolean','core','file','0000-00-00 00:00:00'),
  ('symlink_merge_fields','1','combo-boolean','core','site','0000-00-00 00:00:00'),
  ('topmenu_show_descriptions','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
  ('tree_default_sort','menuindex','textfield','core','manager','0000-00-00 00:00:00'),
  ('tree_root_id','0','numberfield','core','manager','0000-00-00 00:00:00'),
  ('tvs_below_content','0','combo-boolean','core','manager','0000-00-00 00:00:00'),
  ('udperms_allowroot','','combo-boolean','core','authentication','0000-00-00 00:00:00'),
  ('unauthorized_page','1','textfield','core','site','0000-00-00 00:00:00'),
  ('upload_files','txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,htaccess,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,xls,txt,ppt,pptx,docx,xlsx,jpg,jpeg,png,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf,docx,pptx,xlsx','textfield','core','file','0000-00-00 00:00:00'),
  ('upload_flash','swf,fla','textfield','core','file','0000-00-00 00:00:00'),
  ('upload_images','jpg,jpeg,png,gif,psd,ico,bmp','textfield','core','file','0000-00-00 00:00:00'),
  ('upload_maxsize','1048576','textfield','core','file','0000-00-00 00:00:00'),
  ('upload_media','mp3,wav,au,wmv,avi,mpg,mpeg','textfield','core','file','0000-00-00 00:00:00'),
  ('use_alias_path','1','combo-boolean','core','furls','2012-02-02 12:52:48'),
  ('use_browser','1','combo-boolean','core','file','0000-00-00 00:00:00'),
  ('use_editor','1','combo-boolean','core','editor','0000-00-00 00:00:00'),
  ('use_multibyte','','combo-boolean','core','language','0000-00-00 00:00:00'),
  ('use_weblink_target','','combo-boolean','core','site','0000-00-00 00:00:00'),
  ('webpwdreminder_message','<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>','textarea','core','authentication','0000-00-00 00:00:00'),
  ('websignupemail_message','<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>','textarea','core','authentication','0000-00-00 00:00:00'),
  ('welcome_screen','','combo-boolean','core','manager','2012-01-26 15:31:46'),
  ('welcome_screen_url','http://misc.modx.com/revolution/welcome.22.html','textfield','core','manager','0000-00-00 00:00:00'),
  ('which_editor','','modx-combo-rte','core','editor','0000-00-00 00:00:00'),
  ('which_element_editor','CodeMirror','modx-combo-rte','core','editor','2012-01-27 15:27:58'),
  ('xhtml_urls','1','combo-boolean','core','site','0000-00-00 00:00:00');
COMMIT;

#
# Data for the `modx_transport_packages` table  (LIMIT 0,500)
#

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES 
  ('breadcrumbs-1.1.0-pl','2012-02-03 12:14:07','2012-02-03 14:29:41','2012-02-03 14:29:41',0,1,1,0,'breadcrumbs-1.1.0-pl.transport.zip',NULL,'a:34:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:412:\"--------------------\nSnippet: Breadcrumbs\n--------------------\nVersion: 1.0\nDate: 2008.10.08\nAuthor: jaredc@honeydewdesign.com\nEditor: Shaun McCormick <shaun@collabpad.com>\nHonorable mentions:\n- Bill Wilson\n- wendy@djamoer.net\n- grad\n\nThis snippet was designed to show the path through the various levels of site structure\nback to the root. It is NOT necessarily the path the user took to arrive at a given\npage.\";s:9:\"changelog\";s:497:\"Changelog file for breadcrumbs.\n\nBreadcrumbs 1.1-rc2 (August 31, 2010)\n====================================\n- Fix bug that skips the immediate children of site_start\n\nBreadcrumbs 1.1-rc1 (March 19, 2010)\n====================================\n- Updated version for Revo RC1\n- [#ADDON-84], [#ADDON-73] Fixed bug with showCrumbsAtHome and showCurrentCrumb\n- Consolidated settings into $scriptProperties, which cuts down snippet file code\n- Added initialize() function to handle default config settings\";s:9:\"signature\";s:20:\"breadcrumbs-1.1.0-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:20:\"Продолжить\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:704:\"function (va) {\n    var g = Ext.getCmp(\"modx-package-grid\");\n    if (!g) {\n        return false;\n    }\n    var r = g.menu.record.data ? g.menu.record.data : g.menu.record;\n    var topic = \"/workspace/package/install/\" + r.signature + \"/\";\n    this.loadConsole(Ext.getBody(), topic);\n    va = va || {};\n    Ext.apply(va, {action: \"install\", signature: r.signature, register: \"mgr\", topic: topic});\n    var c = this.console;\n    MODx.Ajax.request({url: MODx.config.connectors_url + \"workspace/packages.php\", params: va, listeners: {success: {fn: function () {this.activate();Ext.getCmp(\"modx-package-grid\").getStore().load();}, scope: this}, failure: {fn: function () {this.activate();}, scope: this}}});\n}\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:7:\"install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:48:\"/workspace/package/install/breadcrumbs-1.1.0-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4f215590e74cf4.80639470_14f2bb24a9a5fb5.74280653\";s:14:\"package_action\";i:0;}','Breadcrumbs','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556a9ab2b083396d0000eb\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556a9ab2b083396d0000eb\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:20:\"breadcrumbs-1.1.0-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.1.0\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"0\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:246:\"<p>Creates a highly configurable and styleable breadcrumb navigation trail.</p>\n<p>\n</p><p>&nbsp;</p>\n<p>Breadcrumbs 1.1-rc2 (August 31, 2010)</p>\n<p>\n</p><ul>\n<li>Fix bug that skips the immediate children of site_start</li>\n</ul>\n<p></p>\n<p></p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:22:\"<p>Initial content</p>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-08-22 19:29:21 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-08-22 19:29:21 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"37141\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:11:\"Breadcrumbs\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4e52ae12f24554618600003e\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4e52ae11f24554618600003c\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:34:\"breadcrumbs-1.1.0-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"6557\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"217.27.40.194\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4e52ae12f24554618600003e\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:20:\"breadcrumbs-1.1.0-pl\";s:8:\"children\";a:0:{}}}',1,1,0,'pl',0),
  ('codemirror-2.0.0-pl','2012-01-27 03:27:20','2012-01-27 15:27:58','2012-01-27 15:27:58',0,1,1,0,'codemirror-2.0.0-pl.transport.zip',NULL,'a:34:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:413:\"--------------------\r\nExtra: CodeMirror\r\n--------------------\r\nVersion: 1.0.0\r\nCreated: June 23rd, 2010\r\nAuthor: Shaun McCormick <shaun+codemirror@modx.com>\r\nLicense: GNU GPLv2 (or later at your option)\r\n\r\nIntegrates CodeMirror RTE into MODx Revolution.\r\n\r\nPlease see the documentation at:\r\nhttp://rtfm.modx.com/display/ADDON/CodeMirror/\r\n\r\nThanks for using CodeMirror!\r\nShaun McCormick\r\nshaun+codemirror@modx.com\";s:9:\"changelog\";s:999:\"Changelog for CodeMirror integration into MODx Revolution.\r\n\r\nCodeMirror 2.0.0\r\n====================================\r\n- Compress css/js for faster loading\r\n- Add search/replace field via showSearchForm property\r\n- Add line highlighting via highlightLine property\r\n- Add enterMode, electricChars, firstLineNumber, indentWithTabs, matchBrackets, undoDepth properties for more configuration options\r\n- Upgrade to CodeMirror 2\r\n\r\nCodeMirror 1.1.0\r\n====================================\r\n- Added extra checks and options for ensuring changes get saved\r\n- Integrated into OnFileEditFormPrerender, now can use in file editing\r\n\r\nCodeMirror 1.0.1\r\n====================================\r\n- Now auto-assigns which_element_editor to CodeMirror\r\n\r\nCodeMirror 1.0.0\r\n====================================\r\n- Added plugin properties to adjust how CodeMirror behaves\r\n- Now works on TV default value fields\r\n- Consolidated JS files, fixed too-fast loading in Chrome issue\r\n- Prepared for rc1 release\r\n- Initial commit\";s:9:\"signature\";s:19:\"codemirror-2.0.0-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:20:\"Продолжить\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:704:\"function (va) {\n    var g = Ext.getCmp(\"modx-package-grid\");\n    if (!g) {\n        return false;\n    }\n    var r = g.menu.record.data ? g.menu.record.data : g.menu.record;\n    var topic = \"/workspace/package/install/\" + r.signature + \"/\";\n    this.loadConsole(Ext.getBody(), topic);\n    va = va || {};\n    Ext.apply(va, {action: \"install\", signature: r.signature, register: \"mgr\", topic: topic});\n    var c = this.console;\n    MODx.Ajax.request({url: MODx.config.connectors_url + \"workspace/packages.php\", params: va, listeners: {success: {fn: function () {this.activate();Ext.getCmp(\"modx-package-grid\").getStore().load();}, scope: this}, failure: {fn: function () {this.activate();}, scope: this}}});\n}\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:7:\"install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/codemirror-2.0.0-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4f215590e74cf4.80639470_14f2155c1b41587.18400479\";s:14:\"package_action\";i:0;}','CodeMirror','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556ccab2b083396d000e08\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556ccab2b083396d000e08\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:19:\"codemirror-2.0.0-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"2.0.0\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"0\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"0\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:189:\"<p>CodeMirror integration for MODx Revolution. Get custom syntax highlighting in your Elements.</p>\n<p>CodeMirror 1.1.0-pl+ only works with Revolution 2.0.1 or later.</p><ul>\n</ul>\n<p>\n</p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:526:\"<p></p><p><b>New in 2.0.0</b></p><p></p><ul><li><li>Tweak of height css of editor to allow fluid heights&nbsp;</li><li>Improve styling of search/replace buttons&nbsp;</li></li><li>Compress css/js for faster loading</li><li>Add search/replace field via showSearchForm property</li><li>Add line highlighting via highlightLine property</li><li>Add enterMode, electricChars, firstLineNumber, indentWithTabs, matchBrackets, undoDepth properties for more configuration options</li><li>Upgrade to CodeMirror 2</li></ul><p></p><p></p>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-06-07 14:39:21 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-06-07 14:39:21 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"18942\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:10:\"CodeMirror\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:4:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:78:\"http://modx.s3.amazonaws.com/extras/4d556ccab2b083396d000e08/codemirror-ss.png\";s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4dee381af24554789300015d\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4dee3819f24554789300015b\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:33:\"codemirror-2.0.0-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"8479\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"213.246.49.17\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4dee381af24554789300015d\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:19:\"codemirror-2.0.0-pl\";s:8:\"children\";a:0:{}}}',2,0,0,'pl',0),
  ('getpage-1.2.2-pl','2012-02-03 12:15:22','2012-02-03 12:15:30',NULL,0,1,1,0,'getpage-1.2.2-pl.transport.zip',NULL,'a:3:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:397:\"--------------------\nSnippet: getPage\n--------------------\nVersion: 1.2.2-pl\nReleased: December 9, 2011\nSince: March 19, 2010\nAuthor: Jason Coward <jason@modxcms.com>\n\nA generic wrapper snippet for returning paged results and navigation from snippets that return limitable collections. This release requires MODX Revolution 2.1+.\n\nOfficial Documentation:\nhttp://rtfm.modx.com/display/ADDON/getPage\";s:9:\"changelog\";s:1411:\"Changelog for getPage.\n\ngetPage 1.2.2-pl (December 9, 2011)\n====================================\n- Check $_GET before $_REQUEST for pageVarKey and limit overrides\n- [#6] Add pageOneLimit to allow different limit on first results page\n\ngetPage 1.2.1-pl (September 15, 2011)\n====================================\n- Remove inadvertent debugging statement in snippet code\n\ngetPage 1.2.0-pl (September 14, 2011)\n====================================\n- [#5] Add pageNavOuterTpl for layout control of page nav elements\n- Allow limit of 0 in $_REQUEST to bypass paging\n- Allow empty nav tpl parameters\n- Allow unlimited page listing with &pageLimit=`0`\n\ngetPage 1.1.0-pl (March 27, 2011)\n====================================\n- Change default cacheKey property to use ''resource'' (for MODX 2.1+)\n\ngetPage 1.0.0-pl (August 18, 2010)\n====================================\n- Add support for snippets that send output toPlaceholder\n- Add firstItem and lastItem properties/placeholders\n- Add pageActiveTpl to differentiate current page link\n\ngetPage 1.0.0-rc1 (June 29, 2010)\n====================================\n- Add per page caching capabilities\n- Add changelog, license, and readme\n\ngetPage 1.0.0-beta2 (May 28, 2010)\n====================================\n- Preserve additional query string parameters when creating paging navigation\n\ngetPage 1.0.0-beta1 (March 19, 2010)\n====================================\n- Initial release\";}','getPage','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c77b2b083396d000c1b\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c77b2b083396d000c1b\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:16:\"getpage-1.2.2-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.2.2\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:8:\"opengeek\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:362:\"<p>A generic wrapper snippet for MODX Revolution 2.1+. getPage will returning paged results and navigation from snippets that return limitable collections, and optionally cache the results of unique page requests.</p><p>The release introduces the ability to specify a different limit for the first page of results via the new pageOneLimit property.</p><ul>\n</ul>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:90:\"<p>Install via Package Management.\nNOTE: requires MODX Revolution-2.1.0-rc-1 or later.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:805:\"<p></p><p style=\"margin-bottom: 15px; \"><p>getPage 1.2.2-pl (December 9, 2011)</p><p><ul><li>Check $_GET before $_REQUEST for pageVarKey and limit overrides</li><li>&#91;#6&#93; Add pageOneLimit to allow different limit on first results page</li></ul></p></p><p style=\"margin-bottom: 15px; \">getPage 1.2.1-pl (September 15, 2011)</p><p style=\"margin-bottom: 15px; \"></p><ul><li>Remove inadvertent debugging statement in snippet code</li></ul><p></p><p style=\"margin-bottom: 15px; \">getPage 1.2.0-pl (September 14, 2011)</p><ul style=\"margin-bottom: 15px; \"><li>&#91;#5&#93; Add pageNavOuterTpl for layout control of page nav elements</li><li>Allow limit of 0 in $_REQUEST to bypass paging</li><li>Allow empty nav tpl parameters</li><li>Allow unlimited page listing with &amp;pageLimit=`0`</li></ul><p></p>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-12-09 17:42:17 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:8:\"opengeek\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-12-09 17:42:17 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"17978\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:7:\"getPage\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4ee2487bf2455458e700000c\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4ee24879f2455458e700000a\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:30:\"getpage-1.2.2-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"2477\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"188.121.41.21\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4ee2487bf2455458e700000c\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:16:\"getpage-1.2.2-pl\";s:8:\"children\";a:0:{}}}',1,2,2,'pl',0),
  ('getresources-1.4.2-pl','2012-02-03 12:13:33','2012-02-03 12:13:39',NULL,0,1,1,0,'getresources-1.4.2-pl.transport.zip',NULL,'a:3:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:331:\"--------------------\nSnippet: getResources\n--------------------\nVersion: 1.4.2-pl\nReleased: December 9, 2011\nSince: December 28, 2009\nAuthor: Jason Coward <jason@modx.com>\n\nA general purpose Resource listing and summarization snippet for MODX Revolution.\n\nOfficial Documentation:\nhttp://docs.modxcms.com/display/ADDON/getResources\n\";s:9:\"changelog\";s:2603:\"Changelog for getResources.\n\ngetResources 1.4.2-pl (December 9, 2011)\n====================================\n- [#25] Add new operators to tvFilters\n- [#37] Consider default values with tvFilters\n- [#57] Fix tpl overrides and improve order\n\ngetResources 1.4.1-pl (December 8, 2011)\n====================================\n- [#57] Add support for factor-based tpls\n- [#54], [#55] Fix processTVList feature\n\ngetResources 1.4.0-pl (September 21, 2011)\n====================================\n- [#50] Use children of parents from other contexts\n- [#45] Add dbCacheFlag to control db caching of getCollection, default to false\n- [#49] Allow comma-delimited list of TV names as includeTVList or processTVList\n\ngetResources 1.3.1-pl (July 14, 2011)\n====================================\n- [#43] Allow 0 as idx property\n- [#9] Fix tvFilters grouping\n- [#46] Fix criteria issue with &resources property\n\ngetResources 1.3.0-pl (March 28, 2011)\n====================================\n- [#33] sortbyTVType: Allow numeric and datetime TV sorting via SQL CAST()\n- [#24] Fix typos in list property options\n- [#4] Support multiple sortby fields via JSON object\n- Use get() instead to toArray() if includeContent is false\n- [#22] Add &toSeparatePlaceholders property for splitting output\n\ngetResources 1.2.2-pl (October 18, 2010)\n====================================\n- [#19] Fix sortbyTV returning duplicate rows\n\ngetResources 1.2.1-pl (October 11, 2010)\n====================================\n- Remove inadvertent call to modX::setLogTarget(''ECHO'')\n\ngetResources 1.2.0-pl (September 25, 2010)\n====================================\n- Fix error when &parents is not set\n- Allow empty &sortby\n- Add ability to sort by a single Template Variable value (or default value)\n\ngetResources 1.1.0-pl (July 30, 2010)\n====================================\n- Added &toPlaceholder property for assigning results to a placeholder\n- Added &resources property for including/excluding specific resources\n- Added &showDeleted property\n- Allow multiple contexts to be passed into &context\n- Added &showUnpublish property\n- Added getresources.core_path reference for easier development\n- [#ADDON-135] Make output separator configurable via outputSeparator property\n- Add where property to allow ad hoc criteria in JSON format\n\ngetResources 1.0.0-ga (December 29, 2009)\n====================================\n- [#ADDON-81] Allow empty tvPrefix property.\n- [#ADDON-89] Allow parents property to have a value of 0.\n- Changed default value of sortbyAlias to empty string and added sortbyEscaped property with default of 0.\n- Added changelog, license, and readme.\";}','getResources','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c3db2b083396d000abe\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c3db2b083396d000abe\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:21:\"getresources-1.4.2-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.4.2\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"4\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:8:\"opengeek\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:335:\"<p>This release fixes some issues with tpl processing introduced in 1.4.1-pl for the factor-based tpls feature.</p><p>In addition, it introduces two long-requested features:</p><p><ul><li>tvFilters now consider the TemplateVar default_text</li><li>tvFilters now support all standard SQL comparison operators</li></ul></p><p></p><p></p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:37:\"<p>Install via Package Management</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:759:\"<p>getResources 1.4.2-pl (December 9, 2011)</p><p><ul><li>&#91;#25&#93; Add new operators to tvFilters</li><li>&#91;#37&#93; Consider default values with tvFilters</li><li>&#91;#57&#93; Fix tpl overrides and improve order</li></ul></p><p></p><p>getResources 1.4.1-pl (December 8, 2011)</p><p><ul><li>&#91;#57&#93; Add support for factor-based tpls</li><li>&#91;#54&#93;, &#91;#55&#93; Fix processTVList feature</li></ul></p><p></p><p>getResources 1.4.0-pl (September 21, 2011)</p><p><ul><li>&#91;#50&#93; Use children of parents from other contexts</li><li>&#91;#45&#93; Add dbCacheFlag to control db caching of getCollection, default to false</li><li>&#91;#49&#93; Allow comma-delimited list of TV names as includeTVList or processTVList</li></ul></p><p></p>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-12-09 21:02:06 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:8:\"opengeek\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-12-09 21:02:06 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"45104\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"getResources\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4ee27750f2455466c600010a\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4ee2774ef2455466c6000108\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:35:\"getresources-1.4.2-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"6334\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:10:\"46.145.6.6\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4ee27750f2455466c600010a\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:21:\"getresources-1.4.2-pl\";s:8:\"children\";a:0:{}}}',1,4,2,'pl',0),
  ('wayfinder-2.3.3-pl','2012-02-03 12:09:40','2012-02-03 14:29:49','2012-02-03 14:29:49',0,1,1,0,'wayfinder-2.3.3-pl.transport.zip',NULL,'a:34:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:804:\"::::::::::::::::::::::::::::::::::::::::\n Snippet name: Wayfinder\n Short Desc: builds site navigation\n Version: 2.3.0 (Revolution compatible)\n Authors: \n    Kyle Jaebker (muddydogpaws.com)\n    Ryan Thrash (vertexworks.com)\n    Shaun McCormick (splittingred.com)\n ::::::::::::::::::::::::::::::::::::::::\nDescription:\n    Totally refactored from original DropMenu nav builder to make it easier to\n    create custom navigation by using chunks as output templates. By using templates,\n    many of the paramaters are no longer needed for flexible output including tables,\n    unordered- or ordered-lists (ULs or OLs), definition lists (DLs) or in any other\n    format you desire.\n::::::::::::::::::::::::::::::::::::::::\nExample Usage:\n    [[Wayfinder? &startId=`0`]]\n::::::::::::::::::::::::::::::::::::::::\";s:9:\"changelog\";s:2655:\"Changelog for Wayfinder (for Revolution).\n\nWayfinder 2.3.3\n====================================\n- [#40] Add wf.level placeholder to items for showing current depth\n- [#42] Allow authenticated mgr users with view_unpublished to use new previewUnpublished property to preview unpublished Resources in menus\n- [#41] Fix issue with Wayfinder and truncated result sets due to getIterator call\n\nWayfinder 2.3.2\n====================================\n- [#36] Fix issue with multiple Wayfinder calls using &config\n- [#35] Fix issues with TV bindings rendering\n- Add \"protected\" placeholder that is 1 if Resource is protected by a Resource Group\n- Updated documentation, snippet properties descriptions\n\nWayfinder 2.3.1\n====================================\n- [#31] Add &scheme property for specifying link schemes\n- [#27] Improve caching in Wayfinder to store cache files in resource cache so cache is synced with modx core caching\n\nWayfinder 2.3.0\n====================================\n- [#14] Fix issue with hideSubMenus when using it with a non-zero startId\n- Add all fields of a Resource to the rowTpl placeholder set, such as menutitle, published, etc\n- Properly optimize TV value grabbing to properly parse and cache TVs to improve load times when using TVs in a result set\n- Ensure that caching also caches by user ID to persist access permissions through cached result sets\n\nWayfinder 2.2.0\n====================================\n- [#23] Fix issue that generated error message in error.log due to &contexts always being processed regardless of empty state\n- [#21] Fix issue with unnecessary groupby that was breaking sorting in older mysql versions\n- [#22] Add &cacheResults parameter, which caches queries for faster loading\n- [#8] Add &contexts parameter, and &startIdContext parameter if navigating across multiple contexts and using a non-0 &startId\n\nWayfinder 2.1.3\n====================================\n- [#14] Fix hideSubMenus property\n- Add templates parameter that accepts a comma-delimited list of template IDs to filter by\n- Add where parameter that accepts a JSON object for where conditions\n- Add hereId parameter for specifying the active location\n\nWayfinder 2.1.2\n====================================\n- Fixed bug with includeDocs parameter\n\nWayfinder 2.1.1\n====================================\n- Wayfinder now properly uses MODx parsing system\n- Fixed issue with includeDocs statement\n- Fixed issues with PDO statements\n- Added the missing permissions check\n- Added wayfinder parameter \"permissions\" - default to \"list\", empty to bypass permissions check\n- [#WAYFINDER-20] TemplateVariables not rendering in Wayfinder templates.\n- Added changelog.\";s:9:\"signature\";s:18:\"wayfinder-2.3.3-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:20:\"Продолжить\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:704:\"function (va) {\n    var g = Ext.getCmp(\"modx-package-grid\");\n    if (!g) {\n        return false;\n    }\n    var r = g.menu.record.data ? g.menu.record.data : g.menu.record;\n    var topic = \"/workspace/package/install/\" + r.signature + \"/\";\n    this.loadConsole(Ext.getBody(), topic);\n    va = va || {};\n    Ext.apply(va, {action: \"install\", signature: r.signature, register: \"mgr\", topic: topic});\n    var c = this.console;\n    MODx.Ajax.request({url: MODx.config.connectors_url + \"workspace/packages.php\", params: va, listeners: {success: {fn: function () {this.activate();Ext.getCmp(\"modx-package-grid\").getStore().load();}, scope: this}, failure: {fn: function () {this.activate();}, scope: this}}});\n}\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:7:\"install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:46:\"/workspace/package/install/wayfinder-2.3.3-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4f215590e74cf4.80639470_14f2bb24a9a5fb5.74280653\";s:14:\"package_action\";i:0;}','Wayfinder','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556be8b2b083396d0008bd\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556be8b2b083396d0008bd\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:18:\"wayfinder-2.3.3-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"2.3.3\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"3\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"3\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:230:\"<p>Wayfinder is a highly flexible navigation builder for MODx Revolution.</p><p>See the official docs here:&nbsp;<a href=\"http://rtfm.modx.com/display/ADDON/Wayfinder\">http://rtfm.modx.com/display/ADDON/Wayfinder</a></p><ul>\n</ul>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2306:\"<p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 2.3.3</b></p><ul><li>&#91;#40&#93; Add wf.level placeholder to items for showing current depth</li><li>&#91;#42&#93; Allow authenticated mgr users with view_unpublished to use new previewUnpublished property to preview unpublished Resources in menus</li><li>&#91;#41&#93; Fix issue with Wayfinder and truncated result sets due to getIterator call</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 2.3.2</b></p><ul><li>&#91;#36&#93; Fix issue with multiple Wayfinder calls using &amp;config</li><li>&#91;#35&#93; Fix issues with TV bindings rendering</li><li>Add \"protected\" placeholder that is 1 if Resource is protected by a Resource Group</li><li>Updated documentation, snippet properties descriptions</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 2.3.1</b></p><ul><li>&#91;#31&#93; Add &amp;scheme property for specifying link schemes</li><li>&#91;#27&#93; Improve caching in Wayfinder to store cache files in resource cache so cache is synced with modx core caching</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 2.3.0</b></p><ul><li>&#91;#14&#93; Fix issue with hideSubMenus when using it with a non-zero startId</li><li>Add all fields of a Resource to the rowTpl placeholder set, such as menutitle, published, etc</li><li>Properly optimize TV value grabbing to properly parse and cache TVs to improve load times when using TVs in a result set</li><li>Ensure that caching also caches by user ID to persist access permissions through cached result sets</li></ul><p><b>New in 2.2.0</b></p><ul><li>&#91;#23&#93; Fix issue that generated error message in error.log due to &amp;contexts always being processed regardless of empty state</li><li>&#91;#21&#93; Fix issue with unnecessary groupby that was breaking sorting in older mysql versions</li><li>&#91;#22&#93; Add &amp;cacheResults parameter, which caches queries for faster loading</li><li>&#91;#8&#93; Add &amp;contexts parameter, and &amp;startIdContext parameter if navigating across multiple contexts and using a non-0 &amp;startId</li></ul>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-10-31 16:21:50 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-10-31 16:21:50 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"94019\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:9:\"Wayfinder\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4eaecb20f24554127d0000b8\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4eaecb1ef24554127d0000b6\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:32:\"wayfinder-2.3.3-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"12568\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"77.222.40.250\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4eaecb20f24554127d0000b8\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:18:\"wayfinder-2.3.3-pl\";s:8:\"children\";a:0:{}}}',2,3,3,'pl',0);
COMMIT;

#
# Data for the `modx_transport_providers` table  (LIMIT 0,500)
#

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`) VALUES 
  (1,'modx.com','The official MODX transport facility for 3rd party components.','http://rest.modx.com/extras/','','','2012-01-04 15:51:41',NULL);
COMMIT;

#
# Data for the `modx_user_attributes` table  (LIMIT 0,500)
#

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES 
  (1,1,'Учётная запись администратора по умолчанию','admin@modx.loc','','',0,0,0,4,1328870836,1331582414,0,'kajdvg9osapdcvl8c82nfot4v6',0,0,'','','','','','','','','',NULL);
COMMIT;

#
# Data for the `modx_user_group_roles` table  (LIMIT 0,500)
#

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES 
  (1,'Member',NULL,9999),
  (2,'Super User',NULL,0);
COMMIT;

#
# Data for the `modx_users` table  (LIMIT 0,500)
#

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`) VALUES 
  (1,'admx','JDvNRgypm4yG+rYvdXWF5kc2FJSkLSOcHdMMau1X7YQ=','','modUser',1,NULL,NULL,'hashing.modPBKDF2','0c25c1706642ff0fcdb439714fd56fbf',1);
COMMIT;

#
# Data for the `modx_workspaces` table  (LIMIT 0,500)
#

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES 
  (1,'Default MODX workspace','{core_path}','2012-01-26 15:31:00',1,NULL);
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;