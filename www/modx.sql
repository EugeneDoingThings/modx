-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2017 at 02:03 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modx`
--

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_actions`
--

CREATE TABLE `modx_access_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(22, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(23, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(24, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(25, 1, 'delete_template', 'perm.delete_template_desc', 1),
(26, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(27, 1, 'delete_role', 'perm.delete_role_desc', 1),
(28, 1, 'delete_user', 'perm.delete_user_desc', 1),
(29, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(30, 1, 'directory_create', 'perm.directory_create_desc', 1),
(31, 1, 'directory_list', 'perm.directory_list_desc', 1),
(32, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(33, 1, 'directory_update', 'perm.directory_update_desc', 1),
(34, 1, 'edit_category', 'perm.edit_category_desc', 1),
(35, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(36, 1, 'edit_context', 'perm.edit_context_desc', 1),
(37, 1, 'edit_document', 'perm.edit_document_desc', 1),
(38, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(39, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(40, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(41, 1, 'edit_role', 'perm.edit_role_desc', 1),
(42, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(43, 1, 'edit_template', 'perm.edit_template_desc', 1),
(44, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(45, 1, 'edit_user', 'perm.edit_user_desc', 1),
(46, 1, 'element_tree', 'perm.element_tree_desc', 1),
(47, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(48, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(49, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(50, 1, 'export_static', 'perm.export_static_desc', 1),
(51, 1, 'file_create', 'perm.file_create_desc', 1),
(52, 1, 'file_list', 'perm.file_list_desc', 1),
(53, 1, 'file_manager', 'perm.file_manager_desc', 1),
(54, 1, 'file_remove', 'perm.file_remove_desc', 1),
(55, 1, 'file_tree', 'perm.file_tree_desc', 1),
(56, 1, 'file_update', 'perm.file_update_desc', 1),
(57, 1, 'file_upload', 'perm.file_upload_desc', 1),
(58, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(59, 1, 'file_view', 'perm.file_view_desc', 1),
(60, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(61, 1, 'frames', 'perm.frames_desc', 1),
(62, 1, 'help', 'perm.help_desc', 1),
(63, 1, 'home', 'perm.home_desc', 1),
(64, 1, 'import_static', 'perm.import_static_desc', 1),
(65, 1, 'languages', 'perm.languages_desc', 1),
(66, 1, 'lexicons', 'perm.lexicons_desc', 1),
(67, 1, 'list', 'perm.list_desc', 1),
(68, 1, 'load', 'perm.load_desc', 1),
(69, 1, 'logout', 'perm.logout_desc', 1),
(70, 1, 'logs', 'perm.logs_desc', 1),
(71, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(72, 1, 'menu_security', 'perm.menu_security_desc', 1),
(73, 1, 'menu_site', 'perm.menu_site_desc', 1),
(74, 1, 'menu_support', 'perm.menu_support_desc', 1),
(75, 1, 'menu_system', 'perm.menu_system_desc', 1),
(76, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(77, 1, 'menu_user', 'perm.menu_user_desc', 1),
(78, 1, 'menus', 'perm.menus_desc', 1),
(79, 1, 'messages', 'perm.messages_desc', 1),
(80, 1, 'namespaces', 'perm.namespaces_desc', 1),
(81, 1, 'new_category', 'perm.new_category_desc', 1),
(82, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(83, 1, 'new_context', 'perm.new_context_desc', 1),
(84, 1, 'new_document', 'perm.new_document_desc', 1),
(85, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(86, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(87, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(88, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(89, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(90, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(91, 1, 'new_role', 'perm.new_role_desc', 1),
(92, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(93, 1, 'new_template', 'perm.new_template_desc', 1),
(94, 1, 'new_tv', 'perm.new_tv_desc', 1),
(95, 1, 'new_user', 'perm.new_user_desc', 1),
(96, 1, 'packages', 'perm.packages_desc', 1),
(97, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(98, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(99, 1, 'policy_new', 'perm.policy_new_desc', 1),
(100, 1, 'policy_save', 'perm.policy_save_desc', 1),
(101, 1, 'policy_view', 'perm.policy_view_desc', 1),
(102, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(103, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(104, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(105, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(106, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(107, 1, 'property_sets', 'perm.property_sets_desc', 1),
(108, 1, 'providers', 'perm.providers_desc', 1),
(109, 1, 'publish_document', 'perm.publish_document_desc', 1),
(110, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(111, 1, 'remove', 'perm.remove_desc', 1),
(112, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(113, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(114, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(115, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(116, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(117, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(118, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(119, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(120, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(121, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(122, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(123, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(124, 1, 'save', 'perm.save_desc', 1),
(125, 1, 'save_category', 'perm.save_category_desc', 1),
(126, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(127, 1, 'save_context', 'perm.save_context_desc', 1),
(128, 1, 'save_document', 'perm.save_document_desc', 1),
(129, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(130, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(131, 1, 'save_role', 'perm.save_role_desc', 1),
(132, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(133, 1, 'save_template', 'perm.save_template_desc', 1),
(134, 1, 'save_tv', 'perm.save_tv_desc', 1),
(135, 1, 'save_user', 'perm.save_user_desc', 1),
(136, 1, 'search', 'perm.search_desc', 1),
(137, 1, 'settings', 'perm.settings_desc', 1),
(138, 1, 'events', 'perm.events_desc', 1),
(139, 1, 'source_save', 'perm.source_save_desc', 1),
(140, 1, 'source_delete', 'perm.source_delete_desc', 1),
(141, 1, 'source_edit', 'perm.source_edit_desc', 1),
(142, 1, 'source_view', 'perm.source_view_desc', 1),
(143, 1, 'sources', 'perm.sources_desc', 1),
(144, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(145, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(146, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(147, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(148, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(149, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(150, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(151, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(152, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(153, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(154, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(155, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(156, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(157, 1, 'view', 'perm.view_desc', 1),
(158, 1, 'view_category', 'perm.view_category_desc', 1),
(159, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(160, 1, 'view_context', 'perm.view_context_desc', 1),
(161, 1, 'view_document', 'perm.view_document_desc', 1),
(162, 1, 'view_element', 'perm.view_element_desc', 1),
(163, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(164, 1, 'view_offline', 'perm.view_offline_desc', 1),
(165, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(166, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(167, 1, 'view_role', 'perm.view_role_desc', 1),
(168, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(169, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(170, 1, 'view_template', 'perm.view_template_desc', 1),
(171, 1, 'view_tv', 'perm.view_tv_desc', 1),
(172, 1, 'view_user', 'perm.view_user_desc', 1),
(173, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(174, 1, 'workspaces', 'perm.workspaces_desc', 1),
(175, 2, 'add_children', 'perm.add_children_desc', 1),
(176, 2, 'copy', 'perm.copy_desc', 1),
(177, 2, 'create', 'perm.create_desc', 1),
(178, 2, 'delete', 'perm.delete_desc', 1),
(179, 2, 'list', 'perm.list_desc', 1),
(180, 2, 'load', 'perm.load_desc', 1),
(181, 2, 'move', 'perm.move_desc', 1),
(182, 2, 'publish', 'perm.publish_desc', 1),
(183, 2, 'remove', 'perm.remove_desc', 1),
(184, 2, 'save', 'perm.save_desc', 1),
(185, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(186, 2, 'undelete', 'perm.undelete_desc', 1),
(187, 2, 'unpublish', 'perm.unpublish_desc', 1),
(188, 2, 'view', 'perm.view_desc', 1),
(189, 3, 'load', 'perm.load_desc', 1),
(190, 3, 'list', 'perm.list_desc', 1),
(191, 3, 'view', 'perm.view_desc', 1),
(192, 3, 'save', 'perm.save_desc', 1),
(193, 3, 'remove', 'perm.remove_desc', 1),
(194, 4, 'add_children', 'perm.add_children_desc', 1),
(195, 4, 'create', 'perm.create_desc', 1),
(196, 4, 'copy', 'perm.copy_desc', 1),
(197, 4, 'delete', 'perm.delete_desc', 1),
(198, 4, 'list', 'perm.list_desc', 1),
(199, 4, 'load', 'perm.load_desc', 1),
(200, 4, 'remove', 'perm.remove_desc', 1),
(201, 4, 'save', 'perm.save_desc', 1),
(202, 4, 'view', 'perm.view_desc', 1),
(203, 5, 'create', 'perm.create_desc', 1),
(204, 5, 'copy', 'perm.copy_desc', 1),
(205, 5, 'list', 'perm.list_desc', 1),
(206, 5, 'load', 'perm.load_desc', 1),
(207, 5, 'remove', 'perm.remove_desc', 1),
(208, 5, 'save', 'perm.save_desc', 1),
(209, 5, 'view', 'perm.view_desc', 1),
(210, 6, 'load', 'perm.load_desc', 1),
(211, 6, 'list', 'perm.list_desc', 1),
(212, 6, 'view', 'perm.view_desc', 1),
(213, 6, 'save', 'perm.save_desc', 1),
(214, 6, 'remove', 'perm.remove_desc', 1),
(215, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(216, 6, 'copy', 'perm.copy_desc', 1),
(217, 7, 'list', 'perm.list_desc', 1),
(218, 7, 'load', 'perm.load_desc', 1),
(219, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{"add_children":true,"create":true,"copy":true,"delete":true,"list":true,"load":true,"move":true,"publish":true,"remove":true,"save":true,"steal_lock":true,"undelete":true,"unpublish":true,"view":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{"about":true,"access_permissions":true,"actions":true,"change_password":true,"change_profile":true,"charsets":true,"class_map":true,"components":true,"content_types":true,"countries":true,"create":true,"credits":true,"customize_forms":true,"dashboards":true,"database":true,"database_truncate":true,"delete_category":true,"delete_chunk":true,"delete_context":true,"delete_document":true,"delete_eventlog":true,"delete_plugin":true,"delete_propertyset":true,"delete_role":true,"delete_snippet":true,"delete_template":true,"delete_tv":true,"delete_user":true,"directory_chmod":true,"directory_create":true,"directory_list":true,"directory_remove":true,"directory_update":true,"edit_category":true,"edit_chunk":true,"edit_context":true,"edit_document":true,"edit_locked":true,"edit_plugin":true,"edit_propertyset":true,"edit_role":true,"edit_snippet":true,"edit_template":true,"edit_tv":true,"edit_user":true,"element_tree":true,"empty_cache":true,"error_log_erase":true,"error_log_view":true,"export_static":true,"file_create":true,"file_list":true,"file_manager":true,"file_remove":true,"file_tree":true,"file_update":true,"file_upload":true,"file_unpack":true,"file_view":true,"flush_sessions":true,"frames":true,"help":true,"home":true,"import_static":true,"languages":true,"lexicons":true,"list":true,"load":true,"logout":true,"logs":true,"menus":true,"menu_reports":true,"menu_security":true,"menu_site":true,"menu_support":true,"menu_system":true,"menu_tools":true,"menu_user":true,"messages":true,"namespaces":true,"new_category":true,"new_chunk":true,"new_context":true,"new_document":true,"new_document_in_root":true,"new_plugin":true,"new_propertyset":true,"new_role":true,"new_snippet":true,"new_static_resource":true,"new_symlink":true,"new_template":true,"new_tv":true,"new_user":true,"new_weblink":true,"packages":true,"policy_delete":true,"policy_edit":true,"policy_new":true,"policy_save":true,"policy_template_delete":true,"policy_template_edit":true,"policy_template_new":true,"policy_template_save":true,"policy_template_view":true,"policy_view":true,"property_sets":true,"providers":true,"publish_document":true,"purge_deleted":true,"remove":true,"remove_locks":true,"resource_duplicate":true,"resourcegroup_delete":true,"resourcegroup_edit":true,"resourcegroup_new":true,"resourcegroup_resource_edit":true,"resourcegroup_resource_list":true,"resourcegroup_save":true,"resourcegroup_view":true,"resource_quick_create":true,"resource_quick_update":true,"resource_tree":true,"save":true,"save_category":true,"save_chunk":true,"save_context":true,"save_document":true,"save_plugin":true,"save_propertyset":true,"save_role":true,"save_snippet":true,"save_template":true,"save_tv":true,"save_user":true,"search":true,"settings":true,"sources":true,"source_delete":true,"source_edit":true,"source_save":true,"source_view":true,"steal_locks":true,"tree_show_element_ids":true,"tree_show_resource_ids":true,"undelete_document":true,"unlock_element_properties":true,"unpublish_document":true,"usergroup_delete":true,"usergroup_edit":true,"usergroup_new":true,"usergroup_save":true,"usergroup_user_edit":true,"usergroup_user_list":true,"usergroup_view":true,"view":true,"view_category":true,"view_chunk":true,"view_context":true,"view_document":true,"view_element":true,"view_eventlog":true,"view_offline":true,"view_plugin":true,"view_propertyset":true,"view_role":true,"view_snippet":true,"view_sysinfo":true,"view_template":true,"view_tv":true,"view_unpublished":true,"view_user":true,"workspaces":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{"load":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{"load":true,"list":true,"view":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{"load":true,"list":true,"view":true,"save":true,"remove":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{"add_children":true,"create":true,"delete":true,"list":true,"load":true,"remove":true,"save":true,"view":true,"copy":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{"change_profile":true,"class_map":true,"countries":true,"edit_document":true,"frames":true,"help":true,"home":true,"load":true,"list":true,"logout":true,"menu_reports":true,"menu_site":true,"menu_support":true,"menu_tools":true,"menu_user":true,"resource_duplicate":true,"resource_tree":true,"save_document":true,"source_view":true,"tree_show_resource_ids":true,"view":true,"view_document":true,"new_document":true,"delete_document":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{"create":true,"copy":true,"load":true,"list":true,"save":true,"remove":true,"view":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{"load":true,"list":true,"view":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{"about":true,"change_password":true,"change_profile":true,"charsets":true,"class_map":true,"components":true,"content_types":true,"countries":true,"create":true,"credits":true,"customize_forms":true,"dashboards":true,"database":true,"delete_category":true,"delete_chunk":true,"delete_context":true,"delete_document":true,"delete_eventlog":true,"delete_plugin":true,"delete_propertyset":true,"delete_snippet":true,"delete_template":true,"delete_tv":true,"delete_role":true,"delete_user":true,"directory_chmod":true,"directory_create":true,"directory_list":true,"directory_remove":true,"directory_update":true,"edit_category":true,"edit_chunk":true,"edit_context":true,"edit_document":true,"edit_locked":true,"edit_plugin":true,"edit_propertyset":true,"edit_role":true,"edit_snippet":true,"edit_template":true,"edit_tv":true,"edit_user":true,"element_tree":true,"empty_cache":true,"error_log_erase":true,"error_log_view":true,"export_static":true,"file_create":true,"file_list":true,"file_manager":true,"file_remove":true,"file_tree":true,"file_update":true,"file_upload":true,"file_unpack":true,"file_view":true,"frames":true,"help":true,"home":true,"import_static":true,"languages":true,"lexicons":true,"list":true,"load":true,"logout":true,"logs":true,"menu_reports":true,"menu_site":true,"menu_support":true,"menu_system":true,"menu_tools":true,"menu_user":true,"menus":true,"messages":true,"namespaces":true,"new_category":true,"new_chunk":true,"new_context":true,"new_document":true,"new_static_resource":true,"new_symlink":true,"new_weblink":true,"new_document_in_root":true,"new_plugin":true,"new_propertyset":true,"new_role":true,"new_snippet":true,"new_template":true,"new_tv":true,"new_user":true,"packages":true,"property_sets":true,"providers":true,"publish_document":true,"purge_deleted":true,"remove":true,"resource_duplicate":true,"resource_quick_create":true,"resource_quick_update":true,"resource_tree":true,"save":true,"save_category":true,"save_chunk":true,"save_context":true,"save_document":true,"save_plugin":true,"save_propertyset":true,"save_snippet":true,"save_template":true,"save_tv":true,"save_user":true,"search":true,"settings":true,"source_delete":true,"source_edit":true,"source_save":true,"source_view":true,"sources":true,"tree_show_element_ids":true,"tree_show_resource_ids":true,"undelete_document":true,"unpublish_document":true,"unlock_element_properties":true,"view":true,"view_category":true,"view_chunk":true,"view_context":true,"view_document":true,"view_element":true,"view_eventlog":true,"view_offline":true,"view_plugin":true,"view_propertyset":true,"view_role":true,"view_snippet":true,"view_sysinfo":true,"view_template":true,"view_tv":true,"view_user":true,"view_unpublished":true,"workspaces":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{"load":true,"list":true,"view":true,"save":true,"remove":true,"copy":true,"view_unpublished":true}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{"load":false,"list":false,"view":true}', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions`
--

CREATE TABLE `modx_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(255) NOT NULL,
  `haslayout` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(255) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(33, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(34, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(35, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(36, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(37, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(38, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(39, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(40, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(41, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(42, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(43, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(44, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(45, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(46, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(56, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(57, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(58, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(59, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(60, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(61, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(62, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(63, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(64, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(65, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(66, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(67, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(68, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(69, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(70, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(71, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(72, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(73, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(74, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(75, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(76, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_class_map`
--

CREATE TABLE `modx_class_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(255) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:resource'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Table structure for table `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('web', 'Website', 'The default front-end context for your web site.', 0),
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(255) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(255) NOT NULL DEFAULT '',
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) NOT NULL DEFAULT 'half'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `widget` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(255) NOT NULL DEFAULT '',
  `service_class` varchar(255) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(255) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2017-05-02 11:32:50', 'login', 'modContext', 'mgr'),
(2, 1, '2017-05-03 18:40:14', 'resource_update', 'modResource', '1'),
(3, 1, '2017-05-03 18:44:05', 'resource_create', 'modDocument', '2'),
(4, 1, '2017-05-03 18:44:37', 'resource_create', 'modDocument', '3'),
(5, 1, '2017-05-03 18:44:57', 'resource_update', 'modResource', '3'),
(6, 1, '2017-05-03 18:45:17', 'resource_update', 'modResource', '3'),
(7, 1, '2017-05-03 18:45:27', 'resource_update', 'modResource', '2'),
(8, 1, '2017-05-03 18:55:02', 'resource_update', 'modResource', '3'),
(9, 1, '2017-05-03 18:55:26', 'login', 'modContext', 'mgr'),
(10, 1, '2017-05-05 22:52:06', 'directory_create', '', 'C:/xampp/htdocs/modx/www/assets/templates'),
(11, 1, '2017-05-05 22:53:28', 'directory_create', '', 'C:/xampp/htdocs/modx/www/assets/templates/SNTK-temlpate'),
(12, 1, '2017-05-05 22:58:19', 'template_create', 'modTemplate', '2'),
(13, 1, '2017-05-05 22:59:07', 'resource_create', 'modDocument', '4'),
(14, 1, '2017-05-05 23:18:03', 'resource_update', 'modResource', '4'),
(15, 1, '2017-05-05 23:20:53', 'template_update', 'modTemplate', '2'),
(16, 1, '2017-05-05 23:20:53', 'propertyset_update_from_element', 'modTemplate', '2'),
(17, 1, '2017-05-05 23:20:54', 'template_update', 'modTemplate', '2'),
(18, 1, '2017-05-05 23:20:55', 'propertyset_update_from_element', 'modTemplate', '2'),
(19, 1, '2017-05-05 23:21:06', 'resource_update', 'modResource', '4'),
(20, 1, '2017-05-05 23:21:42', 'template_update', 'modTemplate', '2'),
(21, 1, '2017-05-05 23:21:42', 'propertyset_update_from_element', 'modTemplate', '2'),
(22, 1, '2017-05-05 23:22:22', 'resource_update', 'modResource', '4'),
(23, 1, '2017-05-07 14:29:32', 'delete_resource', 'modDocument', '4'),
(24, 1, '2017-05-07 15:00:55', 'resource_create', 'modDocument', '5'),
(25, 1, '2017-05-07 15:03:15', 'resource_create', 'modDocument', '6'),
(26, 1, '2017-05-07 15:03:31', 'resource_create', 'modDocument', '7'),
(27, 1, '2017-05-07 15:03:49', 'resource_create', 'modDocument', '8'),
(28, 1, '2017-05-07 15:04:07', 'resource_create', 'modDocument', '9'),
(29, 1, '2017-05-07 15:04:57', 'resource_update', 'modResource', '5'),
(30, 1, '2017-05-07 15:08:54', 'tv_create', 'modTemplateVar', '1'),
(31, 1, '2017-05-07 15:09:34', 'resource_update', 'modResource', '6'),
(32, 1, '2017-05-07 15:09:57', 'resource_update', 'modResource', '7'),
(33, 1, '2017-05-07 15:10:18', 'resource_update', 'modResource', '8'),
(34, 1, '2017-05-07 15:10:40', 'resource_update', 'modResource', '9'),
(35, 1, '2017-05-07 15:12:29', 'template_update', 'modTemplate', '2'),
(36, 1, '2017-05-07 15:12:29', 'propertyset_update_from_element', 'modTemplate', '2'),
(37, 1, '2017-05-07 15:19:47', 'resource_update', 'modResource', '1'),
(38, 1, '2017-05-07 15:20:06', 'resource_update', 'modResource', '1'),
(39, 1, '2017-05-07 15:21:00', 'chunk_create', 'modChunk', '1'),
(40, 1, '2017-05-07 15:21:24', 'chunk_update', 'modChunk', '1'),
(41, 1, '2017-05-07 15:21:24', 'propertyset_update_from_element', 'modChunk', '1'),
(42, 1, '2017-05-07 15:27:00', 'template_update', 'modTemplate', '2'),
(43, 1, '2017-05-07 15:27:00', 'propertyset_update_from_element', 'modTemplate', '2'),
(44, 1, '2017-05-07 15:28:07', 'template_update', 'modTemplate', '2'),
(45, 1, '2017-05-07 15:28:07', 'propertyset_update_from_element', 'modTemplate', '2'),
(46, 1, '2017-05-07 15:28:08', 'template_update', 'modTemplate', '2'),
(47, 1, '2017-05-07 15:28:09', 'propertyset_update_from_element', 'modTemplate', '2'),
(48, 1, '2017-05-07 15:28:15', 'template_update', 'modTemplate', '2'),
(49, 1, '2017-05-07 15:28:15', 'propertyset_update_from_element', 'modTemplate', '2'),
(50, 1, '2017-05-07 15:35:43', 'resource_update', 'modResource', '1'),
(51, 1, '2017-05-07 15:36:30', 'resource_update', 'modResource', '1'),
(52, 1, '2017-05-07 15:36:43', 'resource_update', 'modResource', '1'),
(53, 1, '2017-05-07 15:37:14', 'resource_update', 'modResource', '1'),
(54, 1, '2017-05-07 15:40:34', 'chunk_update', 'modChunk', '1'),
(55, 1, '2017-05-07 15:40:35', 'propertyset_update_from_element', 'modChunk', '1'),
(56, 1, '2017-05-07 15:44:15', 'resource_update', 'modResource', '5'),
(57, 1, '2017-05-07 16:48:56', 'template_update', 'modTemplate', '2'),
(58, 1, '2017-05-07 16:48:56', 'propertyset_update_from_element', 'modTemplate', '2'),
(59, 1, '2017-05-07 16:50:09', 'template_update', 'modTemplate', '2'),
(60, 1, '2017-05-07 16:50:10', 'propertyset_update_from_element', 'modTemplate', '2'),
(61, 1, '2017-05-07 16:50:57', 'resource_update', 'modResource', '6'),
(62, 1, '2017-05-07 16:52:17', 'resource_update', 'modResource', '7'),
(63, 1, '2017-05-07 16:52:28', 'resource_update', 'modResource', '8'),
(64, 1, '2017-05-07 16:52:34', 'resource_update', 'modResource', '9'),
(65, 1, '2017-05-07 16:53:44', 'resource_update', 'modResource', '1'),
(66, 1, '2017-05-07 17:00:48', 'resource_update', 'modResource', '5'),
(67, 1, '2017-05-07 17:36:18', 'resource_update', 'modResource', '5'),
(68, 1, '2017-05-07 17:37:17', 'chunk_update', 'modChunk', '1'),
(69, 1, '2017-05-07 17:37:17', 'propertyset_update_from_element', 'modChunk', '1'),
(70, 1, '2017-05-07 17:37:53', 'tv_update', 'modTemplateVar', '1'),
(71, 1, '2017-05-07 17:37:53', 'propertyset_update_from_element', 'modTemplateVar', '1'),
(72, 1, '2017-05-07 17:42:00', 'tv_update', 'modTemplateVar', '1'),
(73, 1, '2017-05-07 17:42:00', 'propertyset_update_from_element', 'modTemplateVar', '1'),
(74, 1, '2017-05-07 17:42:58', 'tv_update', 'modTemplateVar', '1'),
(75, 1, '2017-05-07 17:42:59', 'propertyset_update_from_element', 'modTemplateVar', '1'),
(76, 1, '2017-05-07 17:43:15', 'chunk_update', 'modChunk', '1'),
(77, 1, '2017-05-07 17:43:15', 'propertyset_update_from_element', 'modChunk', '1'),
(78, 1, '2017-05-07 19:07:46', 'template_update', 'modTemplate', '2'),
(79, 1, '2017-05-07 19:07:47', 'propertyset_update_from_element', 'modTemplate', '2'),
(80, 1, '2017-05-07 19:08:24', 'template_update', 'modTemplate', '2'),
(81, 1, '2017-05-07 19:08:24', 'propertyset_update_from_element', 'modTemplate', '2'),
(82, 1, '2017-05-07 19:08:35', 'template_update', 'modTemplate', '2'),
(83, 1, '2017-05-07 19:08:35', 'propertyset_update_from_element', 'modTemplate', '2'),
(84, 1, '2017-05-07 19:08:49', 'template_update', 'modTemplate', '2'),
(85, 1, '2017-05-07 19:08:49', 'propertyset_update_from_element', 'modTemplate', '2'),
(86, 1, '2017-05-07 19:10:25', 'template_update', 'modTemplate', '2'),
(87, 1, '2017-05-07 19:10:25', 'propertyset_update_from_element', 'modTemplate', '2'),
(88, 1, '2017-05-07 19:10:42', 'chunk_update', 'modChunk', '1'),
(89, 1, '2017-05-07 19:10:42', 'propertyset_update_from_element', 'modChunk', '1'),
(90, 1, '2017-05-07 19:49:03', 'template_update', 'modTemplate', '2'),
(91, 1, '2017-05-07 19:49:03', 'propertyset_update_from_element', 'modTemplate', '2'),
(92, 1, '2017-05-07 19:51:40', 'resource_update', 'modResource', '6'),
(93, 1, '2017-05-07 19:51:59', 'resource_update', 'modResource', '7'),
(94, 1, '2017-05-07 19:52:12', 'resource_update', 'modResource', '8'),
(95, 1, '2017-05-07 19:52:26', 'resource_update', 'modResource', '9'),
(96, 1, '2017-05-07 19:54:15', 'template_update', 'modTemplate', '2'),
(97, 1, '2017-05-07 19:54:15', 'propertyset_update_from_element', 'modTemplate', '2'),
(98, 1, '2017-05-07 19:54:48', 'template_update', 'modTemplate', '2'),
(99, 1, '2017-05-07 19:54:49', 'propertyset_update_from_element', 'modTemplate', '2'),
(100, 1, '2017-05-07 19:56:22', 'template_update', 'modTemplate', '2'),
(101, 1, '2017-05-07 19:56:23', 'propertyset_update_from_element', 'modTemplate', '2'),
(102, 1, '2017-05-07 20:31:30', 'chunk_create', 'modChunk', '2'),
(103, 1, '2017-05-07 20:31:57', 'chunk_update', 'modChunk', '2'),
(104, 1, '2017-05-07 20:31:57', 'propertyset_update_from_element', 'modChunk', '2'),
(105, 1, '2017-05-07 20:32:11', 'chunk_update', 'modChunk', '2'),
(106, 1, '2017-05-07 20:32:11', 'propertyset_update_from_element', 'modChunk', '2'),
(107, 1, '2017-05-07 20:32:23', 'chunk_delete', 'modChunk', '2'),
(108, 1, '2017-05-07 20:33:31', 'chunk_update', 'modChunk', '1'),
(109, 1, '2017-05-07 20:33:31', 'propertyset_update_from_element', 'modChunk', '1'),
(110, 1, '2017-05-07 20:33:53', 'resource_update', 'modResource', '1'),
(111, 1, '2017-05-07 20:36:26', 'chunk_update', 'modChunk', '1'),
(112, 1, '2017-05-07 20:36:26', 'propertyset_update_from_element', 'modChunk', '1'),
(113, 1, '2017-05-07 20:38:27', 'chunk_update', 'modChunk', '1'),
(114, 1, '2017-05-07 20:38:28', 'propertyset_update_from_element', 'modChunk', '1'),
(115, 1, '2017-05-07 20:38:45', 'resource_update', 'modResource', '1'),
(116, 1, '2017-05-07 20:39:43', 'chunk_update', 'modChunk', '1'),
(117, 1, '2017-05-07 20:39:43', 'propertyset_update_from_element', 'modChunk', '1'),
(118, 1, '2017-05-07 20:41:23', 'resource_update', 'modResource', '6'),
(119, 1, '2017-05-07 20:41:50', 'resource_update', 'modResource', '6'),
(120, 1, '2017-05-07 20:43:14', 'resource_update', 'modResource', '7'),
(121, 1, '2017-05-07 20:43:26', 'resource_update', 'modResource', '7'),
(122, 1, '2017-05-07 20:44:16', 'resource_update', 'modResource', '8'),
(123, 1, '2017-05-07 20:44:24', 'resource_update', 'modResource', '8'),
(124, 1, '2017-05-07 20:45:21', 'resource_update', 'modResource', '9'),
(125, 1, '2017-05-07 20:45:58', 'resource_update', 'modResource', '9'),
(126, 1, '2017-05-07 20:49:22', 'resource_update', 'modResource', '2'),
(127, 1, '2017-05-07 20:50:37', 'delete_resource', 'modDocument', '3'),
(128, 1, '2017-05-07 20:50:57', 'resource_create', 'modDocument', '10'),
(129, 1, '2017-05-07 20:52:58', 'resource_update', 'modResource', '2'),
(130, 1, '2017-05-07 20:53:11', 'resource_update', 'modResource', '2'),
(131, 1, '2017-05-07 20:54:24', 'resource_update', 'modResource', '1'),
(132, 1, '2017-05-07 20:54:56', 'resource_update', 'modResource', '2'),
(133, 1, '2017-05-07 20:55:11', 'resource_update', 'modResource', '2'),
(134, 1, '2017-05-07 20:57:01', 'resource_update', 'modResource', '10'),
(135, 1, '2017-05-07 21:02:22', 'resource_create', 'modDocument', '11'),
(136, 1, '2017-05-07 21:03:19', 'template_create', 'modTemplate', '3'),
(137, 1, '2017-05-07 21:04:10', 'template_update', 'modTemplate', '3'),
(138, 1, '2017-05-07 21:04:10', 'propertyset_update_from_element', 'modTemplate', '3'),
(139, 1, '2017-05-07 21:05:48', 'template_update', 'modTemplate', '3'),
(140, 1, '2017-05-07 21:05:48', 'propertyset_update_from_element', 'modTemplate', '3'),
(141, 1, '2017-05-07 21:06:57', 'resource_update', 'modResource', '11'),
(142, 1, '2017-05-07 21:07:55', 'template_update', 'modTemplate', '3'),
(143, 1, '2017-05-07 21:07:56', 'propertyset_update_from_element', 'modTemplate', '3'),
(144, 1, '2017-05-07 21:09:07', 'resource_create', 'modDocument', '12'),
(145, 1, '2017-05-07 21:09:22', 'resource_create', 'modDocument', '13'),
(146, 1, '2017-05-07 21:09:45', 'resource_update', 'modResource', '12'),
(147, 1, '2017-05-07 21:10:58', 'resource_update', 'modResource', '11'),
(148, 1, '2017-05-07 21:12:35', 'chunk_update', 'modChunk', '1'),
(149, 1, '2017-05-07 21:12:35', 'propertyset_update_from_element', 'modChunk', '1'),
(150, 1, '2017-05-07 21:12:49', 'chunk_create', 'modChunk', '3'),
(151, 1, '2017-05-07 21:13:23', 'chunk_update', 'modChunk', '3'),
(152, 1, '2017-05-07 21:13:23', 'propertyset_update_from_element', 'modChunk', '3'),
(153, 1, '2017-05-07 21:13:43', 'chunk_update', 'modChunk', '3'),
(154, 1, '2017-05-07 21:13:44', 'propertyset_update_from_element', 'modChunk', '3'),
(155, 1, '2017-05-07 21:14:05', 'chunk_update', 'modChunk', '3'),
(156, 1, '2017-05-07 21:14:06', 'propertyset_update_from_element', 'modChunk', '3'),
(157, 1, '2017-05-07 21:15:09', 'resource_update', 'modResource', '2'),
(158, 1, '2017-05-07 21:19:56', 'resource_update', 'modResource', '2'),
(159, 1, '2017-05-07 21:20:58', 'resource_update', 'modResource', '2'),
(160, 1, '2017-05-07 21:24:17', 'resource_update', 'modResource', '11'),
(161, 1, '2017-05-07 21:24:40', 'template_update', 'modTemplate', '3'),
(162, 1, '2017-05-07 21:24:40', 'propertyset_update_from_element', 'modTemplate', '3'),
(163, 1, '2017-05-07 21:24:50', 'resource_update', 'modResource', '11'),
(164, 1, '2017-05-07 21:25:37', 'template_update', 'modTemplate', '3'),
(165, 1, '2017-05-07 21:25:37', 'propertyset_update_from_element', 'modTemplate', '3'),
(166, 1, '2017-05-07 21:26:34', 'template_update', 'modTemplate', '3'),
(167, 1, '2017-05-07 21:26:34', 'propertyset_update_from_element', 'modTemplate', '3'),
(168, 1, '2017-05-07 21:26:57', 'template_update', 'modTemplate', '3'),
(169, 1, '2017-05-07 21:26:57', 'propertyset_update_from_element', 'modTemplate', '3'),
(170, 1, '2017-05-07 21:56:08', 'template_update', 'modTemplate', '3'),
(171, 1, '2017-05-07 21:56:08', 'propertyset_update_from_element', 'modTemplate', '3'),
(172, 1, '2017-05-07 21:56:54', 'template_update', 'modTemplate', '3'),
(173, 1, '2017-05-07 21:56:54', 'propertyset_update_from_element', 'modTemplate', '3'),
(174, 1, '2017-05-07 21:59:00', 'resource_update', 'modResource', '10'),
(175, 1, '2017-05-07 22:07:37', 'chunk_create', 'modChunk', '4'),
(176, 1, '2017-05-07 22:08:11', 'resource_update', 'modResource', '2'),
(177, 1, '2017-05-07 22:08:37', 'resource_update', 'modResource', '2'),
(178, 1, '2017-05-07 22:11:35', 'chunk_update', 'modChunk', '4'),
(179, 1, '2017-05-07 22:11:36', 'propertyset_update_from_element', 'modChunk', '4'),
(180, 1, '2017-05-07 22:11:46', 'chunk_update', 'modChunk', '4'),
(181, 1, '2017-05-07 22:11:46', 'propertyset_update_from_element', 'modChunk', '4'),
(182, 1, '2017-05-07 22:12:00', 'chunk_update', 'modChunk', '4'),
(183, 1, '2017-05-07 22:12:00', 'propertyset_update_from_element', 'modChunk', '4'),
(184, 1, '2017-05-07 22:12:10', 'chunk_update', 'modChunk', '4'),
(185, 1, '2017-05-07 22:12:10', 'propertyset_update_from_element', 'modChunk', '4'),
(186, 1, '2017-05-07 22:12:22', 'chunk_update', 'modChunk', '4'),
(187, 1, '2017-05-07 22:12:22', 'propertyset_update_from_element', 'modChunk', '4'),
(188, 1, '2017-05-07 22:12:33', 'chunk_update', 'modChunk', '4'),
(189, 1, '2017-05-07 22:12:33', 'propertyset_update_from_element', 'modChunk', '4'),
(190, 1, '2017-05-07 22:12:40', 'chunk_update', 'modChunk', '4'),
(191, 1, '2017-05-07 22:12:40', 'propertyset_update_from_element', 'modChunk', '4'),
(192, 1, '2017-05-07 22:12:52', 'chunk_update', 'modChunk', '4'),
(193, 1, '2017-05-07 22:12:53', 'propertyset_update_from_element', 'modChunk', '4'),
(194, 1, '2017-05-07 22:15:03', 'resource_update', 'modResource', '2'),
(195, 1, '2017-05-07 22:16:14', 'resource_update', 'modResource', '2'),
(196, 1, '2017-05-07 22:16:28', 'resource_update', 'modResource', '2'),
(197, 1, '2017-05-07 22:18:53', 'resource_update', 'modResource', '2'),
(198, 1, '2017-05-07 22:20:31', 'resource_update', 'modResource', '2'),
(199, 1, '2017-05-07 22:31:17', 'resource_update', 'modResource', '7'),
(200, 1, '2017-05-07 22:34:07', 'chunk_create', 'modChunk', '5'),
(201, 1, '2017-05-07 22:36:37', 'chunk_update', 'modChunk', '5'),
(202, 1, '2017-05-07 22:36:38', 'propertyset_update_from_element', 'modChunk', '5'),
(203, 1, '2017-05-07 22:38:35', 'chunk_update', 'modChunk', '5'),
(204, 1, '2017-05-07 22:38:35', 'propertyset_update_from_element', 'modChunk', '5'),
(205, 1, '2017-05-07 22:40:02', 'chunk_update', 'modChunk', '5'),
(206, 1, '2017-05-07 22:40:02', 'propertyset_update_from_element', 'modChunk', '5'),
(207, 1, '2017-05-07 22:40:25', 'chunk_update', 'modChunk', '5'),
(208, 1, '2017-05-07 22:40:26', 'propertyset_update_from_element', 'modChunk', '5'),
(209, 1, '2017-05-07 22:41:14', 'resource_update', 'modResource', '1'),
(210, 1, '2017-05-07 22:41:40', 'resource_update', 'modResource', '1'),
(211, 1, '2017-05-07 22:42:09', 'resource_update', 'modResource', '1'),
(212, 1, '2017-05-07 22:45:35', 'resource_update', 'modResource', '7'),
(213, 1, '2017-05-07 22:46:00', 'chunk_update', 'modChunk', '5'),
(214, 1, '2017-05-07 22:46:00', 'propertyset_update_from_element', 'modChunk', '5'),
(215, 1, '2017-05-07 23:00:16', 'chunk_create', 'modChunk', '6'),
(216, 1, '2017-05-07 23:00:24', 'chunk_update', 'modChunk', '6'),
(217, 1, '2017-05-07 23:00:24', 'propertyset_update_from_element', 'modChunk', '6'),
(218, 1, '2017-05-07 23:01:11', 'chunk_update', 'modChunk', '6'),
(219, 1, '2017-05-07 23:01:12', 'propertyset_update_from_element', 'modChunk', '6'),
(220, 1, '2017-05-07 23:02:15', 'chunk_update', 'modChunk', '6'),
(221, 1, '2017-05-07 23:02:15', 'propertyset_update_from_element', 'modChunk', '6'),
(222, 1, '2017-05-07 23:02:22', 'chunk_update', 'modChunk', '6'),
(223, 1, '2017-05-07 23:02:23', 'propertyset_update_from_element', 'modChunk', '6'),
(224, 1, '2017-05-07 23:03:37', 'resource_update', 'modResource', '1'),
(225, 1, '2017-05-07 23:05:08', 'resource_update', 'modResource', '1'),
(226, 1, '2017-05-07 23:09:46', 'resource_update', 'modResource', '1'),
(227, 1, '2017-05-07 23:10:08', 'chunk_create', 'modChunk', '7'),
(228, 1, '2017-05-07 23:11:14', 'chunk_update', 'modChunk', '7'),
(229, 1, '2017-05-07 23:11:14', 'propertyset_update_from_element', 'modChunk', '7'),
(230, 1, '2017-05-07 23:12:38', 'resource_update', 'modResource', '1'),
(231, 1, '2017-05-07 23:18:49', 'resource_update', 'modResource', '1'),
(232, 1, '2017-05-07 23:24:27', 'chunk_update', 'modChunk', '7'),
(233, 1, '2017-05-07 23:24:27', 'propertyset_update_from_element', 'modChunk', '7'),
(234, 1, '2017-05-07 23:24:48', 'resource_update', 'modResource', '1'),
(235, 1, '2017-05-07 23:24:56', 'chunk_update', 'modChunk', '7'),
(236, 1, '2017-05-07 23:24:57', 'propertyset_update_from_element', 'modChunk', '7'),
(237, 1, '2017-05-07 23:25:16', 'resource_update', 'modResource', '1'),
(238, 1, '2017-05-07 23:30:39', 'resource_update', 'modResource', '1'),
(239, 1, '2017-05-07 23:42:34', 'resource_create', 'modDocument', '14'),
(240, 1, '2017-05-07 23:42:53', 'resource_create', 'modDocument', '15'),
(241, 1, '2017-05-07 23:43:09', 'resource_create', 'modDocument', '16'),
(242, 1, '2017-05-07 23:43:15', 'resource_update', 'modResource', '16'),
(243, 1, '2017-05-07 23:44:31', 'chunk_update', 'modChunk', '7'),
(244, 1, '2017-05-07 23:44:31', 'propertyset_update_from_element', 'modChunk', '7'),
(245, 1, '2017-05-07 23:45:11', 'chunk_update', 'modChunk', '7'),
(246, 1, '2017-05-07 23:45:12', 'propertyset_update_from_element', 'modChunk', '7'),
(247, 1, '2017-05-07 23:45:20', 'chunk_update', 'modChunk', '7'),
(248, 1, '2017-05-07 23:45:20', 'propertyset_update_from_element', 'modChunk', '7'),
(249, 1, '2017-05-07 23:45:36', 'chunk_update', 'modChunk', '7'),
(250, 1, '2017-05-07 23:45:36', 'propertyset_update_from_element', 'modChunk', '7'),
(251, 1, '2017-05-07 23:45:52', 'resource_update', 'modResource', '1'),
(252, 1, '2017-05-07 23:46:18', 'resource_update', 'modResource', '1'),
(253, 1, '2017-05-07 23:46:32', 'resource_update', 'modResource', '2'),
(254, 1, '2017-05-07 23:46:44', 'template_update', 'modTemplate', '3'),
(255, 1, '2017-05-07 23:46:45', 'propertyset_update_from_element', 'modTemplate', '3'),
(256, 1, '2017-05-07 23:46:56', 'template_update', 'modTemplate', '3'),
(257, 1, '2017-05-07 23:46:56', 'propertyset_update_from_element', 'modTemplate', '3'),
(258, 1, '2017-05-07 23:47:16', 'template_update', 'modTemplate', '3'),
(259, 1, '2017-05-07 23:47:16', 'propertyset_update_from_element', 'modTemplate', '3'),
(260, 1, '2017-05-07 23:56:35', 'chunk_update', 'modChunk', '7'),
(261, 1, '2017-05-07 23:56:35', 'propertyset_update_from_element', 'modChunk', '7'),
(262, 1, '2017-05-08 00:01:11', 'resource_update', 'modResource', '5'),
(263, 1, '2017-05-08 00:02:29', 'resource_update', 'modResource', '14'),
(264, 1, '2017-05-08 00:03:09', 'resource_update', 'modResource', '14'),
(265, 1, '2017-05-08 00:08:50', 'resource_update', 'modResource', '14'),
(266, 1, '2017-05-08 00:12:51', 'resource_update', 'modResource', '16'),
(267, 1, '2017-05-08 00:13:30', 'resource_update', 'modResource', '16'),
(268, 1, '2017-05-08 00:13:56', 'resource_update', 'modResource', '16'),
(269, 1, '2017-05-08 00:20:45', 'template_update', 'modTemplate', '3'),
(270, 1, '2017-05-08 00:20:45', 'propertyset_update_from_element', 'modTemplate', '3'),
(271, 1, '2017-05-08 00:21:16', 'template_update', 'modTemplate', '3'),
(272, 1, '2017-05-08 00:21:16', 'propertyset_update_from_element', 'modTemplate', '3'),
(273, 1, '2017-05-08 00:21:37', 'template_update', 'modTemplate', '3'),
(274, 1, '2017-05-08 00:21:38', 'propertyset_update_from_element', 'modTemplate', '3'),
(275, 1, '2017-05-08 00:23:30', 'template_update', 'modTemplate', '3'),
(276, 1, '2017-05-08 00:23:30', 'propertyset_update_from_element', 'modTemplate', '3'),
(277, 1, '2017-05-08 00:23:47', 'template_update', 'modTemplate', '3'),
(278, 1, '2017-05-08 00:23:47', 'propertyset_update_from_element', 'modTemplate', '3'),
(279, 1, '2017-05-08 00:25:42', 'template_update', 'modTemplate', '3'),
(280, 1, '2017-05-08 00:25:42', 'propertyset_update_from_element', 'modTemplate', '3'),
(281, 1, '2017-05-08 00:26:13', 'template_update', 'modTemplate', '3'),
(282, 1, '2017-05-08 00:26:13', 'propertyset_update_from_element', 'modTemplate', '3'),
(283, 1, '2017-05-08 00:27:12', 'template_update', 'modTemplate', '3'),
(284, 1, '2017-05-08 00:27:12', 'propertyset_update_from_element', 'modTemplate', '3'),
(285, 1, '2017-05-08 00:27:21', 'template_update', 'modTemplate', '3'),
(286, 1, '2017-05-08 00:27:21', 'propertyset_update_from_element', 'modTemplate', '3'),
(287, 1, '2017-05-08 00:28:25', 'template_update', 'modTemplate', '3'),
(288, 1, '2017-05-08 00:28:26', 'propertyset_update_from_element', 'modTemplate', '3'),
(289, 1, '2017-05-08 00:28:56', 'resource_update', 'modResource', '14'),
(290, 1, '2017-05-08 00:33:47', 'resource_update', 'modResource', '6'),
(291, 1, '2017-05-08 00:34:06', 'resource_update', 'modResource', '8'),
(292, 1, '2017-05-08 00:34:19', 'resource_update', 'modResource', '9'),
(293, 1, '2017-05-08 00:37:04', 'resource_update', 'modResource', '1'),
(294, 1, '2017-05-08 22:32:03', 'template_create', 'modTemplate', '4'),
(295, 1, '2017-05-08 22:33:09', 'resource_update', 'modResource', '7'),
(296, 1, '2017-05-08 22:33:19', 'resource_update', 'modResource', '6'),
(297, 1, '2017-05-08 22:33:29', 'resource_update', 'modResource', '8'),
(298, 1, '2017-05-08 22:33:41', 'resource_update', 'modResource', '9'),
(299, 1, '2017-05-08 22:33:45', 'resource_update', 'modResource', '9'),
(300, 1, '2017-05-08 22:35:17', 'tv_update', 'modTemplateVar', '1'),
(301, 1, '2017-05-08 22:35:18', 'propertyset_update_from_element', 'modTemplateVar', '1'),
(302, 1, '2017-05-08 22:37:30', 'template_update', 'modTemplate', '3'),
(303, 1, '2017-05-08 22:37:30', 'propertyset_update_from_element', 'modTemplate', '3'),
(304, 1, '2017-05-08 22:38:11', 'template_update', 'modTemplate', '4'),
(305, 1, '2017-05-08 22:38:11', 'propertyset_update_from_element', 'modTemplate', '4'),
(306, 1, '2017-05-08 22:40:22', 'template_update', 'modTemplate', '4'),
(307, 1, '2017-05-08 22:40:23', 'propertyset_update_from_element', 'modTemplate', '4'),
(308, 1, '2017-05-08 22:41:32', 'template_update', 'modTemplate', '4'),
(309, 1, '2017-05-08 22:41:32', 'propertyset_update_from_element', 'modTemplate', '4'),
(310, 1, '2017-05-08 22:42:29', 'template_update', 'modTemplate', '4'),
(311, 1, '2017-05-08 22:42:29', 'propertyset_update_from_element', 'modTemplate', '4'),
(312, 1, '2017-05-08 22:42:44', 'template_update', 'modTemplate', '4'),
(313, 1, '2017-05-08 22:42:44', 'propertyset_update_from_element', 'modTemplate', '4'),
(314, 1, '2017-05-08 22:43:19', 'template_update', 'modTemplate', '4'),
(315, 1, '2017-05-08 22:43:20', 'propertyset_update_from_element', 'modTemplate', '4'),
(316, 1, '2017-05-08 22:44:32', 'template_update', 'modTemplate', '4'),
(317, 1, '2017-05-08 22:44:32', 'propertyset_update_from_element', 'modTemplate', '4'),
(318, 1, '2017-05-08 22:44:50', 'template_update', 'modTemplate', '4'),
(319, 1, '2017-05-08 22:44:50', 'propertyset_update_from_element', 'modTemplate', '4'),
(320, 1, '2017-05-08 22:45:03', 'template_update', 'modTemplate', '4'),
(321, 1, '2017-05-08 22:45:03', 'propertyset_update_from_element', 'modTemplate', '4'),
(322, 1, '2017-05-08 22:45:12', 'template_update', 'modTemplate', '4'),
(323, 1, '2017-05-08 22:45:12', 'propertyset_update_from_element', 'modTemplate', '4'),
(324, 1, '2017-05-08 22:46:06', 'template_update', 'modTemplate', '4'),
(325, 1, '2017-05-08 22:46:07', 'propertyset_update_from_element', 'modTemplate', '4'),
(326, 1, '2017-05-08 22:46:14', 'template_update', 'modTemplate', '4'),
(327, 1, '2017-05-08 22:46:14', 'propertyset_update_from_element', 'modTemplate', '4'),
(328, 1, '2017-05-08 22:47:15', 'template_update', 'modTemplate', '4'),
(329, 1, '2017-05-08 22:47:16', 'propertyset_update_from_element', 'modTemplate', '4'),
(330, 1, '2017-05-08 22:48:03', 'template_update', 'modTemplate', '4'),
(331, 1, '2017-05-08 22:48:03', 'propertyset_update_from_element', 'modTemplate', '4'),
(332, 1, '2017-05-08 22:48:12', 'template_update', 'modTemplate', '4'),
(333, 1, '2017-05-08 22:48:12', 'propertyset_update_from_element', 'modTemplate', '4'),
(334, 1, '2017-05-08 22:48:21', 'template_update', 'modTemplate', '4'),
(335, 1, '2017-05-08 22:48:21', 'propertyset_update_from_element', 'modTemplate', '4'),
(336, 1, '2017-05-08 22:48:28', 'template_update', 'modTemplate', '4'),
(337, 1, '2017-05-08 22:48:29', 'propertyset_update_from_element', 'modTemplate', '4'),
(338, 1, '2017-05-08 22:57:12', 'resource_update', 'modResource', '6'),
(339, 1, '2017-05-08 22:57:42', 'resource_update', 'modResource', '7'),
(340, 1, '2017-05-08 23:14:39', 'resource_create', 'modDocument', '17'),
(341, 1, '2017-05-08 23:14:57', 'resource_update', 'modResource', '17'),
(342, 1, '2017-05-08 23:15:16', 'resource_update', 'modResource', '17'),
(343, 1, '2017-05-08 23:15:33', 'resource_update', 'modResource', '17'),
(344, 1, '2017-05-08 23:18:30', 'resource_create', 'modDocument', '18'),
(345, 1, '2017-05-08 23:19:32', 'resource_update', 'modResource', '18'),
(346, 1, '2017-05-08 23:30:34', 'resource_update', 'modResource', '18'),
(347, 1, '2017-05-08 23:39:15', 'delete_resource', 'modDocument', '18'),
(348, 1, '2017-05-08 23:42:33', 'chunk_update', 'modChunk', '5'),
(349, 1, '2017-05-08 23:42:34', 'propertyset_update_from_element', 'modChunk', '5'),
(350, 1, '2017-05-08 23:43:14', 'undelete_resource', 'modResource', '18'),
(351, 1, '2017-05-08 23:43:16', 'chunk_update', 'modChunk', '5'),
(352, 1, '2017-05-08 23:43:16', 'propertyset_update_from_element', 'modChunk', '5'),
(353, 1, '2017-05-08 23:47:10', 'delete_resource', 'modDocument', '17'),
(354, 1, '2017-05-08 23:47:17', 'delete_resource', 'modDocument', '18'),
(355, 1, '2017-05-09 00:23:31', 'resource_update', 'modResource', '5'),
(356, 1, '2017-05-09 00:26:41', 'resource_update', 'modResource', '5'),
(357, 1, '2017-05-09 00:28:33', 'resource_update', 'modResource', '5'),
(358, 1, '2017-05-09 00:30:02', 'chunk_create', 'modChunk', '8'),
(359, 1, '2017-05-09 00:31:45', 'chunk_update', 'modChunk', '8'),
(360, 1, '2017-05-09 00:31:46', 'propertyset_update_from_element', 'modChunk', '8'),
(361, 1, '2017-05-09 00:32:52', 'resource_update', 'modResource', '5'),
(362, 1, '2017-05-09 00:32:56', 'resource_update', 'modResource', '5'),
(363, 1, '2017-05-09 00:33:24', 'chunk_update', 'modChunk', '5'),
(364, 1, '2017-05-09 00:33:24', 'propertyset_update_from_element', 'modChunk', '5'),
(365, 1, '2017-05-09 00:34:27', 'resource_update', 'modResource', '5'),
(366, 1, '2017-05-09 00:35:09', 'resource_update', 'modResource', '5'),
(367, 1, '2017-05-09 00:47:00', 'resource_update', 'modResource', '5'),
(368, 1, '2017-05-09 00:48:21', 'resource_update', 'modResource', '5'),
(369, 1, '2017-05-09 00:48:39', 'resource_update', 'modResource', '5'),
(370, 1, '2017-05-09 00:48:46', 'resource_update', 'modResource', '5'),
(371, 1, '2017-05-09 00:48:51', 'resource_update', 'modResource', '5'),
(372, 1, '2017-05-09 00:53:53', 'resource_update', 'modResource', '5'),
(373, 1, '2017-05-09 00:55:05', 'resource_update', 'modResource', '5'),
(374, 1, '2017-05-09 00:55:29', 'chunk_update', 'modChunk', '8'),
(375, 1, '2017-05-09 00:55:29', 'propertyset_update_from_element', 'modChunk', '8'),
(376, 1, '2017-05-09 00:55:50', 'chunk_update', 'modChunk', '8'),
(377, 1, '2017-05-09 00:55:50', 'propertyset_update_from_element', 'modChunk', '8'),
(378, 1, '2017-05-09 00:56:11', 'chunk_update', 'modChunk', '8'),
(379, 1, '2017-05-09 00:56:11', 'propertyset_update_from_element', 'modChunk', '8'),
(380, 1, '2017-05-09 00:56:35', 'chunk_update', 'modChunk', '8'),
(381, 1, '2017-05-09 00:56:36', 'propertyset_update_from_element', 'modChunk', '8'),
(382, 1, '2017-05-09 00:57:02', 'chunk_update', 'modChunk', '8'),
(383, 1, '2017-05-09 00:57:02', 'propertyset_update_from_element', 'modChunk', '8'),
(384, 1, '2017-05-09 00:57:19', 'resource_update', 'modResource', '5'),
(385, 1, '2017-05-09 01:00:26', 'resource_update', 'modResource', '5'),
(386, 1, '2017-05-09 01:00:41', 'resource_update', 'modResource', '5'),
(387, 1, '2017-05-09 01:02:38', 'resource_update', 'modResource', '5'),
(388, 1, '2017-05-09 01:03:36', 'resource_update', 'modResource', '5'),
(389, 1, '2017-05-09 01:03:52', 'resource_update', 'modResource', '5'),
(390, 1, '2017-05-09 01:05:19', 'chunk_create', 'modChunk', '9'),
(391, 1, '2017-05-09 01:06:28', 'resource_update', 'modResource', '5'),
(392, 1, '2017-05-09 01:07:50', 'chunk_update', 'modChunk', '9'),
(393, 1, '2017-05-09 01:07:51', 'propertyset_update_from_element', 'modChunk', '9'),
(394, 1, '2017-05-09 01:08:21', 'chunk_update', 'modChunk', '9'),
(395, 1, '2017-05-09 01:08:21', 'propertyset_update_from_element', 'modChunk', '9'),
(396, 1, '2017-05-09 01:08:32', 'chunk_update', 'modChunk', '9'),
(397, 1, '2017-05-09 01:08:33', 'propertyset_update_from_element', 'modChunk', '9'),
(398, 1, '2017-05-09 01:08:46', 'chunk_update', 'modChunk', '9'),
(399, 1, '2017-05-09 01:08:46', 'propertyset_update_from_element', 'modChunk', '9'),
(400, 1, '2017-05-09 01:09:27', 'resource_update', 'modResource', '5'),
(401, 1, '2017-05-09 01:09:28', 'chunk_update', 'modChunk', '9'),
(402, 1, '2017-05-09 01:09:28', 'propertyset_update_from_element', 'modChunk', '9'),
(403, 1, '2017-05-09 01:10:45', 'resource_update', 'modResource', '1'),
(404, 1, '2017-05-09 01:11:10', 'resource_update', 'modResource', '5'),
(405, 1, '2017-05-10 13:28:26', 'login', 'modContext', 'mgr'),
(406, 1, '2017-05-16 23:19:13', 'template_update', 'modTemplate', '2'),
(407, 1, '2017-05-16 23:19:14', 'propertyset_update_from_element', 'modTemplate', '2'),
(408, 1, '2017-05-16 23:25:23', 'chunk_update', 'modChunk', '4'),
(409, 1, '2017-05-16 23:25:23', 'propertyset_update_from_element', 'modChunk', '4'),
(410, 1, '2017-05-16 23:25:43', 'resource_update', 'modResource', '2'),
(411, 1, '2017-05-16 23:26:03', 'chunk_update', 'modChunk', '4'),
(412, 1, '2017-05-16 23:26:03', 'propertyset_update_from_element', 'modChunk', '4'),
(413, 1, '2017-05-16 23:26:26', 'resource_update', 'modResource', '2'),
(414, 1, '2017-05-16 23:27:07', 'chunk_update', 'modChunk', '4'),
(415, 1, '2017-05-16 23:27:07', 'propertyset_update_from_element', 'modChunk', '4'),
(416, 1, '2017-05-16 23:27:22', 'resource_update', 'modResource', '2'),
(417, 1, '2017-05-16 23:32:56', 'resource_update', 'modResource', '2'),
(418, 1, '2017-05-16 23:34:03', 'resource_update', 'modResource', '10'),
(419, 1, '2017-05-16 23:34:38', 'resource_update', 'modResource', '13'),
(420, 1, '2017-05-16 23:39:18', 'resource_update', 'modResource', '13'),
(421, 1, '2017-05-16 23:39:41', 'resource_update', 'modResource', '1'),
(422, 1, '2017-05-18 22:14:01', 'resource_update', 'modResource', '1'),
(423, 1, '2017-05-18 22:14:14', 'resource_update', 'modResource', '1'),
(424, 1, '2017-05-18 22:15:59', 'resource_update', 'modResource', '1'),
(425, 1, '2017-05-18 22:16:12', 'resource_update', 'modResource', '1'),
(426, 1, '2017-05-18 22:16:18', 'resource_update', 'modResource', '1'),
(427, 1, '2017-05-18 22:16:28', 'resource_update', 'modResource', '1'),
(428, 1, '2017-05-18 22:33:57', 'resource_update', 'modResource', '1'),
(429, 1, '2017-05-18 23:07:21', 'resource_update', 'modResource', '16'),
(430, 1, '2017-05-18 23:08:46', 'chunk_update', 'modChunk', '1'),
(431, 1, '2017-05-18 23:08:47', 'propertyset_update_from_element', 'modChunk', '1'),
(432, 1, '2017-05-18 23:08:54', 'chunk_update', 'modChunk', '1'),
(433, 1, '2017-05-18 23:08:55', 'propertyset_update_from_element', 'modChunk', '1'),
(434, 1, '2017-05-18 23:09:34', 'chunk_create', 'modChunk', '10'),
(435, 1, '2017-05-18 23:10:30', 'chunk_update', 'modChunk', '10'),
(436, 1, '2017-05-18 23:10:30', 'propertyset_update_from_element', 'modChunk', '10'),
(437, 1, '2017-05-18 23:13:10', 'resource_create', 'modDocument', '19'),
(438, 1, '2017-05-18 23:14:34', 'resource_update', 'modResource', '19'),
(439, 1, '2017-05-18 23:16:03', 'resource_update', 'modResource', '16'),
(440, 1, '2017-05-18 23:17:03', 'chunk_update', 'modChunk', '10'),
(441, 1, '2017-05-18 23:17:03', 'propertyset_update_from_element', 'modChunk', '10'),
(442, 1, '2017-05-18 23:22:50', 'resource_update', 'modResource', '16'),
(443, 1, '2017-05-18 23:23:28', 'resource_update', 'modResource', '19'),
(444, 1, '2017-05-18 23:24:06', 'resource_update', 'modResource', '19'),
(445, 1, '2017-05-18 23:24:12', 'resource_update', 'modResource', '19'),
(446, 1, '2017-05-18 23:25:02', 'resource_update', 'modResource', '16'),
(447, 1, '2017-05-18 23:25:10', 'resource_update', 'modResource', '16'),
(448, 1, '2017-05-18 23:26:33', 'template_create', 'modTemplate', '5'),
(449, 1, '2017-05-18 23:26:51', 'template_delete', 'modTemplate', '2'),
(450, 1, '2017-05-18 23:29:35', 'template_update', 'modTemplate', '5'),
(451, 1, '2017-05-18 23:29:35', 'propertyset_update_from_element', 'modTemplate', '5'),
(452, 1, '2017-05-18 23:29:46', 'template_update', 'modTemplate', '5'),
(453, 1, '2017-05-18 23:29:47', 'propertyset_update_from_element', 'modTemplate', '5'),
(454, 1, '2017-05-18 23:29:59', 'template_update', 'modTemplate', '5'),
(455, 1, '2017-05-18 23:30:00', 'propertyset_update_from_element', 'modTemplate', '5'),
(456, 1, '2017-05-18 23:30:20', 'resource_update', 'modResource', '19'),
(457, 1, '2017-05-18 23:33:45', 'template_update', 'modTemplate', '5'),
(458, 1, '2017-05-18 23:33:45', 'propertyset_update_from_element', 'modTemplate', '5'),
(459, 1, '2017-05-18 23:33:54', 'template_update', 'modTemplate', '5'),
(460, 1, '2017-05-18 23:33:55', 'propertyset_update_from_element', 'modTemplate', '5'),
(461, 1, '2017-05-18 23:35:21', 'tv_update', 'modTemplateVar', '1'),
(462, 1, '2017-05-18 23:35:21', 'propertyset_update_from_element', 'modTemplateVar', '1'),
(463, 1, '2017-05-18 23:36:15', 'resource_update', 'modResource', '16'),
(464, 1, '2017-05-18 23:36:20', 'resource_update', 'modResource', '16'),
(465, 1, '2017-05-18 23:36:46', 'resource_update', 'modResource', '16'),
(466, 1, '2017-05-18 23:37:34', 'template_update', 'modTemplate', '5'),
(467, 1, '2017-05-18 23:37:34', 'propertyset_update_from_element', 'modTemplate', '5'),
(468, 1, '2017-05-18 23:38:44', 'template_update', 'modTemplate', '5'),
(469, 1, '2017-05-18 23:38:45', 'propertyset_update_from_element', 'modTemplate', '5'),
(470, 1, '2017-05-18 23:39:21', 'chunk_update', 'modChunk', '1'),
(471, 1, '2017-05-18 23:39:21', 'propertyset_update_from_element', 'modChunk', '1'),
(472, 1, '2017-05-18 23:39:42', 'template_update', 'modTemplate', '4'),
(473, 1, '2017-05-18 23:39:43', 'propertyset_update_from_element', 'modTemplate', '4'),
(474, 1, '2017-05-18 23:40:47', 'resource_update', 'modResource', '1'),
(475, 1, '2017-05-18 23:41:56', 'chunk_update', 'modChunk', '1'),
(476, 1, '2017-05-18 23:41:56', 'propertyset_update_from_element', 'modChunk', '1'),
(477, 1, '2017-05-18 23:43:41', 'resource_update', 'modResource', '1'),
(478, 1, '2017-05-18 23:44:24', 'chunk_update', 'modChunk', '1'),
(479, 1, '2017-05-18 23:44:24', 'propertyset_update_from_element', 'modChunk', '1'),
(480, 1, '2017-05-18 23:45:09', 'chunk_update', 'modChunk', '1'),
(481, 1, '2017-05-18 23:45:09', 'propertyset_update_from_element', 'modChunk', '1'),
(482, 1, '2017-05-18 23:45:17', 'chunk_update', 'modChunk', '1'),
(483, 1, '2017-05-18 23:45:17', 'propertyset_update_from_element', 'modChunk', '1'),
(484, 1, '2017-05-18 23:45:30', 'resource_update', 'modResource', '1'),
(485, 1, '2017-05-18 23:45:49', 'resource_update', 'modResource', '1'),
(486, 1, '2017-05-18 23:45:57', 'resource_update', 'modResource', '1'),
(487, 1, '2017-05-18 23:46:08', 'resource_update', 'modResource', '1'),
(488, 1, '2017-05-18 23:46:16', 'resource_update', 'modResource', '1'),
(489, 1, '2017-05-23 20:39:59', 'resource_update', 'modResource', '1'),
(490, 1, '2017-05-23 20:40:15', 'resource_update', 'modResource', '1'),
(491, 1, '2017-05-23 20:52:22', 'chunk_create', 'modChunk', '11'),
(492, 1, '2017-05-23 20:52:44', 'resource_update', 'modResource', '1'),
(493, 1, '2017-05-23 20:53:20', 'chunk_update', 'modChunk', '11'),
(494, 1, '2017-05-23 20:53:20', 'propertyset_update_from_element', 'modChunk', '11'),
(495, 1, '2017-05-23 20:56:56', 'resource_update', 'modResource', '1'),
(496, 1, '2017-05-23 20:57:15', 'resource_update', 'modResource', '19'),
(497, 1, '2017-05-23 21:21:37', 'resource_create', 'modDocument', '20'),
(498, 1, '2017-05-23 21:22:03', 'resource_update', 'modResource', '20'),
(499, 1, '2017-05-23 21:22:15', 'resource_update', 'modResource', '20'),
(500, 1, '2017-05-23 21:58:01', 'resource_update', 'modResource', '19'),
(501, 1, '2017-05-23 22:38:50', 'resource_update', 'modResource', '13'),
(502, 1, '2017-05-23 22:48:46', 'chunk_update', 'modChunk', '7'),
(503, 1, '2017-05-23 22:48:47', 'propertyset_update_from_element', 'modChunk', '7'),
(504, 1, '2017-05-23 22:49:02', 'chunk_update', 'modChunk', '7'),
(505, 1, '2017-05-23 22:49:02', 'propertyset_update_from_element', 'modChunk', '7'),
(506, 1, '2017-05-27 20:37:45', 'resource_update', 'modResource', '1'),
(507, 1, '2017-05-27 20:38:03', 'resource_update', 'modResource', '1'),
(508, 1, '2017-05-27 20:45:20', 'resource_update', 'modResource', '1'),
(509, 1, '2017-05-27 20:48:32', 'resource_update', 'modResource', '1'),
(510, 1, '2017-05-27 20:50:12', 'resource_update', 'modResource', '1'),
(511, 1, '2017-05-27 20:51:45', 'resource_update', 'modResource', '1'),
(512, 1, '2017-05-27 20:51:53', 'resource_update', 'modResource', '1'),
(513, 1, '2017-05-27 20:52:17', 'resource_update', 'modResource', '1'),
(514, 1, '2017-05-27 20:52:32', 'resource_update', 'modResource', '1'),
(515, 1, '2017-05-27 20:52:43', 'resource_update', 'modResource', '1'),
(516, 1, '2017-05-27 20:52:51', 'resource_update', 'modResource', '1'),
(517, 1, '2017-05-27 20:53:29', 'resource_update', 'modResource', '1'),
(518, 1, '2017-05-27 20:53:38', 'resource_update', 'modResource', '1'),
(519, 1, '2017-05-27 20:53:48', 'resource_update', 'modResource', '1'),
(520, 1, '2017-05-27 20:54:06', 'resource_update', 'modResource', '1'),
(521, 1, '2017-05-27 20:54:13', 'resource_update', 'modResource', '1'),
(522, 1, '2017-05-27 20:55:48', 'resource_update', 'modResource', '1'),
(523, 1, '2017-05-27 20:55:55', 'resource_update', 'modResource', '1'),
(524, 1, '2017-05-27 20:58:42', 'resource_update', 'modResource', '1'),
(525, 1, '2017-05-27 20:58:56', 'resource_update', 'modResource', '1'),
(526, 1, '2017-05-27 20:59:03', 'resource_update', 'modResource', '1'),
(527, 1, '2017-05-27 21:11:34', 'chunk_update', 'modChunk', '11'),
(528, 1, '2017-05-27 21:11:34', 'propertyset_update_from_element', 'modChunk', '11'),
(529, 1, '2017-05-27 21:11:46', 'resource_update', 'modResource', '20'),
(530, 1, '2017-05-27 21:11:53', 'resource_update', 'modResource', '20'),
(531, 1, '2017-05-27 21:12:59', 'resource_update', 'modResource', '20'),
(532, 1, '2017-05-27 21:13:51', 'resource_update', 'modResource', '20'),
(533, 1, '2017-05-27 21:14:19', 'resource_update', 'modResource', '20'),
(534, 1, '2017-05-27 21:14:46', 'resource_update', 'modResource', '20'),
(535, 1, '2017-05-27 21:16:12', 'chunk_update', 'modChunk', '11'),
(536, 1, '2017-05-27 21:16:12', 'propertyset_update_from_element', 'modChunk', '11'),
(537, 1, '2017-05-27 21:19:17', 'login', 'modContext', 'mgr'),
(538, 1, '2017-05-27 21:19:48', 'resource_update', 'modResource', '1'),
(539, 1, '2017-05-27 21:20:02', 'resource_update', 'modResource', '1'),
(540, 1, '2017-05-27 21:23:35', 'chunk_update', 'modChunk', '10'),
(541, 1, '2017-05-27 21:23:35', 'propertyset_update_from_element', 'modChunk', '10'),
(542, 1, '2017-05-27 21:28:56', 'resource_update', 'modResource', '19'),
(543, 1, '2017-05-27 21:30:33', 'resource_update', 'modResource', '19'),
(544, 1, '2017-05-27 21:31:20', 'chunk_update', 'modChunk', '4'),
(545, 1, '2017-05-27 21:31:20', 'propertyset_update_from_element', 'modChunk', '4'),
(546, 1, '2017-05-27 21:32:05', 'chunk_update', 'modChunk', '4'),
(547, 1, '2017-05-27 21:32:05', 'propertyset_update_from_element', 'modChunk', '4'),
(548, 1, '2017-05-27 21:32:14', 'chunk_update', 'modChunk', '4'),
(549, 1, '2017-05-27 21:32:14', 'propertyset_update_from_element', 'modChunk', '4'),
(550, 1, '2017-05-27 21:33:17', 'resource_update', 'modResource', '1'),
(551, 1, '2017-05-27 21:34:04', 'chunk_update', 'modChunk', '4'),
(552, 1, '2017-05-27 21:34:04', 'propertyset_update_from_element', 'modChunk', '4'),
(553, 1, '2017-05-27 21:34:56', 'chunk_update', 'modChunk', '4'),
(554, 1, '2017-05-27 21:34:56', 'propertyset_update_from_element', 'modChunk', '4'),
(555, 1, '2017-05-27 21:35:08', 'chunk_update', 'modChunk', '4'),
(556, 1, '2017-05-27 21:35:08', 'propertyset_update_from_element', 'modChunk', '4'),
(557, 1, '2017-05-27 21:35:22', 'chunk_update', 'modChunk', '4'),
(558, 1, '2017-05-27 21:35:22', 'propertyset_update_from_element', 'modChunk', '4'),
(559, 1, '2017-05-27 21:35:34', 'chunk_update', 'modChunk', '4'),
(560, 1, '2017-05-27 21:35:34', 'propertyset_update_from_element', 'modChunk', '4'),
(561, 1, '2017-05-27 21:35:47', 'chunk_update', 'modChunk', '4'),
(562, 1, '2017-05-27 21:35:47', 'propertyset_update_from_element', 'modChunk', '4'),
(563, 1, '2017-05-27 21:36:54', 'chunk_update', 'modChunk', '4'),
(564, 1, '2017-05-27 21:36:54', 'propertyset_update_from_element', 'modChunk', '4'),
(565, 1, '2017-05-27 21:37:51', 'chunk_update', 'modChunk', '4'),
(566, 1, '2017-05-27 21:37:52', 'propertyset_update_from_element', 'modChunk', '4'),
(567, 1, '2017-05-27 21:38:12', 'chunk_update', 'modChunk', '4'),
(568, 1, '2017-05-27 21:38:12', 'propertyset_update_from_element', 'modChunk', '4'),
(569, 1, '2017-05-27 21:38:24', 'chunk_update', 'modChunk', '4'),
(570, 1, '2017-05-27 21:38:24', 'propertyset_update_from_element', 'modChunk', '4'),
(571, 1, '2017-05-27 21:40:03', 'chunk_update', 'modChunk', '4'),
(572, 1, '2017-05-27 21:40:03', 'propertyset_update_from_element', 'modChunk', '4'),
(573, 1, '2017-05-27 21:41:28', 'chunk_update', 'modChunk', '4'),
(574, 1, '2017-05-27 21:41:29', 'propertyset_update_from_element', 'modChunk', '4'),
(575, 1, '2017-05-27 21:41:51', 'chunk_update', 'modChunk', '4'),
(576, 1, '2017-05-27 21:41:52', 'propertyset_update_from_element', 'modChunk', '4'),
(577, 1, '2017-05-27 21:42:31', 'chunk_update', 'modChunk', '4'),
(578, 1, '2017-05-27 21:42:31', 'propertyset_update_from_element', 'modChunk', '4'),
(579, 1, '2017-05-27 21:56:25', 'chunk_update', 'modChunk', '4'),
(580, 1, '2017-05-27 21:56:26', 'propertyset_update_from_element', 'modChunk', '4'),
(581, 1, '2017-05-27 22:06:09', 'chunk_update', 'modChunk', '4'),
(582, 1, '2017-05-27 22:06:10', 'propertyset_update_from_element', 'modChunk', '4'),
(583, 1, '2017-05-27 22:47:58', 'chunk_update', 'modChunk', '4'),
(584, 1, '2017-05-27 22:47:58', 'propertyset_update_from_element', 'modChunk', '4'),
(585, 1, '2017-05-27 22:50:14', 'chunk_update', 'modChunk', '4'),
(586, 1, '2017-05-27 22:50:14', 'propertyset_update_from_element', 'modChunk', '4'),
(587, 1, '2017-05-27 22:50:40', 'chunk_update', 'modChunk', '10'),
(588, 1, '2017-05-27 22:50:41', 'propertyset_update_from_element', 'modChunk', '10'),
(589, 1, '2017-05-27 22:51:25', 'chunk_update', 'modChunk', '10'),
(590, 1, '2017-05-27 22:51:25', 'propertyset_update_from_element', 'modChunk', '10'),
(591, 1, '2017-05-27 22:51:45', 'resource_update', 'modResource', '16'),
(592, 1, '2017-05-27 23:35:38', 'resource_update', 'modResource', '19'),
(593, 1, '2017-05-27 23:35:55', 'resource_update', 'modResource', '19'),
(594, 1, '2017-05-27 23:36:01', 'resource_update', 'modResource', '19'),
(595, 1, '2017-05-27 23:36:55', 'chunk_update', 'modChunk', '10'),
(596, 1, '2017-05-27 23:36:55', 'propertyset_update_from_element', 'modChunk', '10'),
(597, 1, '2017-05-27 23:37:01', 'chunk_update', 'modChunk', '10'),
(598, 1, '2017-05-27 23:37:01', 'propertyset_update_from_element', 'modChunk', '10'),
(599, 1, '2017-05-27 23:37:14', 'chunk_update', 'modChunk', '10'),
(600, 1, '2017-05-27 23:37:14', 'propertyset_update_from_element', 'modChunk', '10'),
(601, 1, '2017-05-27 23:37:45', 'duplicate_resource', 'modDocument', '21'),
(602, 1, '2017-05-27 23:38:02', 'duplicate_resource', 'modDocument', '22'),
(603, 1, '2017-05-27 23:38:39', 'resource_update', 'modResource', '21'),
(604, 1, '2017-05-27 23:39:14', 'chunk_update', 'modChunk', '10'),
(605, 1, '2017-05-27 23:39:14', 'propertyset_update_from_element', 'modChunk', '10'),
(606, 1, '2017-05-27 23:39:35', 'chunk_update', 'modChunk', '10'),
(607, 1, '2017-05-27 23:39:35', 'propertyset_update_from_element', 'modChunk', '10'),
(608, 1, '2017-05-28 12:16:42', 'delete_resource', 'modDocument', '21'),
(609, 1, '2017-05-28 12:16:48', 'delete_resource', 'modDocument', '22'),
(610, 1, '2017-05-28 12:23:23', 'chunk_update', 'modChunk', '10'),
(611, 1, '2017-05-28 12:23:24', 'propertyset_update_from_element', 'modChunk', '10'),
(612, 1, '2017-05-28 12:23:38', 'chunk_update', 'modChunk', '10'),
(613, 1, '2017-05-28 12:23:38', 'propertyset_update_from_element', 'modChunk', '10'),
(614, 1, '2017-05-28 12:34:11', 'chunk_update', 'modChunk', '10'),
(615, 1, '2017-05-28 12:34:11', 'propertyset_update_from_element', 'modChunk', '10');

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_media_sources_elements`
--

INSERT INTO `modx_media_sources_elements` (`source`, `object_class`, `object`, `context_key`) VALUES
(1, 'modTemplateVar', 1, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(255) NOT NULL DEFAULT '',
  `parent` varchar(255) NOT NULL DEFAULT '',
  `action` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', '\nMODx.msg.confirm({\n    title: _(''remove_locks'')\n    ,text: _(''confirm_remove_locks'')\n    ,url: MODx.config.connectors_url\n    ,params: {\n        action: ''system/remove_locks''\n    }\n    ,listeners: {\n        ''success'': {fn:function() {\n            var tree = Ext.getCmp("modx-resource-tree");\n            if (tree && tree.rendered) {\n                tree.refresh();\n            }\n         },scope:this}\n    }\n});', 'remove_locks', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(''flush_access'')\n    ,text: _(''flush_access_confirm'')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: ''security/access/flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(''flush_sessions'')\n    ,text: _(''flush_sessions_confirm'')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: ''security/flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id="user-avatar">{$userImage}</span> <span id="user-username">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('admin', 'usernav', '', '', '<i class="icon-gear icon icon-large"></i>', 6, '', '', 'settings', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('about', 'usernav', 'help', '', '<i class="icon-question-circle icon icon-large"></i>', 7, '', '', 'help', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}'),
('phpthumbof', '{core_path}components/phpthumbof/', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `options` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:"directory";s:5:"locks";}'),
(2, 'resource_reload', 'a:1:{s:9:"directory";s:15:"resource_reload";}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2017-05-02 11:33:03', NULL, NULL),
(2, 2, '/resourcereload/', '2017-05-02 11:33:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('frtkuome9lgd8s3jralja9eti2', 1495967662, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('sdkpmiiomp1u7bqvaqdpagv164', 1495920873, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}'),
('4k9ph0qa0tj0j1hmbi0tjbt9q7', 1495921164, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('kc29p6rqmnsgjv1tfi7it3umi0', 1495913398, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('2h69rs9pa875jtnr51vj4fo557', 1495912763, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx590851fad55e28.60856367_15929d13581a556.94876033";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:1:{i:0;s:23:"5929d13bd377f1.55169326";}'),
('gmh8khsbj181j3crcjkkkfhg23', 1495912713, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('l9amko0onacl8v342n51kheoq7', 1495912614, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('tkaqrpforcq0podu956k7hvsm6', 1495912520, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('thlc3rhfvmpo85u4buv1tpm9e6', 1495910926, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('ia2tbfuq31509qkv45s35t1e41', 1495911031, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('i0eev16vtd8h3qqgpfch2b8ap3', 1495912322, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('ce4fvjj3sbickrnqrlttb5aib5', 1495910731, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('ntdnoc81f3knsp1pjvu7vlibb5', 1495966343, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx590851fad55e28.60856367_15912f95adc2729.41009856";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:81:{i:0;s:23:"5912f95ec91673.14062348";i:1;s:23:"5912f96fbe08f0.55370311";i:2;s:23:"5912f97a701297.55417357";i:3;s:23:"5912f98bd82333.31219983";i:4;s:23:"5912f98fa03d99.56544837";i:5;s:23:"5912f9d065b7a9.54691511";i:6;s:23:"5912f9d3a93e78.04002818";i:7;s:23:"5912fac1704ab3.99963789";i:8;s:23:"591b6d50296c84.28969081";i:9;s:23:"591b6d759bf994.56429154";i:10;s:23:"591b6e0cf12f52.45218791";i:11;s:23:"591b6e91635038.15485661";i:12;s:23:"591b703d0caf04.16286286";i:13;s:23:"591b70588fe7c1.75734803";i:14;s:23:"591b70667c70f2.27642585";i:15;s:23:"591b706ce10a74.60688329";i:16;s:23:"591b718e666b66.10998065";i:17;s:23:"591dff84dcb571.70514955";i:18;s:23:"591e08c0379f45.49681103";i:19;s:23:"591e0da5810165.62431157";i:20;s:23:"591e0dd2c9fc49.34404542";i:21;s:23:"591e0dd78c0460.61603760";i:22;s:23:"591e0e6843f060.59739628";i:23;s:23:"591e0e805d8cb3.75331741";i:24;s:23:"591e0e8b333406.18543281";i:25;s:23:"591e0ec03f1473.54465518";i:26;s:23:"591e0ee4d12798.04542927";i:27;s:23:"591e0ee90a9267.13109554";i:28;s:23:"591e10ba8fbbb7.44896206";i:29;s:23:"591e111bb07f41.81046742";i:30;s:23:"591e11b1918111.13351723";i:31;s:23:"591e11b7d3b0c8.60670698";i:32;s:23:"591e1260c58850.40571517";i:33;s:23:"591e126582f762.94240209";i:34;s:23:"591e13811f1352.00893700";i:35;s:23:"591e1389246a03.74789469";i:36;s:23:"591e13c579c656.85161478";i:37;s:23:"591e1411aaa908.03056213";i:38;s:23:"591e14a94b66e2.19092727";i:39;s:23:"591e14cd52b2b4.25991724";i:40;s:23:"591e156e1e1161.94874611";i:41;s:23:"591e15f1ef9bb3.54600801";i:42;s:23:"592471e50c8f72.13701987";i:43;s:23:"592473a5f1da34.20525275";i:44;s:23:"592473aa331127.71063004";i:45;s:23:"59248026352165.98150883";i:46;s:23:"59248194305a28.09733837";i:47;s:23:"59248198121c02.08664218";i:48;s:23:"592485fbbd4b66.19662917";i:49;s:23:"592486005fc688.94507327";i:50;s:23:"59248bb6df36d9.80791944";i:51;s:23:"59248bc337b690.74798245";i:52;s:23:"59248bce1cf0f0.67761498";i:53;s:23:"59249441ef6428.99456880";i:54;s:23:"59249dd7167431.15177718";i:55;s:23:"59249e376f8a69.44633710";i:56;s:23:"59249e51c20ff2.51856428";i:57;s:23:"59249f55723024.09818225";i:58;s:23:"59249fc1980f36.17962306";i:59;s:23:"59249fc92c2320.40836160";i:60;s:23:"59249ff0ad2532.56161838";i:61;s:23:"5929c7486e2837.92159576";i:62;s:23:"5929cf6accf060.09492094";i:63;s:23:"5929d063cbd028.77449758";i:64;s:23:"5929d3703a5c95.49155093";i:65;s:23:"5929d3c7084e67.24235629";i:66;s:23:"5929d3f12d6e62.38912124";i:67;s:23:"5929d4556db4a0.94465913";i:68;s:23:"5929e6d2be2fc6.53818220";i:69;s:23:"5929f11dbebe39.38953314";i:70;s:23:"5929f121d22487.76665759";i:71;s:23:"5929f145235559.31464676";i:72;s:23:"5929f14b2702b8.43204747";i:73;s:23:"5929f1506e17d5.38903570";i:74;s:23:"5929f158887d15.59827903";i:75;s:23:"5929f15f1bc035.55033771";i:76;s:23:"5929f194745ba0.54409922";i:77;s:23:"5929f19c111029.02365670";i:78;s:23:"5929f1dbab3bf4.41146193";i:79;s:23:"592aa27cb353e2.82164513";i:80;s:23:"592aa2876be0a3.61751760";}modx.user.1.userGroups|a:1:{i:0;i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `donthit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Главная', '', '', 'index', '', 1, 0, 0, 0, 0, '', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<title>СНТО</title>\r\n<meta charset="utf-8">\r\n<meta name="viewport" content="width=device-width, initial-scale=1.0">\r\n<link rel="stylesheet" href="css/style.css">\r\n<link rel="stylesheet" href="css/bootstrap.css">\r\n<link rel="stylesheet" href="css/slick-theme.css">\r\n<link rel="stylesheet" href="css/slick.css">\r\n<link rel="stylesheet" href="css/font-awesome.min.css">\r\n<meta name="keywords" content="">\r\n<meta name="description" content="">\r\n</head>\r\n<body>\r\n  \r\n\r\n<!----ХЭДЕР ПОДГРУЖАЕТСЯ ЧАНКОМ "Header"------>\r\n            [[$Header]]\r\n    \r\n    <main>\r\n        <div class="container">\r\n            <div class="row">\r\n                <!-- Вывод главной новости-->\r\n                [[!getPage?\r\n                                &element=`getResources`\r\n                                &parents=`5` \r\n                                &tpl=`firstArticle` \r\n                                &limit=`1`\r\n                                &includeTVs=`1`]]\r\n                <div class="col-md-3 col-sm-3 col-md-12 main_news_right">\r\n                    \r\n              \r\n                   <h3>НОВОСТИ НЕДЕЛИ</h3>\r\n                    <div class="row">\r\n           \r\n                                [[!getPage?\r\n&element=`getResources`\r\n&parents=`5` \r\n&tpl=`articleTpl` \r\n&limit=`4`\r\n&includeTVs=`1`]]\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            \r\n            <!--Блоки с навигацией -->\r\n            \r\n            <div class="row nav_main_razdel">\r\n                <div class="col-md-3 col-sm-3 col-xs-4  navigate_razdel">\r\n                    <a href="index.php?id=14"><img src="img/snto_nav.jpg"></a>\r\n                </div>\r\n                <div class="col-md-3 col-sm-3 col-xs-4 col-md-offset-1 navigate_razdel">\r\n                   <a href="index.php/index.php?id=5"><img src="img/sobytya.jpg"></a>\r\n                </div>\r\n                <div class="col-md-3 col-sm-3 col-xs-4 col-md-offset-1 navigate_razdel">\r\n                    <a href="index.php/index.php?id=16"><img src="img/procet_nav.jpg"></a>\r\n                </div>\r\n            </div>\r\n            \r\n            <div class="row news_block_two">\r\n                <div class="col-md-3 col-sm-3">\r\n                    <div class="row otstup_row">\r\n                        <div class="col-md-12 col-sm-12 mini-left-mini">\r\n                            <p>elitLorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet</p>\r\n                        </div>\r\n                        <div class="col-md-12 col-sm-12 mini-left-mini">\r\n                            <p>elitLorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet</p>\r\n                        </div>\r\n                        <div class="col-md-12 col-sm-12 mini-left-mini">\r\n                            <p>elitLorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet</p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                [[!getPage?\r\n                                &element=`getResources`\r\n                                &parents=`5` \r\n                                &tpl=`rndNews` \r\n                                &limit=`1`\r\n                                &sortby=`RAND()`\r\n                                &includeTVs=`1`]]\r\n            </div>\r\n            \r\n            <!-- Проеткты -->\r\n            <div class="row news_block_three">\r\n                \r\n[[!getPage?\r\n&element=`getResources`\r\n&parents=`16` \r\n&tpl=`ProjectMainPage` \r\n&limit=`2`\r\n&includeTVs=`1`]]   \r\n              \r\n            </div>\r\n            \r\n            <!-- слайдер -->\r\n            [[$partners]]\r\n \r\n            </div>\r\n            \r\n            <div class="col-md-12 form">\r\n                <form method="post" action="">\r\n                    <div class="row">\r\n                        <div class="col-md-11 col-md-offset-1 col-sm-offset-1">\r\n                            <h4>ПОЛУЧАЙТЕ НОВОСТИ НА ПОЧТУ</h4>\r\n                        </div>\r\n                        <div class="col-md-7 col-sm-7 col-md-offset-1 col-sm-offset-1">\r\n                            <input type="text" name="mail" placeholder="ВВЕДИТЕ ВАШ E-MAIL">\r\n                        </div>\r\n                        <div class="col-md-3 col-sm-3">\r\n                            <input type="submit" name="add" value="ПОДПИСАТЬСЯ">\r\n                        </div>\r\n                    </div>\r\n                </form>\r\n            </div>\r\n        </div>\r\n    </main>\r\n    \r\n    <footer>\r\n            <div class="container">\r\n                <div class="row footer otstup_row">\r\n                <div class="col-md-9">\r\n                    <h4>Студенческое научно-техническое общество <br><br><br><br> Тел. +7 495 223-05-23 <br>доб. 1155</h4>    \r\n                </div>\r\n                <div class="col-md-3">\r\n                    <ul>\r\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\r\n                    </ul>    \r\n                </div>\r\n                </div>\r\n                <div class="row">\r\n                <div class="col-md-12 text-center">\r\n                    <h4>© Московский политех 2017</h4>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </footer>\r\n    \r\n <script src="js/jquery-3.1.1.js" type="text/javascript"></script>   \r\n <script src="js/slick.js" type="text/javascript"></script>   \r\n <script src="js/slider.js" type="text/javascript"></script>   \r\n <script src="js/slick.min.js" type="text/javascript"></script>   \r\n<script src="js/bootstrap.min.js" type="text/javascript"></script>\r\n<script src="js/bootstrap.js" type="text/javascript"></script>\r\n</body>\r\n</html>', 1, 0, 0, 1, 1, 1, 1493717518, 1, 1495913597, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(20, 'document', 'text/html', 'СКБ-МАМИ', '', '', 'скб-мами', '', 1, 0, 0, 16, 0, 'СКБ-МАМИ (с сентября 2016 года переименовано в НТЦ «Промышленный дизайн») является студией промышленного дизайна и предприятием разработчиком, оказывающим услуги и работающим в сфере промышленного и транспортного дизайна.\r\nМы предоставляем услуги промышленного дизайна c 1987 года и, благодаря богатому опыту разработок, способны решать нестандартные задачи оперативно и мобильно с индивидуальным подходом к каждому проекту.', 'СКБ-МАМИ (с сентября 2016 года переименовано в НТЦ «Промышленный дизайн») является студией промышленного дизайна и предприятием разработчиком, оказывающим услуги и работающим в сфере промышленного и транспортного дизайна.\r\nМы предоставляем услуги промышленного дизайна c 1987 года и, благодаря богатому опыту разработок, способны решать нестандартные задачи оперативно и мобильно с индивидуальным подходом к каждому проекту.', 1, 5, 1, 1, 1, 1, 1495567297, 1, 1495912486, 0, 0, 0, 1495567320, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(14, 'document', 'text/html', 'СНТО', '', '', 'снто', '', 1, 0, 0, 0, 0, '', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<title>СНТК</title>\r\n<meta charset="utf-8">\r\n<meta name="viewport" content="width=device-width, initial-scale=1.0">\r\n<link rel="stylesheet" href="css/style.css">\r\n<link rel="stylesheet" href="css/bootstrap.css">\r\n<link rel="stylesheet" href="css/slick-theme.css">\r\n<link rel="stylesheet" href="css/slick.css">\r\n<link rel="stylesheet" href="css/snt.css">\r\n<link rel="stylesheet" href="css/font-awesome.min.css">\r\n<meta name="keywords" content="">\r\n<meta name="description" content="">\r\n</head>\r\n<body>\r\n   <!----ХЭДЕР ПОДГРУЖАЕТСЯ ЧАНКОМ "Header"------>\r\n            [[$Header]]\r\n        <section class="snto">\r\n            <div class="col-md-8 col-sm-8 col-md-offset-2  col-sm-offset-2 text-center name_banner">\r\n                <h1>СНТО</h1>\r\n            </div>\r\n            <div class="col-md-12 text-center opis_banner">\r\n                <p>студенческое научно-техническое общество</p>\r\n            </div>\r\n    </section>\r\n    <main>\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-md-12 cel_snto text-center">\r\n                    <h2>Цель СНТО</h2>\r\n                    <br>\r\n                    <p>Вовлечение студентов в научно-исследовательскую работу Университета, обеспечение коммуникации с преподавательским составом и другими представителями научной и технической сферы</p>\r\n                </div>\r\n                <div class="col-md-12 zadachi_snto text-center">\r\n                    <h2>Задачи СНТО</h2>\r\n                    <div class="row">\r\n                        <div class="col-md-3 col-sm-3 col-xs-6 text-center">\r\n                            <img src="img/zadacha1.png">\r\n                            <p>Объединение учащихся в проекты</p>\r\n                        </div>\r\n                        <div class="col-md-3 col-sm-3 col-xs-6 text-center">\r\n                            <img src="img/zadacha2.png">\r\n                            <p>Развитие интереса к науке</p>\r\n                        </div>\r\n                        <div class="col-md-3 col-sm-3 col-xs-6 text-center">\r\n                            <img src="img/zadacha3.png">\r\n                            <p>Организация участия в мероприятиях</p>\r\n                        </div>\r\n                        <div class="col-md-3 col-sm-3 col-xs-6 text-center">\r\n                            <img src="img/zadacha4.png">\r\n                            <p>общение  с деятелями науки</p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class="col-md-12 text-center advance_snto">\r\n                    <h2>Какая польза для тебя?</h2>\r\n                    <ul>\r\n                        <li>\r\n                            проведение научных исследований с первых курсов для включения в магистерские программы\r\n                        </li>\r\n                        <li>\r\n                            вероятность найти потенциального работодателя во время учебы\r\n                        </li>\r\n                        <li>\r\n                            перспектива включения в кадровый резерв своего университета\r\n                        </li>\r\n                        <li>\r\n                            привлечение партнеров к твоему проекту и получение грантов\r\n                        </li>\r\n                        <li>\r\n                            участие в межвузовских, всероссийских и международных форумах и конференциях\r\n                        </li>\r\n                        <li>\r\n                            публикация своих работ в научно-технических сборниках\r\n                        </li>\r\n                        <li>\r\n                            интересная научная и общественная жизнь в коллективе единомышленников\r\n                        </li>\r\n                    </ul>    \r\n                </div>\r\n            </div>\r\n        </div>\r\n    </main>\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    <div class="container">\r\n            <div class="row">\r\n                <div class="col-md-12 form">\r\n                        <form method="post" action="">\r\n                            <div class="row">\r\n                                <div class="col-md-11 col-md-offset-1 col-sm-offset-1">\r\n                                    <h4>ПОЛУЧАЙТЕ НОВОСТИ НА ПОЧТУ</h4>\r\n                                </div>\r\n                                <div class="col-md-7 col-sm-7 col-md-offset-1 col-sm-offset-1">\r\n                                    <input type="text" name="mail" placeholder="ВВЕДИТЕ ВАШ E-MAIL">\r\n                                </div>\r\n                                <div class="col-md-3 col-sm-3">\r\n                                    <input type="submit" name="add" value="ПОДПИСАТЬСЯ">\r\n                                </div>\r\n                            </div>\r\n                        </form>\r\n                    </div>\r\n            </div>\r\n    </div>\r\n\r\n    <footer>\r\n            <div class="container footer">\r\n                <div class="row">\r\n                <div class="col-md-9">\r\n                    <h4>Студенческое научно-техническое общество <br><br><br><br> Тел. +7 495 223-05-23 <br>доб. 1155</h4>    \r\n                </div>\r\n                <div class="col-md-3">\r\n                    <ul>\r\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\r\n                    </ul>    \r\n                </div>\r\n                </div>\r\n                <div class="row">\r\n                <div class="col-md-12 text-center">\r\n                    <h4>© Московский политех 2017</h4>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </footer>\r\n   \r\n <script src="js/jquery-3.1.1.js" type="text/javascript"></script>  \r\n <script src="js/slick.js" type="text/javascript"></script>   \r\n <script src="js/jquery.catslider.js" type="text/javascript"></script>     \r\n <script src="js/slider.js" type="text/javascript"></script>   \r\n <script src="js/slick.min.js" type="text/javascript"></script>   \r\n<script src="js/bootstrap.min.js" type="text/javascript"></script>\r\n<script src="js/bootstrap.js" type="text/javascript"></script>\r\n</body>\r\n</html>', 1, 0, 5, 1, 1, 1, 1494193354, 1, 1494196136, 0, 0, 0, 1494193320, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(15, 'document', 'text/html', 'Мероприятия', '', '', 'мероприятия', '', 1, 0, 0, 0, 0, '', '', 1, 0, 6, 1, 1, 1, 1494193373, 0, 0, 0, 0, 0, 1494193373, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(16, 'document', 'text/html', 'Проекты', '', '', 'проекты', '', 1, 0, 0, 0, 1, '', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<title>СНТК</title>\r\n<meta charset="utf-8">\r\n<meta name="viewport" content="width=device-width, initial-scale=1.0">\r\n<link rel="stylesheet" href="css/style.css">\r\n<link rel="stylesheet" href="css/bootstrap.css">\r\n<link rel="stylesheet" href="css/slick-theme.css">\r\n<link rel="stylesheet" href="css/slick.css">\r\n<link rel="stylesheet" href="css/snt.css">\r\n<link rel="stylesheet" href="css/font-awesome.min.css">\r\n<meta name="keywords" content="">\r\n<meta name="description" content="">\r\n</head>\r\n<body>\r\n   \r\n<!----ХЭДЕР ПОДГРУЖАЕТСЯ ЧАНКОМ "Header"------>\r\n            [[$Header]]\r\n        <main>\r\n            <div class="container">\r\n                <div class="col-md-12  store_zagolovok">\r\n                    <h1>Банк научных проектов</h1><hr>\r\n                </div>\r\n                \r\n               [[!getPage?                             \r\n&elementClass=`modSnippet`\r\n&element=`getResources`\r\n&parents=`[[*id]]`\r\n&tpl=`projectBank`\r\n&limit=`10`&includeTVs=`1`\r\n&hideContainers=`1`\r\n&pageLimit=`20`\r\n&pageNavVar=`page.nav`]]\r\n<center>Страница [[+page]] из [[+pageCount]]<ul class="pageList">[[+page.nav]]</ul></center><br>\r\n            \r\n            \r\n                \r\n        </main>\r\n    <footer>\r\n            <div class="container footer">\r\n                <div class="row">\r\n                <div class="col-md-9">\r\n                    <h4>Студенческое научно-техническое общество <br><br><br><br> Тел. +7 495 223-05-23 <br>доб. 1155</h4>    \r\n                </div>\r\n                <div class="col-md-3">\r\n                    <ul>\r\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\r\n                    </ul>    \r\n                </div>\r\n                </div>\r\n                <div class="row">\r\n                <div class="col-md-12 text-center">\r\n                    <h4>© Московский политех 2017</h4>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </footer>\r\n   \r\n <script src="js/jquery-3.1.1.js" type="text/javascript"></script>  \r\n <script src="js/slick.js" type="text/javascript"></script>   \r\n <script src="js/jquery.catslider.js" type="text/javascript"></script>     \r\n <script src="js/slider.js" type="text/javascript"></script>   \r\n <script src="js/slick.min.js" type="text/javascript"></script>   \r\n<script src="js/bootstrap.min.js" type="text/javascript"></script>\r\n<script src="js/bootstrap.js" type="text/javascript"></script>\r\n</body>\r\n</html>', 1, 0, 7, 1, 1, 1, 1494193389, 1, 1495918305, 0, 0, 0, 1494193380, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'СНТК', '', '', 'снтк', '', 1, 0, 0, 0, 1, '', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<title>СНТК</title>\r\n<meta charset="utf-8">\r\n<meta name="viewport" content="width=device-width, initial-scale=1.0">\r\n<link rel="stylesheet" href="css/style.css">\r\n<link rel="stylesheet" href="css/bootstrap.css">\r\n<link rel="stylesheet" href="css/slick-theme.css">\r\n<link rel="stylesheet" href="css/slick.css">\r\n<link rel="stylesheet" href="css/snt.css">\r\n<link rel="stylesheet" href="css/font-awesome.min.css">\r\n<meta name="keywords" content="">\r\n<meta name="description" content="">\r\n</head>\r\n<body>\r\n   <!----ХЭДЕР ПОДГРУЖАЕТСЯ ЧАНКОМ "Header"------>\r\n            [[$Header]]\r\n        <section class="sntk">\r\n            <div class="col-md-8 col-sm-8 col-md-offset-2  col-sm-offset-2 text-center name_banner">\r\n                <h1>СНТК</h1>\r\n            </div>\r\n            <div class="col-md-12 text-center opis_banner">\r\n                <p>студенческая научно-техническая конференция</p>\r\n            </div>\r\n    </section>\r\n    <main>\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-md-3 col-sm-3 col-xs-12 navigate_left">\r\n                    <ul>\r\n                         [[!getPage?\r\n                                &element=`getResources`\r\n                                &parents=`2` \r\n                                &tpl=`sntkTpl` \r\n                                &limit=`10`\r\n                                &includeTVs=`1`]]\r\n                    </ul>\r\n                </div>\r\n                <div class="col-md-9 col-sm-9 col-xs-12 text_navigate">\r\n                    <p>Открытая студенческая научно-техническая конференция ежегодно проводится Московским Политехом с 1950 года. Конференция призвана способствовать развитию студенческого научно-технического творчества и обмену опытом по перспективным направлениям автомобилестроения, а также по другим направлениям фундаментальных и прикладных наук. \r\n                    <br><br>\r\n\r\nОсновная цель конференции – привлечение студентов российских высших учебных заведений к научно-исследовательской работе и решению актуальных научных задач машиностроения.\r\n<br><br>\r\nУчастниками конференции традиционно являются студенты московских и региональных высших учебных заведений Российской Федерации.</p>\r\n                </div>\r\n            </div>\r\n            \r\n\r\n[[$partners]]\r\n\r\n\r\n            \r\n    </main>\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    <div class="container">\r\n            <div class="row">\r\n                <div class="col-md-12 form">\r\n                        <form method="post" action="">\r\n                            <div class="row">\r\n                                <div class="col-md-11 col-md-offset-1 col-sm-offset-1">\r\n                                    <h4>ПОЛУЧАЙТЕ НОВОСТИ НА ПОЧТУ</h4>\r\n                                </div>\r\n                                <div class="col-md-7 col-sm-7 col-md-offset-1 col-sm-offset-1">\r\n                                    <input type="text" name="mail" placeholder="ВВЕДИТЕ ВАШ E-MAIL">\r\n                                </div>\r\n                                <div class="col-md-3 col-sm-3">\r\n                                    <input type="submit" name="add" value="ПОДПИСАТЬСЯ">\r\n                                </div>\r\n                            </div>\r\n                        </form>\r\n                    </div>\r\n            </div>\r\n    </div>\r\n\r\n    <footer>\r\n            <div class="container footer">\r\n                <div class="row">\r\n                <div class="col-md-9">\r\n                    <h4>Студенческое научно-техническое общество <br><br><br><br> Тел. +7 495 223-05-23 <br>доб. 1155</h4>    \r\n                </div>\r\n                <div class="col-md-3">\r\n                    <ul>\r\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\r\n                    </ul>    \r\n                </div>\r\n                </div>\r\n                <div class="row">\r\n                <div class="col-md-12 text-center">\r\n                    <h4>© Московский политех 2017</h4>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </footer>\r\n   \r\n <script src="js/jquery-3.1.1.js" type="text/javascript"></script>  \r\n <script src="js/slick.js" type="text/javascript"></script>   \r\n <script src="js/jquery.catslider.js" type="text/javascript"></script>     \r\n <script src="js/slider.js" type="text/javascript"></script>   \r\n <script src="js/slick.min.js" type="text/javascript"></script>   \r\n<script src="js/bootstrap.min.js" type="text/javascript"></script>\r\n<script src="js/bootstrap.js" type="text/javascript"></script>\r\n</body>\r\n</html>', 1, 0, 1, 1, 1, 1, 1493829845, 1, 1494970376, 0, 0, 0, 1494183180, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(3, 'document', 'text/html', 'СНТК 2017', '', '', 'снтк-2017', '', 0, 0, 0, 0, 0, '', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<title>СНТК 2017</title>\r\n<meta charset="utf-8">\r\n<meta name="viewport" content="width=device-width, initial-scale=1.0">\r\n<link rel="stylesheet" href="css/style.css">\r\n<link rel="stylesheet" href="css/bootstrap.css">\r\n<link rel="stylesheet" href="css/slick-theme.css">\r\n<link rel="stylesheet" href="css/slick.css">\r\n<link rel="stylesheet" href="css/snt.css">\r\n<link rel="stylesheet" href="css/font-awesome.min.css">\r\n<meta name="keywords" content="">\r\n<meta name="description" content="">\r\n</head>\r\n<body>\r\n    <header>\r\n        <div class="container">\r\n            <div class="row social_button">\r\n                <div class="col-md-12 col-sm-12">\r\n                    <ul>\r\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\r\n                        <li class="social_button_person"><a href=""><i class="fa fa-user-circle" aria-hidden="true"></i>\r\n</a></li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n            <nav class="navbar navbar-default menu_top">\r\n      <!-- Бренд и переключатель, который вызывает меню на мобильных устройствах -->\r\n                  <div class="navbar-header">\r\n                    <!-- Кнопка с полосочками, которая открывает меню на мобильных устройствах -->\r\n                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu" aria-expanded="false">\r\n                      <span class="sr-only">Toggle navigation</span>\r\n                      <span class="icon-bar"></span>\r\n                      <span class="icon-bar"></span>\r\n                      <span class="icon-bar"></span>\r\n                    </button>\r\n                    <!-- Бренд или логотип фирмы (обычно содержит ссылку на главную страницу) -->\r\n                    <a href="#" class="navbar-brand"><img src="img/logo.png"></a>\r\n                  </div>\r\n                  <!-- Содержимое меню (коллекция навигационных ссылок, формы и др.) -->\r\n                  <div class="collapse navbar-collapse" id="main-menu" >\r\n                      <!-- Список ссылок, расположенных слева -->\r\n                    <ul class="nav navbar-nav navbar-right">\r\n                      <!--Элемент с классом active отображает ссылку подсвеченной -->\r\n                      <li><a href="#">ОБ СНТО</a></li>\r\n                    <li><a href="#">СНТК</a></li>\r\n                      <li><a href="#">МЕРОПРИЯТИЯ</a></li>\r\n                      <li><a href="#">ПРОЕКТЫ</a></li>\r\n                    </ul>\r\n                  </div>\r\n            </nav>\r\n        </div>\r\n    </header>\r\n        <section class="sntk_201">\r\n            <div class="col-md-8 col-sm-8 col-md-offset-2  col-sm-offset-2 text-center name_banner">\r\n                <h1>СНТК 2017</h1>\r\n            </div>\r\n            <div class="col-md-12 text-center opis_banner">\r\n                <p>с 10 по 21 апреля</p>\r\n            </div>\r\n    </section>\r\n    <main>\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-md-3 col-sm-3 col-xs-12 navigate_left">\r\n                    <ul>\r\n                        <li><a href="">О конференции</a></li>\r\n                        <li><a href="">2017</a></li>\r\n                        <li><a href="">2016</a></li>\r\n                        <li><a href="">2015</a></li>\r\n                        <li><a href="">2014</a></li>\r\n                        <li><a href="">2013</a></li>\r\n                        <li><a href="">2012</a></li>\r\n                        <li><a href="">2011</a></li>\r\n                        <li><a href="">Обратная связь</a></li>\r\n                    </ul>\r\n                </div>\r\n                <div class="col-md-9 col-sm-9 col-xs-12 text_navigate">\r\n                    <h3><b>Уважаемые студенты!</b></h3>\r\n\r\n<p>Открытая международная студенческая научно-техническая конференция «СНТК Московского Политеха – 2017» состоится в Московском Политехе с 10 по 21 апреля 2017 года.\r\n<br><br>\r\nК участию в конференции приглашаются студенты Московского Политеха и других вузов. Авторы лучших работ будут награждены дипломами и призами. Иногородним студентам предоставляется право бесплатного проживания в гостевом номере общежития на время проведения конференции.\r\n<br><br>\r\nЗакрытые секции организованы только для студентов Московского Политеха. Победитель закрытой секции становится участником открытой секции.\r\n<br><br>\r\n    <strong>Открытые секции</strong> — это секции по приоритетным направлениям деятельности Московского Политеха. В них могут участвовать студенты из других вузов, а также студенты Московского Политеха, ставшие победителями закрытых секций.\r\n<br><br>\r\n                    </p>\r\n                    <h3>Важные даты:</h3>\r\n<p>\r\n<b> \r\nРегистрация участников:\r\n</b>\r\n</p>\r\n<ul>                    \r\n    <li>для студентов Московского Политеха: до 1 апреля 2017 г.</li>\r\n    <li>для студентов других вузов: до 15 марта 2017 г.</li>\r\n</ul>\r\n<p> <b>                   \r\nЗаседание секций:\r\n    </b></p>\r\n<ul>\r\n    <li>Закрытые секции: с 10 по 14 апреля 2017 г. </li>\r\n    <li>Открытые секции: с 17 по 19 апреля 2017 г.</li>\r\n    <li>Церемония награждения:21 апреля 2017 года.</li>\r\n</ul>\r\n<h3>\r\nКонтактная информация\r\n</h3>\r\n<p>\r\nМесто проведения: г. Москва, ул. Б. Семеновская, д. 38\r\n</p>\r\n<br>\r\n<h3>Оргкомитет конференции:</h3>\r\n<ul>\r\n    <li>E-mail: snto@mospolytech.ru</li>\r\n    <li>Телефон: +7 (495) 223-05-23, доб. 1155.</li>\r\n</ul>\r\n                </div>\r\n            </div>\r\n            \r\n            <div class="row maps">\r\n                <div class="col-md-12 text-center">\r\n                   <iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d4487.302003909754!2d37.703956078841195!3d55.78193297224445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e2!4m5!1s0x46b53571f8581533%3A0xaa6dc7af49b8ab70!2z0K3Qu9C10LrRgtGA0L7Qt9Cw0LLQvtC00YHQutCw0Y8sINCc0L7RgdC60LLQsCwg0LPQvtGA0L7QtCDQnNC-0YHQutCy0LA!3m2!1d55.782094!2d37.705287!4m5!1s0x46b54ad610abc8a5%3A0xc42703145fe53a8d!2z0JzQvtGB0LrQvtCy0YHQutC40Lkg0L_QvtC70LjRgtC10YXQvdC40YfQtdGB0LrQuNC5INGD0L3QuNCy0LXRgNGB0LjRgtC10YIsINCR0L7Qu9GM0YjQsNGPINCh0LXQvNC10L3QvtCy0YHQutCw0Y8g0YPQuy4sIDM4LCDQnNC-0YHQutCy0LAsIDEwNzAyMw!3m2!1d55.781535!2d37.7112997!5e0!3m2!1sru!2sru!4v1493497300837" width="100%" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </main>\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    <div class="container">\r\n            <div class="row">\r\n                <div class="col-md-12 form">\r\n                        <form method="post" action="">\r\n                            <div class="row">\r\n                                <div class="col-md-11 col-md-offset-1 col-sm-offset-1">\r\n                                    <h4>ПОЛУЧАЙТЕ НОВОСТИ НА ПОЧТУ</h4>\r\n                                </div>\r\n                                <div class="col-md-7 col-sm-7 col-md-offset-1 col-sm-offset-1">\r\n                                    <input type="text" name="mail" placeholder="ВВЕДИТЕ ВАШ E-MAIL">\r\n                                </div>\r\n                                <div class="col-md-3 col-sm-3">\r\n                                    <input type="submit" name="add" value="ПОДПИСАТЬСЯ">\r\n                                </div>\r\n                            </div>\r\n                        </form>\r\n                    </div>\r\n            </div>\r\n    </div>\r\n\r\n    <footer>\r\n            <div class="container footer">\r\n                <div class="row">\r\n                <div class="col-md-9">\r\n                    <h4>Студенческое научно-техническое общество <br><br><br><br> Тел. +7 495 223-05-23 <br>доб. 1155</h4>    \r\n                </div>\r\n                <div class="col-md-3">\r\n                    <ul>\r\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\r\n                    </ul>    \r\n                </div>\r\n                </div>\r\n                <div class="row">\r\n                <div class="col-md-12 text-center">\r\n                    <h4>© Московский политех 2017</h4>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </footer>\r\n   \r\n <script src="js/jquery-3.1.1.js" type="text/javascript"></script>  \r\n <script src="js/slick.js" type="text/javascript"></script>   \r\n <script src="js/jquery.catslider.js" type="text/javascript"></script>     \r\n <script src="js/slider.js" type="text/javascript"></script>   \r\n <script src="js/slick.min.js" type="text/javascript"></script>   \r\n<script src="js/bootstrap.min.js" type="text/javascript"></script>\r\n<script src="js/bootstrap.js" type="text/javascript"></script>\r\n</body>\r\n</html>', 1, 0, 2, 1, 1, 1, 1493829877, 1, 1493830502, 1, 1494183037, 1, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(4, 'document', 'text/html', 'SNYTJK', 'DEEEE', '', 'snytjk', '', 0, 0, 0, 0, 0, '', 'asdfghjklkjhgfdsadfghjkhgfdsaSDFGHJGFDSAsdfghjjgfd\r\nsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\r\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\r\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\r\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 1, 2, 3, 1, 1, 1, 1494017947, 1, 1494019342, 1, 1494160172, 1, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(5, 'document', 'text/html', 'Новости', '', '', 'новости', '', 1, 0, 0, 0, 1, '', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<title>Новости</title>\r\n<meta charset="utf-8">\r\n<meta name="viewport" content="width=device-width, initial-scale=1.0">\r\n<link rel="stylesheet" href="css/style.css">\r\n<link rel="stylesheet" href="css/bootstrap.css">\r\n<link rel="stylesheet" href="css/slick-theme.css">\r\n<link rel="stylesheet" href="css/slick.css">\r\n<link rel="stylesheet" href="css/snt.css">\r\n<link rel="stylesheet" href="css/font-awesome.min.css">\r\n<meta name="keywords" content="">\r\n<meta name="description" content="">\r\n</head>\r\n<body>\r\n    <!----ХЭДЕР ПОДГРУЖАЕТСЯ ЧАНКОМ "Header"------>\r\n            [[$Header]]\r\n        <main>\r\n            <div class="container">\r\n                <div class="col-md-12 store_zagolovok">\r\n                    <h1>Новости</h1>\r\n<hr>\r\n                </div>\r\n                \r\n                <div class="row project">\r\n                \r\n                    <div class="col-md-8 col-sm-8 col-xs-12">\r\n[[!getPage?                             \r\n&elementClass=`modSnippet`\r\n&element=`getResources`\r\n&parents=`[[*id]]`\r\n&tpl=`NewsAll`\r\n&limit=`5`&includeTVs=`1`\r\n&hideContainers=`1`\r\n&pageLimit=`20`\r\n&pageNavVar=`page.nav`]]\r\nСтраница [[+page]] из [[+pageCount]]<ul class="pageList">[[+page.nav]]</ul>\r\n                    \r\n                  </div>\r\n                  \r\n                  <div class="col-md-3 col-sm-3 col-xs-12">\r\n                        <h3>Случайные новости</h3>\r\n[[!getPage?\r\n&element=`getResources`\r\n&parents=`3,4` \r\n&tpl=`articleTpl` \r\n&limit=`3`\r\n&includeTVs=`1`]]                        \r\n                        <div class="row">\r\n[[!getPage?\r\n&element=`getResources`\r\n&parents=`5` \r\n&tpl=`RandomArticles` \r\n&limit=`4`\r\n&sortby=`RAND()`\r\n&includeTVs=`1`]]\r\n                        </div>\r\n                    </div>\r\n               </div>\r\n             </div>\r\n         </main>\r\n    <footer>\r\n            <div class="container footer">\r\n                <div class="row">\r\n                <div class="col-md-9">\r\n                    <h4>Студенческое научно-техническое общество <br><br><br><br> Тел. +7 495 223-05-23 <br>доб. 1155</h4>    \r\n                </div>\r\n                <div class="col-md-3">\r\n                    <ul>\r\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\r\n                    </ul>    \r\n                </div>\r\n                </div>\r\n                <div class="row">\r\n                <div class="col-md-12 text-center">\r\n                    <h4>© Московский политех 2017</h4>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </footer>\r\n   \r\n <script src="js/jquery-3.1.1.js" type="text/javascript"></script>  \r\n <script src="js/slick.js" type="text/javascript"></script>   \r\n <script src="js/jquery.catslider.js" type="text/javascript"></script>     \r\n <script src="js/slider.js" type="text/javascript"></script>   \r\n <script src="js/slick.min.js" type="text/javascript"></script>   \r\n<script src="js/bootstrap.min.js" type="text/javascript"></script>\r\n<script src="js/bootstrap.js" type="text/javascript"></script>\r\n</body>\r\n</html>\r\n', 1, 0, 4, 1, 1, 1, 1494162055, 1, 1494285070, 0, 0, 0, 1494164640, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(6, 'document', 'text/html', 'Летняя стажировка в Министерстве промышленности и торговли Российской Федерации', '', '', 'новость-1', '', 1, 0, 0, 5, 0, 'Министерство промышленности и торговли Российской Федерации проводит набор студентов для участия в Летней стажерской программе, которая пройдет с 1 июля по 31 августа 2017 года.\r\n<br>\r\nСрок подачи заявок: до 26 мая 2017 года.', 'Министерство промышленности и торговли Российской Федерации проводит набор студентов для участия в Летней стажерской программе, которая пройдет с 1 июля по 31 августа 2017 года.\r\n<br><br>\r\nСрок подачи заявок: до 26 мая 2017 года.\r\n<br><br>\r\nПо итогам стажировки лучшие студенты получат рекомендательные письма, предложение о зачислении в Молодежный кадровый резерв, а также могут быть рассмотрены на замещение вакантных должностей государственной гражданской службы Минпромторга России.\r\n<br><br>\r\nЗаявки могут подавать граждане России от 18 до 25 лет.\r\n<br><br>\r\nПодробную информацию об этапах отбора можно узнать на официальном сайте Министерства.\r\n<br><br>\r\nУважаемые студенты! Если Вы решили участвовать в мероприятии, сообщите, пожалуйста, об этом в СНТО, отправив e-mail по адресу:. Достаточно написать название мероприятия, ФИО, группу, контактный телефон.\r\n', 1, 4, 0, 1, 1, 1, 1494162195, 1, 1494277032, 0, 0, 0, 1494168600, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(7, 'document', 'text/html', 'Национальная премия им. А. А. Ежевского для учащихся высших учебных заведений', '', '', 'новость-2', '', 1, 0, 0, 5, 0, 'Российская ассоциация производителей специализированной техники и оборудования «Росспецмаш» учредила ежегодную Национальную премию имени Александра Александровича Ежевского для учащихся высших учебных заведений.\r\n<br>\r\nСрок подачи документов на конкурс: с 1 сентября по 1 октября 2017 года.', 'Российская ассоциация производителей специализированной техники и оборудования «Росспецмаш» учредила ежегодную Национальную премию имени Александра Александровича Ежевского для учащихся высших учебных заведений.\r\n<br><br>\r\nСрок подачи документов на конкурс: с 1 сентября по 1 октября 2017 года.\r\n<br><br>\r\nПремия будет присуждаться студентам 2-4 курсов очной формы обучения, представляющим факультеты, которые связаны с конструированием машин для сельского хозяйства. Главными критериями для оценки кандидатов будут являться высокие результаты в учебе и научных исследованиях, активное участие в жизни вуза.\r\n<br><br>\r\nПланируется ежегодно награждать до 30 лауреатов, размер премии составит не менее 20 тысяч рублей. Церемония награждения будет проходить каждый год 3 ноября – в день рождения Александра Александровича Ежевского.\r\n<br><br>\r\n«Главной целью учреждения национальной премии является развитие научного потенциала в области отечественного сельхозмашиностроения. Важно поддержать талантливых студентов, содействовать их профессиональному росту, а также выстроить более тесное взаимодействие между высшими учебными заведениями и заводами – производителями сельхозтехники. Пример легенды советского и российского машиностроения, выдающегося государственного деятеля, профессионала и человека Александра Александровича Ежевского должен стать ориентиром для тех ребят, которые хотят и могут внести свой вклад в развитие отрасли», - отметила директор Ассоциации «Росспецмаш» Алла Елизарова.\r\n<br><br>\r\nБолее подробная информация о премии представлена на сайте.\r\n<br><br>\r\nУважаемые студенты! Если Вы решили участвовать в конкурсе, сообщите, пожалуйста, об этом в СНТО, отправив e-mail по адресу:. Достаточно написать название мероприятия, ФИО, группу, контактный телефон.', 1, 4, 1, 1, 1, 1, 1494162211, 1, 1494277062, 0, 0, 0, 1494168720, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(8, 'document', 'text/html', 'Международный автомобильный научный форум (МАНФ-2017)', '', '', 'новость-3', '', 1, 0, 0, 5, 0, 'Приглашаем студентов Московского Политеха принять участие в международном автомобильном научном форуме (МАНФ-2017) на тему «Интеллектуальные транспортные системы», который состоится 18-19 октября 2017 года в ГНЦ РФ ФГУП «НАМИ».\r\n<br>\r\nРегистрация на форум открыта с 19 апреля 2017 года.', 'Приглашаем студентов Московского Политеха принять участие в международном автомобильном научном форуме (МАНФ-2017) на тему «Интеллектуальные транспортные системы», который состоится 18-19 октября 2017 года в ГНЦ РФ ФГУП «НАМИ».\r\n\r\nРегистрация на форум открыта с 19 апреля 2017 года.\r\n\r\nОсновные научно-технические направления, предлагаемые к обсуждению на МАНФ-2017:\r\n\r\nтенденции развития автономного (беспилотного) транспорта;\r\nсистемы помощи водителю (ADAS) нового поколения;\r\nсистемы коммуникации автомобилей, инфраструктуры и человека;\r\nтехническое зрение и навигационные системы автономных автомобилей;\r\nсистемы моделирования дорожной обстановки и движения автомобиля;\r\nиспытания и сертификация автономных автомобилей;\r\nразвитие нормативно-правовой базы автономного движения;\r\nкибербезопасность систем автономного движения;\r\nсоциально-экономические проблемы внедрения автономных автомобилей.\r\nТруды МАНФ-2017 будут опубликованы организатором мероприятия – государственным научным центром Российской Федерации ФГУП «НАМИ» в периодическом издании «Труды МАНФ». Кроме того, избранные доклады форума будут опубликованы в журналах: «Труды НАМИ», «Автомобильная промышленность», «Журнал Автомобильных Инженеров» (журнал ААИ).\r\n\r\nПодробная информация о мероприятии и регистрация доступны на сайте.\r\n\r\nУважаемые студенты! Если Вы решили участвовать в мероприятии, сообщите, пожалуйста, об этом в СНТО, отправив e-mail по адресу:. Достаточно написать название мероприятия, ФИО, группу, контактный телефон.', 1, 4, 2, 1, 1, 1, 1494162229, 1, 1494275609, 0, 0, 0, 1494168720, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(9, 'document', 'text/html', 'Открытая лекция «Беспилотные автомобили и моделирование человеческого мозга»', '', '', 'открытая-лекция-«беспилотные-автомобили-и-моделирование-человеческого-мозга»', '', 1, 0, 0, 5, 0, 'Приглашаем студентов Московского Политеха на лекцию «Беспилотные автомобили и моделирование человеческого мозга», где выступит известный российский предприниматель, президент компании «Cognitive Technologies» Ольга Ускова.', 'Открытая лекция «Беспилотные автомобили и моделирование человеческого мозга»\r\n\r\n\r\n\r\nПриглашаем студентов Московского Политеха на лекцию «Беспилотные автомобили и моделирование человеческого мозга», где выступит известный российский предприниматель, президент компании «Cognitive Technologies» Ольга Ускова.\r\n\r\nОльга Ускова — известный российский предприниматель, президент компании Cognitive Technologies, заведующая кафедрой инженерной кибернетики НИТУ МИСиС. Является одним из создателей отрасли ИТ в России, инициатором развития отрасли беспилотных транспортных средств. Руководитель первого отечественного проекта по созданию беспилотного автомобиля на базе КАМАЗ, проекта по созданию умной сельхозтехники и проекта Cognitive Technologies по созданию автономного автомобиля к 2022 году.\r\n\r\nТематика мероприятия:\r\n\r\nКак 4-я промышленная революция изменит окружающий мир?\r\nРоль России в развитии 4-й промышленной революции\r\nО будущем российской и мировой отрасли беспилотных автомобилей\r\nО перспективах развития и практического применения искусственного интеллекта\r\nРегистрация на мероприятие открыта на сайте\r\n\r\nУважаемые студенты! Если Вы решили участвовать в мероприятии, сообщите, пожалуйста, об этом в СНТО, отправив e-mail по адресу:. Достаточно написать название мероприятия, ФИО, группу, контактный телефон.', 1, 4, 3, 1, 1, 1, 1494162247, 1, 1494275625, 0, 0, 0, 1494168720, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL);
INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(10, 'document', 'text/html', 'О конференции', '', '', 'о-конференции', '', 1, 0, 0, 2, 0, '', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<title>СНТК</title>\r\n<meta charset="utf-8">\r\n<meta name="viewport" content="width=device-width, initial-scale=1.0">\r\n<link rel="stylesheet" href="css/style.css">\r\n<link rel="stylesheet" href="css/bootstrap.css">\r\n<link rel="stylesheet" href="css/slick-theme.css">\r\n<link rel="stylesheet" href="css/slick.css">\r\n<link rel="stylesheet" href="css/snt.css">\r\n<link rel="stylesheet" href="css/font-awesome.min.css">\r\n<meta name="keywords" content="">\r\n<meta name="description" content="">\r\n</head>\r\n<body>\r\n    <header>\r\n        <div class="container">\r\n            <div class="row social_button">\r\n                <div class="col-md-12 col-sm-12">\r\n                    <ul>\r\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\r\n                        <li class="social_button_person"><a href=""><i class="fa fa-user-circle" aria-hidden="true"></i>\r\n</a></li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n          <nav class="navbar navbar-default menu_top">\r\n      <!-- Бренд и переключатель, который вызывает меню на мобильных устройствах -->\r\n                  <div class="navbar-header">\r\n                    <!-- Кнопка с полосочками, которая открывает меню на мобильных устройствах -->\r\n                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu" aria-expanded="false">\r\n                      <span class="sr-only">Toggle navigation</span>\r\n                      <span class="icon-bar"></span>\r\n                      <span class="icon-bar"></span>\r\n                      <span class="icon-bar"></span>\r\n                    </button>\r\n                    <!-- Бренд или логотип фирмы (обычно содержит ссылку на главную страницу) -->\r\n                    <a href="index.php" class="navbar-brand"><img src="img/logo.png"></a>\r\n                  </div>\r\n                  <!-- Содержимое меню (коллекция навигационных ссылок, формы и др.) -->\r\n                  <div class="collapse navbar-collapse" id="main-menu" >\r\n                      <!-- Список ссылок, расположенных слева -->\r\n                    <ul class="nav navbar-nav navbar-right">\r\n                      <!--Элемент с классом active отображает ссылку подсвеченной -->\r\n                      <li><a href="snto.html">ОБ СНТО</a></li>\r\n                    <li><a href="index.php?id=2">СНТК</a></li>\r\n                      <li><a href="sntk_2017.html">МЕРОПРИЯТИЯ</a></li>\r\n                      <li><a href="store_project.html">ПРОЕКТЫ</a></li>\r\n                    </ul>\r\n                  </div>\r\n            </nav>\r\n        </div>\r\n    </header>\r\n        <section class="sntk">\r\n            <div class="col-md-8 col-sm-8 col-md-offset-2  col-sm-offset-2 text-center name_banner">\r\n                <h1>СНТК</h1>\r\n            </div>\r\n            <div class="col-md-12 text-center opis_banner">\r\n                <p>студенческая научно-техническая конференция</p>\r\n            </div>\r\n    </section>\r\n    <main>\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-md-3 col-sm-3 col-xs-12 navigate_left">\r\n                    <ul>\r\n                         [[!getPage?\r\n                                &element=`getResources`\r\n                                &parents=`2` \r\n                                &tpl=`sntkTpl` \r\n                                &limit=`10`\r\n                                &includeTVs=`1`]]\r\n                    </ul>\r\n                </div>\r\n                <div class="col-md-9 col-sm-9 col-xs-12 text_navigate">\r\n                    <p>Открытая студенческая научно-техническая конференция ежегодно проводится Московским Политехом с 1950 года. Конференция призвана способствовать развитию студенческого научно-технического творчества и обмену опытом по перспективным направлениям автомобилестроения, а также по другим направлениям фундаментальных и прикладных наук. \r\n                    <br><br>\r\n\r\nОсновная цель конференции – привлечение студентов российских высших учебных заведений к научно-исследовательской работе и решению актуальных научных задач машиностроения.\r\n<br><br>\r\nУчастниками конференции традиционно являются студенты московских и региональных высших учебных заведений Российской Федерации.</p>\r\n                </div>\r\n            </div>\r\n            \r\n            [[$partners]]\r\n    </main>\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    <div class="container">\r\n            <div class="row">\r\n                <div class="col-md-12 form">\r\n                        <form method="post" action="">\r\n                            <div class="row">\r\n                                <div class="col-md-11 col-md-offset-1 col-sm-offset-1">\r\n                                    <h4>ПОЛУЧАЙТЕ НОВОСТИ НА ПОЧТУ</h4>\r\n                                </div>\r\n                                <div class="col-md-7 col-sm-7 col-md-offset-1 col-sm-offset-1">\r\n                                    <input type="text" name="mail" placeholder="ВВЕДИТЕ ВАШ E-MAIL">\r\n                                </div>\r\n                                <div class="col-md-3 col-sm-3">\r\n                                    <input type="submit" name="add" value="ПОДПИСАТЬСЯ">\r\n                                </div>\r\n                            </div>\r\n                        </form>\r\n                    </div>\r\n            </div>\r\n    </div>\r\n\r\n    <footer>\r\n            <div class="container footer">\r\n                <div class="row">\r\n                <div class="col-md-9">\r\n                    <h4>Студенческое научно-техническое общество <br><br><br><br> Тел. +7 495 223-05-23 <br>доб. 1155</h4>    \r\n                </div>\r\n                <div class="col-md-3">\r\n                    <ul>\r\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\r\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\r\n                    </ul>    \r\n                </div>\r\n                </div>\r\n                <div class="row">\r\n                <div class="col-md-12 text-center">\r\n                    <h4>© Московский политех 2017</h4>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </footer>\r\n   \r\n <script src="js/jquery-3.1.1.js" type="text/javascript"></script>  \r\n <script src="js/slick.js" type="text/javascript"></script>   \r\n <script src="js/jquery.catslider.js" type="text/javascript"></script>     \r\n <script src="js/slider.js" type="text/javascript"></script>   \r\n <script src="js/slick.min.js" type="text/javascript"></script>   \r\n<script src="js/bootstrap.min.js" type="text/javascript"></script>\r\n<script src="js/bootstrap.js" type="text/javascript"></script>\r\n</body>\r\n</html>', 1, 0, 0, 1, 1, 1, 1494183057, 1, 1494970443, 0, 0, 0, 1494183420, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(21, 'document', 'text/html', 'Формула Мами', '', '', 'формула-студент', '', 0, 0, 0, 16, 0, 'Сегодня в Университете машиностроения существует сеть лабораторий, в которых студенты занимаются интересной научно-исследовательской деятельностью. Здесь молодые исследователи изучают и самостоятельно проходят все этапы машиностроительного производства: от моделирования конструкций до создания реальных автомобилей и аппаратов. Для студентов это не только отличный способ применить свои умения на практике, но и возможность встретиться с действительно увлеченными своим делом людьми.\r\nЧисло разнонаправленных проектов в университете увеличивается с каждым годом.', 'Сегодня в Университете машиностроения существует сеть лабораторий, в которых студенты занимаются интересной научно-исследовательской деятельностью. Здесь молодые исследователи изучают и самостоятельно проходят все этапы машиностроительного производства: от моделирования конструкций до создания реальных автомобилей и аппаратов. Для студентов это не только отличный способ применить свои умения на практике, но и возможность встретиться с действительно увлеченными своим делом людьми.\r\nЧисло разнонаправленных проектов в университете увеличивается с каждым годом.<br><br>', 1, 5, 0, 1, 1, 1, 1495921065, 1, 1495921119, 1, 1495966602, 1, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(11, 'document', 'text/html', 'СНТК 2017', '', '', 'снтк-2017', '', 1, 0, 0, 2, 0, '', '\r\n                <div class="col-md-9 col-sm-9 col-xs-12 text_navigate">\r\n                    <h3><b>Уважаемые студенты!</b></h3>\r\n\r\n<p>Открытая международная студенческая научно-техническая конференция «СНТК Московского Политеха – 2017» состоится в Московском Политехе с 10 по 21 апреля 2017 года.\r\n<br><br>\r\nК участию в конференции приглашаются студенты Московского Политеха и других вузов. Авторы лучших работ будут награждены дипломами и призами. Иногородним студентам предоставляется право бесплатного проживания в гостевом номере общежития на время проведения конференции.\r\n<br><br>\r\nЗакрытые секции организованы только для студентов Московского Политеха. Победитель закрытой секции становится участником открытой секции.\r\n<br><br>\r\n    <strong>Открытые секции</strong> — это секции по приоритетным направлениям деятельности Московского Политеха. В них могут участвовать студенты из других вузов, а также студенты Московского Политеха, ставшие победителями закрытых секций.\r\n<br><br>\r\n                    </p>\r\n                    <h3>Важные даты:</h3>\r\n<p>\r\n<b> \r\nРегистрация участников:\r\n</b>\r\n</p>\r\n<ul>                    \r\n    <li>для студентов Московского Политеха: до 1 апреля 2017 г.</li>\r\n    <li>для студентов других вузов: до 15 марта 2017 г.</li>\r\n</ul>\r\n<p> <b>                   \r\nЗаседание секций:\r\n    </b></p>\r\n<ul>\r\n    <li>Закрытые секции: с 10 по 14 апреля 2017 г. </li>\r\n    <li>Открытые секции: с 17 по 19 апреля 2017 г.</li>\r\n    <li>Церемония награждения:21 апреля 2017 года.</li>\r\n</ul>\r\n<h3>\r\nКонтактная информация\r\n</h3>\r\n<p>\r\nМесто проведения: г. Москва, ул. Б. Семеновская, д. 38\r\n</p>\r\n<br>\r\n<h3>Оргкомитет конференции:</h3>\r\n<ul>\r\n    <li>E-mail: snto@mospolytech.ru</li>\r\n    <li>Телефон: +7 (495) 223-05-23, доб. 1155.</li>\r\n</ul>\r\n                </div>\r\n            </div>\r\n            \r\n            <div class="row maps">\r\n                <div class="col-md-12 text-center">\r\n                   <iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d4487.302003909754!2d37.703956078841195!3d55.78193297224445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e2!4m5!1s0x46b53571f8581533%3A0xaa6dc7af49b8ab70!2z0K3Qu9C10LrRgtGA0L7Qt9Cw0LLQvtC00YHQutCw0Y8sINCc0L7RgdC60LLQsCwg0LPQvtGA0L7QtCDQnNC-0YHQutCy0LA!3m2!1d55.782094!2d37.705287!4m5!1s0x46b54ad610abc8a5%3A0xc42703145fe53a8d!2z0JzQvtGB0LrQvtCy0YHQutC40Lkg0L_QvtC70LjRgtC10YXQvdC40YfQtdGB0LrQuNC5INGD0L3QuNCy0LXRgNGB0LjRgtC10YIsINCR0L7Qu9GM0YjQsNGPINCh0LXQvNC10L3QvtCy0YHQutCw0Y8g0YPQuy4sIDM4LCDQnNC-0YHQutCy0LAsIDEwNzAyMw!3m2!1d55.781535!2d37.7112997!5e0!3m2!1sru!2sru!4v1493497300837" width="100%" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>\r\n                </div>\r\n            </div>\r\n', 1, 3, 1, 1, 1, 1, 1494183742, 1, 1494185090, 0, 0, 0, 1494183720, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(12, 'document', 'text/html', 'СНТК 2016', '', '', 'снтк-2016', '', 1, 0, 0, 2, 0, '', '', 1, 3, 2, 1, 1, 1, 1494184147, 1, 1494184185, 0, 0, 0, 1494184185, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(13, 'document', 'text/html', 'СНТК 2015', '', '', 'снтк-2015', '', 1, 0, 0, 2, 0, '', '', 1, 3, 3, 1, 1, 1, 1494184162, 1, 1495571930, 0, 0, 0, 1495571930, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(19, 'document', 'text/html', 'Формула Студент', '', '', 'формула-студент', '', 1, 0, 0, 16, 0, 'Сегодня в Университете машиностроения существует сеть лабораторий, в которых студенты занимаются интересной научно-исследовательской деятельностью. Здесь молодые исследователи изучают и самостоятельно проходят все этапы машиностроительного производства: от моделирования конструкций до создания реальных автомобилей и аппаратов. Для студентов это не только отличный способ применить свои умения на практике, но и возможность встретиться с действительно увлеченными своим делом людьми.\r\nЧисло разнонаправленных проектов в университете увеличивается с каждым годом.', 'Сегодня в Университете машиностроения существует сеть лабораторий, в которых студенты занимаются интересной научно-исследовательской деятельностью. Здесь молодые исследователи изучают и самостоятельно проходят все этапы машиностроительного производства: от моделирования конструкций до создания реальных автомобилей и аппаратов. Для студентов это не только отличный способ применить свои умения на практике, но и возможность встретиться с действительно увлеченными своим делом людьми.\r\nЧисло разнонаправленных проектов в университете увеличивается с каждым годом.<br><br>', 1, 5, 0, 1, 1, 1, 1495141990, 1, 1495920961, 0, 0, 0, 1495142580, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(17, 'document', 'text/html', 'III Всероссийский научный форум «Наука будущего – наука молодых»', '', '', 'iii-всероссийский-научный-форум-«наука-будущего-–-наука-молодых»', '', 1, 0, 0, 5, 0, 'III Всероссийский научный форум «Наука будущего – наука молодых» в 2017 году будет проводиться с 12 по 15 сентября на базе Нижегородского государственного университета им. Н.И. Лобачевского (ННГУ) при поддержке Министерства образования и науки Российской Федерации. Приглашаем студентов Московского Политеха принять участие в мероприятии.', 'III Всероссийский научный форум «Наука будущего – наука молодых» в 2017 году будет проводиться с 12 по 15 сентября на базе Нижегородского государственного университета им. Н.И. Лобачевского (ННГУ) при поддержке Министерства образования и науки Российской Федерации. Приглашаем студентов Московского Политеха принять участие в мероприятии.\r\n\r\nВо время Форума планируется проведение пленарных заседаний, стендовые доклады, презентация и защита конкурсных работ студентов и аспирантов, финалистов заочного этапа Всероссийского конкурса научно-исследовательских работ, чтение ведущими учеными научно-популярных лекций, а также насыщенная культурная программа. Впервые в конкурсе научно-исследовательских работ примут участие аспиранты не только первого года обучения. На Форуме пройдет два финала конкурса научно-исследовательских работ: один – для студентов российских вузов, второй – для аспирантов.\r\n\r\nРабота на Форуме будет проходить по двенадцати тематическим секциям:\r\n<ul>\r\n<li>Агро-, био- и продовольственные технологии</li>\r\n<li>Гуманитарные науки</li>\r\n<li>Информационные технологии и вычислительные системы</li>\r\n<li>Математика и механика</li>\r\n<li>Машиностроение и энергетика</li>\r\n<li>Науки о жизни и медицина</li>\r\n<li>Науки о Земле, экология и рациональное природопользование</li>\r\n<li>Новые материалы и способы конструирования</li>\r\n<li>Социальные науки</li>\r\n<li>Физика и астрономия</li>\r\n<li>Химия и химические технологии</li>\r\n<li>Цифровые, интеллектуальные и производственные технологии</li>\r\n</ul>\r\nТрадиционно в мероприятии примут участие представители Администрации Президента и Правительства Российской Федерации, Министерства образования и науки Российской Федерации, представители, руководители вузов и научных организаций, выдающиеся российские и зарубежные ученые. Работу форума будут освещать ведущие федеральные и региональные СМИ.', 1, 4, 4, 1, 1, 1, 1494278079, 1, 1494278133, 1, 1494280030, 1, 1494278133, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(18, 'document', 'text/html', 'Всероссийский семинар для организаторов школ и лагерей студенческого актива «Организатор»', '', '', 'всероссийский-семинар-для-организаторов-школ-и-лагерей-студенческого-актива-«организатор»', '', 1, 0, 0, 5, 0, 'Департамент государственной политики в сфере воспитания детей и молодежи Минобрнауки России информирует о проведении с 3 по 6 мая 2017 г. в Ростовской области в рамках программы «Студенческое самоуправление» Всероссийского семинара для организаторов школ и лагерей студенческого актива «Организатор».', '<p>Департамент государственной политики в сфере воспитания детей и молодежи Минобрнауки России информирует о проведении с 3 по 6 мая 2017 г. в Ростовской области в рамках программы «Студенческое самоуправление» Всероссийского семинара для организаторов школ и лагерей студенческого актива «Организатор».\r\n</p><p>\r\nОрганизаторами Семинара выступают общероссийская общественная организация «Российский Союз Молодежи», Общероссийское общественное молодежное движение «Ассоциация студентов и студенческих объединений России», Российский студенческий центр, ФГБОУ ВО «Ростовский государственный экономический университет», Ростовская областная молодежная общественная организация «Донской союз молодежи».\r\n</p><p>\r\nВсероссийский семинар для организаторов лагерей и школ студенческого актива «Организатор» (далее - Организатор) проводится в рамках программы «Студенческие самоуправление» с 2007 года.\r\n</p><p>\r\nЦель работы семинара «Организатор» — создание площадки для обучения и обмена опытом среди организаторов студенческих лагерей.\r\n</p><p>\r\nПрограмма семинара включает в себя:\r\n</p><p>\r\nобмен опытом участников мероприятия,разработка общественного стандарта проведения школ и лагерей студенческого актива;<br>\r\nобучающие занятия по основным вопросам организации студенческих и молодежных лагерей и школ актива: подготовка методической и технической базы, программное обеспечение проекта, работа с организационным комитетом, конструирование мероприятий;<br>\r\nвстречи с экспертами в области организации образовательных мероприятий;\r\nавторские мероприятия участников семинара;<br>\r\nочный этап Всероссийского конкурса моделей школ и лагерей подготовки студенческого актива.<br>\r\nДополнительную информацию можно получить по телефонам: +7 (863) 270-99-15, +7 (989) 509-04-34 и по адресу электронной почты Iider21vek@mail.ru.\r\n</p><p>\r\nУважаемые студенты! Если Вы решили участвовать в мероприятии, сообщите, пожалуйста, об этом в СНТО, отправив e-mail по адресу:. Достаточно написать название мероприятия, ФИО, группу, контактный телефон.\r\n</p>', 1, 4, 5, 1, 1, 1, 1494278309, 1, 1494279034, 1, 1494280037, 1, 1494278280, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(22, 'document', 'text/html', 'Скб-студент', '', '', 'скб-мами', '', 1, 0, 0, 16, 0, 'СКБ-МАМИ (с сентября 2016 года переименовано в НТЦ «Промышленный дизайн») является студией промышленного дизайна и предприятием разработчиком, оказывающим услуги и работающим в сфере промышленного и транспортного дизайна.\r\nМы предоставляем услуги промышленного дизайна c 1987 года и, благодаря богатому опыту разработок, способны решать нестандартные задачи оперативно и мобильно с индивидуальным подходом к каждому проекту.', 'СКБ-МАМИ (с сентября 2016 года переименовано в НТЦ «Промышленный дизайн») является студией промышленного дизайна и предприятием разработчиком, оказывающим услуги и работающим в сфере промышленного и транспортного дизайна.\r\nМы предоставляем услуги промышленного дизайна c 1987 года и, благодаря богатому опыту разработок, способны решать нестандартные задачи оперативно и мобильно с индивидуальным подходом к каждому проекту.', 1, 5, 1, 1, 1, 1, 1495921082, 0, 0, 1, 1495966608, 1, 1495567320, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'articleTpl', 'чанк для вывода новостей недели', 0, 0, 0, '<a href="[[~[[+id]]]]">\n<div class="col-md-12 news-right-mini">\n  <div class="row">\n     <div class="col-md-6 col-sm-6 col-xs-6">\n        <img alt="" src="[[+tv.image:phpthumbof=`w=100`]]">\n     </div>\n     <div class="col-md-6 col-sm-6 col-xs-6">\n         <p><a href="[[~[[+id]]]]">[[+pagetitle]]</a></p>\n     </div>\n  </div>\n</div>\n</a>', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'sntkTpl', '', 0, 0, 0, '<li><a href="[[~[[+id]]]]">[[+pagetitle]]</a></li>', 0, 'a:0:{}', 0, ''),
(4, 1, 0, 'partners', 'Партнеры ', 0, 0, 0, ' <div class="row partneri">\n                <div class="col-md-12 text-center">\n                    <h2>Партнеры</h2>\n                </div>\n                <div class="col-md-12">\n                    <!-- слайдер -->\n                   <div class="row slider">\n                       <section class="center slider">\n\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/01_SchulerGroup_Logo.jpg"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/gk_logo_h_rus.png"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/holmash.jpg"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_bazalt-proj.png"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_cummins.png"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_dd.png"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_Eksmo.png"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/Logo_EuroChemRUS.jpg"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_fgup_nami.png"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_Kia_Motors.png"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_kodeks.png"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_prosvesh.png"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo-lift.png"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo-rossiyskaya-gazeta.png"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/prepreg_logo.png"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/santekh.jpeg"></a>\n</div>\n<div>\n    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/sapfir_small.png"></a>\n</div>\n\n</section>\n</div>\n</div>', 0, 'a:0:{}', 0, ''),
(5, 1, 0, 'firstArticle', 'Первая статья для главной СНТО', 0, 0, 0, '<div class="col-md-9 col-sm-9 col-md-12">\n                    <h2 class="col-md-9 col-sm-9 hidden-xs col-xs-9">[[+pagetitle]]</h2>\n                    <div class="row">\n                        <!--div class="col-md-9 col-sm-12 col-xs-9  main_photo"-->\n                        <div class="col-md-8 col-sm-12 col-xs-9 main_photo"> \n                            <img alt="" src="[[+tv.image:phpthumbof]]">\n                        </div>\n                        <div class="col-md-3 col-sm-12 col-xs-12 main_opis">\n                            <p>[[+introtext]]</p>\n                            <a href="[[~[[+id]]]]">ПОДРОБНЕЕ</a>\n                        </div>\n                    </div>\n                </div>', 0, 'a:0:{}', 0, ''),
(6, 1, 0, 'rndNews', 'случайный вывод новости для Главной', 0, 0, 0, '<div class="col-md-8 col-sm-8 col-md-offset-1 news_block_two_right">\n                     <img class="text-right" src="[[+tv.image:phpthumbof]]">\n                    <h3>[[+pagetitle]]</h3>\n                    <p>[[+introtext]]</p>\n                    <a href="[[~[[+id]]]]">ПОДРОБНЕЕ</a>\n</div>', 0, 'a:0:{}', 0, ''),
(7, 1, 0, 'Header', 'Хедер', 0, 0, 0, '<header>\n        <div class="container">\n            <div class="row social_button">\n                <div class="col-md-12 col-sm-12">\n                    <ul>\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\n                        <li class="social_button_person"><a href="/modx/www/manager"><i class="fa fa-user-circle" aria-hidden="true"></i>\n</a></li>\n                    </ul>\n                </div>\n            </div> \n<nav class="navbar navbar-default menu_top">\n      <!-- Бренд и переключатель, который вызывает меню на мобильных устройствах -->\n                  <div class="navbar-header">\n                    <!-- Кнопка с полосочками, которая открывает меню на мобильных устройствах -->\n                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu" aria-expanded="false">\n                      <span class="sr-only">Toggle navigation</span>\n                      <span class="icon-bar"></span>\n                      <span class="icon-bar"></span>\n                      <span class="icon-bar"></span>\n                    </button>\n                    <!-- Бренд или логотип фирмы (обычно содержит ссылку на главную страницу) -->\n                    <a href="index.php" class="navbar-brand"><img src="img/logo.png"></a>\n                  </div>\n                  <!-- Содержимое меню (коллекция навигационных ссылок, формы и др.) -->\n                  <div class="collapse navbar-collapse" id="main-menu" >\n                      <!-- Список ссылок, расположенных слева -->\n                    <ul class="nav navbar-nav navbar-right">\n                      <!--Элемент с классом active отображает ссылку подсвеченной -->\n                      <li><a href="index.php?id=14">ОБ СНТО</a></li>\n                    <li><a href="index.php?id=2">СНТК</a></li>\n                      <li><a href="index.php?id=5">НОВОСТИ</a></li>\n                      <li><a href="index.php?id=16">ПРОЕКТЫ</a></li>\n                    </ul>\n                  </div>\n            </nav>\n    </div>\n    </header>', 0, 'a:0:{}', 0, ''),
(8, 1, 0, 'NewsAll', 'вывод всех новостей для страницы Новости', 0, 0, 0, '<div class="row">\n                    <div class="col-md-3 col-sm-3 col-xs-12 pro_block">\n                        <img src="[[+tv.image:phpthumbof=`w=100`]]">\n                    </div>\n                    <div class="col-md-8 col-sm-8 col-xs-12 pro_block task_project ">\n                        <h2>[[+pagetitle]]</h2>\n                        <p>[[+introtext]]</p>\n                         <a href="[[~[[+id]]]]">ПОДРОБНЕЕ</a>\n                        </div>\n                    </div>', 0, 'a:0:{}', 0, ''),
(9, 1, 0, 'RandomArticles', 'Вывод 4 случайных статей для страницы Новости (Правая колонка)', 0, 0, 0, '<a href="[[~[[+id]]]]">\n<div class="col-md-12 news-right-mini">\n                            <div class="row">\n                                <div class="col-md-6 col-sm-6 col-xs-6">\n                                    <img src="[[+tv.image:phpthumbof=`w=100`]]">\n                                </div>\n                                <div class="col-md-6 col-sm-6 col-xs-6">\n                                    <p>[[+pagetitle]]</p>\n                                </div>\n                            </div>\n                        </div>\n</a>', 0, 'a:0:{}', 0, ''),
(10, 1, 0, 'projectBank', 'шаблон для превью банка проектов', 0, 0, 0, '<div class="row project">\n                    <div class="col-md-6 col-sm-6 col-xs-12 pro_block">\n                        <img src="[[+tv.image:phpthumbof`]]">\n                        <div class="opis_project">\n                            <h3>[[+pagetitle]]</h3>\n                        </div>\n                    </div>\n                    <div class="col-md-6 col-sm-6 col-xs-12 pro_block task_project ">\n                        <p><span>Цель проекта:</span>[[+introtext]]</p>\n                         <a href="[[~[[+id]]]]">ПОДРОБНЕЕ</a>\n                        </div>\n</div>', 0, 'a:0:{}', 0, ''),
(11, 1, 0, 'ProjectMainPage', 'Чанк  проектов для главной страницы', 0, 0, 0, '<a href="[[~[[+id]]]]">\n<div class="col-md-6 col-sm-6 col-xs-6">\n                    <img src="[[+tv.image:phpthumbof=`w=100`]]">\n                    <div class="news_three" style="width:100%">\n                        <h3>[[+pagetitle]]</h3>\n                    </div>\n                </div>\n</a>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'phpThumbOfCacheManager', 'Handles cache cleaning when clearing the Site Cache.', 0, 0, 0, '/**\n * phpThumbOf\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * phpThumbOf is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * phpThumbOf is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * phpThumbOf; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package phpthumbof\n */\n/**\n * Handles cache management for phpthumbof filter\n *\n * @var \\modX $modx\n * @var array $scriptProperties\n *\n * @package phpthumbof\n */\nif (empty($results)) $results = array();\n\nswitch ($modx->event->name) {\n    case ''OnSiteRefresh'':\n        if (!$modx->loadClass(''modPhpThumb'',$modx->getOption(''core_path'').''model/phpthumb/'',true,true)) {\n            $modx->log(modX::LOG_LEVEL_ERROR,''[phpThumbOf] Could not load modPhpThumb class in plugin.'');\n            return;\n        }\n        $assetsPath = $modx->getOption(''phpthumbof.assets_path'',$scriptProperties,$modx->getOption(''assets_path'').''components/phpthumbof/'');\n        $phpThumb = new modPhpThumb($modx);\n        $cacheDir = $assetsPath.''cache/'';\n\n        /* clear local cache */\n        if (!empty($cacheDir)) {\n            /** @var DirectoryIterator $file */\n            foreach (new DirectoryIterator($cacheDir) as $file) {\n                if (!$file->isFile()) continue;\n                @unlink($file->getPathname());\n            }\n        }\n\n        /* if using amazon s3, clear our cache there */\n        $useS3 = $modx->getOption(''phpthumbof.use_s3'',$scriptProperties,false);\n        if ($useS3) {\n            $modelPath = $modx->getOption(''phpthumbof.core_path'',null,$modx->getOption(''core_path'').''components/phpthumbof/'').''model/'';\n            /** @var modAws $modaws */\n            $modaws = $modx->getService(''modaws'',''modAws'',$modelPath.''aws/'',$scriptProperties);\n            $s3path = $modx->getOption(''phpthumbof.s3_path'',null,''phpthumbof/'');\n            \n            $list = $modaws->getObjectList($s3path);\n            if (!empty($list) && is_array($list)) {\n                foreach ($list as $obj) {\n                    if (empty($obj->Key)) continue;\n\n                    $results[] = $modaws->deleteObject($obj->Key);\n                }\n            }\n        }\n\n        break;\n}\nreturn;', 0, NULL, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(255) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnSiteRefresh', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'getPage', '<b>1.2.4-pl</b> A generic wrapper snippet for returning paged results and navigation from snippets that return limitable collections.', 0, 0, 0, '/**\n * @package getpage\n */\n$output = '''';\n\n$properties =& $scriptProperties;\n$properties[''page''] = (isset($_GET[$properties[''pageVarKey'']]) && ($page = intval($_GET[$properties[''pageVarKey'']]))) ? $page : null;\nif ($properties[''page''] === null) {\n    $properties[''page''] = (isset($_REQUEST[$properties[''pageVarKey'']]) && ($page = intval($_REQUEST[$properties[''pageVarKey'']]))) ? $page : 1;\n}\n$properties[''limit''] = (isset($_GET[''limit''])) ? intval($_GET[''limit'']) : null;\nif ($properties[''limit''] === null) {\n    $properties[''limit''] = (isset($_REQUEST[''limit''])) ? intval($_REQUEST[''limit'']) : intval($limit);\n}\n$properties[''offset''] = (!empty($properties[''limit'']) && !empty($properties[''page''])) ? ($properties[''limit''] * ($properties[''page''] - 1)) : 0;\n$properties[''totalVar''] = empty($totalVar) ? "total" : $totalVar;\n$properties[$properties[''totalVar'']] = !empty($properties[$properties[''totalVar'']]) && $total = intval($properties[$properties[''totalVar'']]) ? $total : 0;\n$properties[''pageOneLimit''] = (!empty($pageOneLimit) && $pageOneLimit = intval($pageOneLimit)) ? $pageOneLimit : $properties[''limit''];\n$properties[''actualLimit''] = $properties[''limit''];\n$properties[''pageLimit''] = isset($pageLimit) && is_numeric($pageLimit) ? intval($pageLimit) : 5;\n$properties[''element''] = empty($element) ? '''' : $element;\n$properties[''elementClass''] = empty($elementClass) ? ''modChunk'' : $elementClass;\n$properties[''pageNavVar''] = empty($pageNavVar) ? ''page.nav'' : $pageNavVar;\n$properties[''pageNavTpl''] = !isset($pageNavTpl) ? "<li[[+classes]]><a[[+classes]][[+title]] href=\\"[[+href]]\\">[[+pageNo]]</a></li>" : $pageNavTpl;\n$properties[''pageNavOuterTpl''] = !isset($pageNavOuterTpl) ? "[[+first]][[+prev]][[+pages]][[+next]][[+last]]" : $pageNavOuterTpl;\n$properties[''pageActiveTpl''] = !isset($pageActiveTpl) ? "<li[[+activeClasses:default=` class=\\"active\\"`]]><a[[+activeClasses:default=` class=\\"active\\"`]][[+title]] href=\\"[[+href]]\\">[[+pageNo]]</a></li>" : $pageActiveTpl;\n$properties[''pageFirstTpl''] = !isset($pageFirstTpl) ? "<li class=\\"control\\"><a[[+title]] href=\\"[[+href]]\\">First</a></li>" : $pageFirstTpl;\n$properties[''pageLastTpl''] = !isset($pageLastTpl) ? "<li class=\\"control\\"><a[[+title]] href=\\"[[+href]]\\">Last</a></li>" : $pageLastTpl;\n$properties[''pagePrevTpl''] = !isset($pagePrevTpl) ? "<li class=\\"control\\"><a[[+title]] href=\\"[[+href]]\\">&lt;&lt;</a></li>" : $pagePrevTpl;\n$properties[''pageNextTpl''] = !isset($pageNextTpl) ? "<li class=\\"control\\"><a[[+title]] href=\\"[[+href]]\\">&gt;&gt;</a></li>" : $pageNextTpl;\n$properties[''toPlaceholder''] = !empty($toPlaceholder) ? $toPlaceholder : '''';\n$properties[''cache''] = isset($cache) ? (boolean) $cache : (boolean) $modx->getOption(''cache_resource'', null, false);\nif (empty($cache_key)) $properties[xPDO::OPT_CACHE_KEY] = $modx->getOption(''cache_resource_key'', null, ''resource'');\nif (empty($cache_handler)) $properties[xPDO::OPT_CACHE_HANDLER] = $modx->getOption(''cache_resource_handler'', null, ''xPDOFileCache'');\nif (empty($cache_expires)) $properties[xPDO::OPT_CACHE_EXPIRES] = (integer) $modx->getOption(''cache_resource_expires'', null, 0);\n\nif ($properties[''page''] == 1 && $properties[''pageOneLimit''] !== $properties[''actualLimit'']) {\n    $properties[''limit''] = $properties[''pageOneLimit''];\n}\n\nif ($properties[''cache'']) {\n    $properties[''cachePageKey''] = $modx->resource->getCacheKey() . ''/'' . $properties[''page''] . ''/'' . md5(http_build_query($modx->request->getParameters()) . http_build_query($scriptProperties));\n    $properties[''cacheOptions''] = array(\n        xPDO::OPT_CACHE_KEY => $properties[xPDO::OPT_CACHE_KEY],\n        xPDO::OPT_CACHE_HANDLER => $properties[xPDO::OPT_CACHE_HANDLER],\n        xPDO::OPT_CACHE_EXPIRES => $properties[xPDO::OPT_CACHE_EXPIRES],\n    );\n}\n$cached = false;\nif ($properties[''cache'']) {\n    if ($modx->getCacheManager()) {\n        $cached = $modx->cacheManager->get($properties[''cachePageKey''], $properties[''cacheOptions'']);\n    }\n}\nif (empty($cached) || !isset($cached[''properties'']) || !isset($cached[''output''])) {\n    $elementObj = $modx->getObject($properties[''elementClass''], array(''name'' => $properties[''element'']));\n    if ($elementObj) {\n        $elementObj->setCacheable(false);\n        if (!empty($properties[''toPlaceholder''])) {\n            $elementObj->process($properties);\n            $output = $modx->getPlaceholder($properties[''toPlaceholder'']);\n        } else {\n            $output = $elementObj->process($properties);\n        }\n    }\n\n    include_once $modx->getOption(''getpage.core_path'',$properties,$modx->getOption(''core_path'', $properties, MODX_CORE_PATH) . ''components/getpage/'').''include.getpage.php'';\n\n    $qs = $modx->request->getParameters();\n    $properties[''qs''] =& $qs;\n\n    $totalSet = $modx->getPlaceholder($properties[''totalVar'']);\n    $properties[$properties[''totalVar'']] = (($totalSet = intval($totalSet)) ? $totalSet : $properties[$properties[''totalVar'']]);\n    if (!empty($properties[$properties[''totalVar'']]) && !empty($properties[''actualLimit''])) {\n        if ($properties[''pageOneLimit''] !== $properties[''actualLimit'']) {\n            $adjustedTotal = $properties[$properties[''totalVar'']] - $properties[''pageOneLimit''];\n            $properties[''pageCount''] = $adjustedTotal > 0 ? ceil($adjustedTotal / $properties[''actualLimit'']) + 1 : 1;\n        } else {\n            $properties[''pageCount''] = ceil($properties[$properties[''totalVar'']] / $properties[''actualLimit'']);\n        }\n    } else {\n        $properties[''pageCount''] = 1;\n    }\n    if (empty($properties[$properties[''totalVar'']]) || empty($properties[''actualLimit'']) || $properties[$properties[''totalVar'']] <= $properties[''actualLimit''] || ($properties[''page''] == 1 && $properties[$properties[''totalVar'']] <= $properties[''pageOneLimit''])) {\n        $properties[''page''] = 1;\n    } else {\n        $pageNav = getpage_buildControls($modx, $properties);\n        $properties[$properties[''pageNavVar'']] = $modx->newObject(''modChunk'')->process(array_merge($properties, $pageNav), $properties[''pageNavOuterTpl'']);\n        if ($properties[''page''] > 1) {\n            $qs[$properties[''pageVarKey'']] = $properties[''page''];\n        }\n    }\n\n    $properties[''firstItem''] = $properties[''offset''] + 1;\n    $properties[''lastItem''] = ($properties[''offset''] + $properties[''limit'']) < $totalSet ? ($properties[''offset''] + $properties[''limit'']) : $totalSet;\n\n    $properties[''pageUrl''] = $modx->makeUrl($modx->resource->get(''id''), '''', $qs);\n    if ($properties[''cache''] && $modx->getCacheManager()) {\n        $cached = array(''properties'' => $properties, ''output'' => $output);\n        $modx->cacheManager->set($properties[''cachePageKey''], $cached, $properties[xPDO::OPT_CACHE_EXPIRES], $properties[''cacheOptions'']);\n    }\n} else {\n    $properties = $cached[''properties''];\n    $output = $cached[''output''];\n}\n$modx->setPlaceholders($properties, $properties[''namespace'']);\nif (!empty($properties[''toPlaceholder''])) {\n    $modx->setPlaceholder($properties[''toPlaceholder''], $output);\n    $output = '''';\n}\n\nreturn $output;', 0, 'a:21:{s:9:"namespace";a:7:{s:4:"name";s:9:"namespace";s:4:"desc";s:114:"An execution namespace that serves as a prefix for placeholders set by a specific instance of the getPage snippet.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:62:"The result limit per page; can be overridden in the $_REQUEST.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"10";s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"offset";a:7:{s:4:"name";s:6:"offset";s:4:"desc";s:171:"The offset, or record position to start at within the collection for rendering results for the current page; should be calculated based on page variable set in pageVarKey.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";N;s:4:"area";s:0:"";}s:4:"page";a:7:{s:4:"name";s:4:"page";s:4:"desc";s:136:"The page to display; this is determined based on the value indicated by the page variable set in pageVarKey, typically in the $_REQUEST.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"pageVarKey";a:7:{s:4:"name";s:10:"pageVarKey";s:4:"desc";s:54:"The key of a property that indicates the current page.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"page";s:7:"lexicon";N;s:4:"area";s:0:"";}s:8:"totalVar";a:7:{s:4:"name";s:8:"totalVar";s:4:"desc";s:101:"The key of a placeholder that must contain the total records in the limitable collection being paged.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:5:"total";s:7:"lexicon";N;s:4:"area";s:0:"";}s:9:"pageLimit";a:7:{s:4:"name";s:9:"pageLimit";s:4:"desc";s:69:"The maximum number of pages to display when rendering paging controls";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"5";s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"elementClass";a:7:{s:4:"name";s:12:"elementClass";s:4:"desc";s:73:"The class of element that will be called by the getPage snippet instance.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:10:"modSnippet";s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"pageNavVar";a:7:{s:4:"name";s:10:"pageNavVar";s:4:"desc";s:71:"The key of a placeholder to be set with the paging navigation controls.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"page.nav";s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"pageNavTpl";a:7:{s:4:"name";s:10:"pageNavTpl";s:4:"desc";s:54:"Content representing a single page navigation control.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:78:"<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>";s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"pageNavOuterTpl";a:7:{s:4:"name";s:15:"pageNavOuterTpl";s:4:"desc";s:64:"Content representing the layout of the page navigation controls.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:47:"[[+first]][[+prev]][[+pages]][[+next]][[+last]]";s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"pageActiveTpl";a:7:{s:4:"name";s:13:"pageActiveTpl";s:4:"desc";s:57:"Content representing the current page navigation control.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:116:"<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>";s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"pageFirstTpl";a:7:{s:4:"name";s:12:"pageFirstTpl";s:4:"desc";s:55:"Content representing the first page navigation control.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:76:"<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"pageLastTpl";a:7:{s:4:"name";s:11:"pageLastTpl";s:4:"desc";s:54:"Content representing the last page navigation control.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:75:"<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"pagePrevTpl";a:7:{s:4:"name";s:11:"pagePrevTpl";s:4:"desc";s:58:"Content representing the previous page navigation control.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:79:"<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"pageNextTpl";a:7:{s:4:"name";s:11:"pageNextTpl";s:4:"desc";s:54:"Content representing the next page navigation control.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:79:"<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"cache";a:7:{s:4:"name";s:5:"cache";s:4:"desc";s:84:"If true, unique page requests will be cached according to addition cache properties.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:9:"cache_key";a:7:{s:4:"name";s:9:"cache_key";s:4:"desc";s:120:"The key of the cache provider to use; leave empty to use the cache_resource_key cache partition (default is "resource").";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"cache_handler";a:7:{s:4:"name";s:13:"cache_handler";s:4:"desc";s:99:"The cache provider implementation to use; leave empty unless you are caching to a custom cache_key.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"cache_expires";a:7:{s:4:"name";s:13:"cache_expires";s:4:"desc";s:141:"The number of seconds before the cached pages expire and must be regenerated; leave empty to use the cache provider option for cache_expires.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"pageNavScheme";a:7:{s:4:"name";s:13:"pageNavScheme";s:4:"desc";s:145:"Optionally specify a scheme for use when generating page navigation links; will use link_tag_scheme if empty or not specified (default is empty).";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}}', '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(2, 0, 0, 'getResources', '<strong>1.6.1-pl</strong> A general purpose Resource listing and summarization snippet for MODX Revolution', 0, 0, 0, '/**\n * getResources\n *\n * A general purpose Resource listing and summarization snippet for MODX 2.x.\n *\n * @author Jason Coward\n * @copyright Copyright 2010-2013, Jason Coward\n *\n * TEMPLATES\n *\n * tpl - Name of a chunk serving as a resource template\n * [NOTE: if not provided, properties are dumped to output for each resource]\n *\n * tplOdd - (Opt) Name of a chunk serving as resource template for resources with an odd idx value\n * (see idx property)\n * tplFirst - (Opt) Name of a chunk serving as resource template for the first resource (see first\n * property)\n * tplLast - (Opt) Name of a chunk serving as resource template for the last resource (see last\n * property)\n * tpl_{n} - (Opt) Name of a chunk serving as resource template for the nth resource\n *\n * tplCondition - (Opt) Defines a field of the resource to evaluate against keys defined in the\n * conditionalTpls property. Must be a resource field; does not work with Template Variables.\n * conditionalTpls - (Opt) A JSON object defining a map of field values and the associated tpl to\n * use when the field defined by tplCondition matches the value. [NOTE: tplOdd, tplFirst, tplLast,\n * and tpl_{n} will take precedence over any defined conditionalTpls]\n *\n * tplWrapper - (Opt) Name of a chunk serving as a wrapper template for the output\n * [NOTE: Does not work with toSeparatePlaceholders]\n *\n * SELECTION\n *\n * parents - Comma-delimited list of ids serving as parents\n *\n * context - (Opt) Comma-delimited list of context keys to limit results by; if empty, contexts for all specified\n * parents will be used (all contexts if 0 is specified) [default=]\n *\n * depth - (Opt) Integer value indicating depth to search for resources from each parent [default=10]\n *\n * tvFilters - (Opt) Delimited-list of TemplateVar values to filter resources by. Supports two\n * delimiters and two value search formats. The first delimiter || represents a logical OR and the\n * primary grouping mechanism.  Within each group you can provide a comma-delimited list of values.\n * These values can be either tied to a specific TemplateVar by name, e.g. myTV==value, or just the\n * value, indicating you are searching for the value in any TemplateVar tied to the Resource. An\n * example would be &tvFilters=`filter2==one,filter1==bar%||filter1==foo`\n * [NOTE: filtering by values uses a LIKE query and % is considered a wildcard.]\n * [NOTE: this only looks at the raw value set for specific Resource, i. e. there must be a value\n * specifically set for the Resource and it is not evaluated.]\n *\n * tvFiltersAndDelimiter - (Opt) Custom delimiter for logical AND, default '','', in case you want to\n * match a literal comma in the tvFilters. E.g. &tvFiltersAndDelimiter=`&&`\n * &tvFilters=`filter1==foo,bar&&filter2==baz` [default=,]\n *\n * tvFiltersOrDelimiter - (Opt) Custom delimiter for logical OR, default ''||'', in case you want to\n * match a literal ''||'' in the tvFilters. E.g. &tvFiltersOrDelimiter=`|OR|`\n * &tvFilters=`filter1==foo||bar|OR|filter2==baz` [default=||]\n *\n * where - (Opt) A JSON expression of criteria to build any additional where clauses from. An example would be\n * &where=`{{"alias:LIKE":"foo%", "OR:alias:LIKE":"%bar"},{"OR:pagetitle:=":"foobar", "AND:description:=":"raboof"}}`\n *\n * sortby - (Opt) Field to sort by or a JSON array, e.g. {"publishedon":"ASC","createdon":"DESC"} [default=publishedon]\n * sortbyTV - (opt) A Template Variable name to sort by (if supplied, this precedes the sortby value) [default=]\n * sortbyTVType - (Opt) A data type to CAST a TV Value to in order to sort on it properly [default=string]\n * sortbyAlias - (Opt) Query alias for sortby field [default=]\n * sortbyEscaped - (Opt) Escapes the field name(s) specified in sortby [default=0]\n * sortdir - (Opt) Order which to sort by [default=DESC]\n * sortdirTV - (Opt) Order which to sort by a TV [default=DESC]\n * limit - (Opt) Limits the number of resources returned [default=5]\n * offset - (Opt) An offset of resources returned by the criteria to skip [default=0]\n * dbCacheFlag - (Opt) Controls caching of db queries; 0|false = do not cache result set; 1 = cache result set\n * according to cache settings, any other integer value = number of seconds to cache result set [default=0]\n *\n * OPTIONS\n *\n * includeContent - (Opt) Indicates if the content of each resource should be returned in the\n * results [default=0]\n * includeTVs - (Opt) Indicates if TemplateVar values should be included in the properties available\n * to each resource template [default=0]\n * includeTVList - (Opt) Limits the TemplateVars that are included if includeTVs is true to those specified\n * by name in a comma-delimited list [default=]\n * prepareTVs - (Opt) Prepares media-source dependent TemplateVar values [default=1]\n * prepareTVList - (Opt) Limits the TVs that are prepared to those specified by name in a comma-delimited\n * list [default=]\n * processTVs - (Opt) Indicates if TemplateVar values should be rendered as they would on the\n * resource being summarized [default=0]\n * processTVList - (opt) Limits the TemplateVars that are processed if included to those specified\n * by name in a comma-delimited list [default=]\n * tvPrefix - (Opt) The prefix for TemplateVar properties [default=tv.]\n * idx - (Opt) You can define the starting idx of the resources, which is an property that is\n * incremented as each resource is rendered [default=1]\n * first - (Opt) Define the idx which represents the first resource (see tplFirst) [default=1]\n * last - (Opt) Define the idx which represents the last resource (see tplLast) [default=# of\n * resources being summarized + first - 1]\n * outputSeparator - (Opt) An optional string to separate each tpl instance [default="\\n"]\n * wrapIfEmpty - (Opt) Indicates if the tplWrapper should be applied if the output is empty [default=0]\n *\n */\n$output = array();\n$outputSeparator = isset($outputSeparator) ? $outputSeparator : "\\n";\n\n/* set default properties */\n$tpl = !empty($tpl) ? $tpl : '''';\n$includeContent = !empty($includeContent) ? true : false;\n$includeTVs = !empty($includeTVs) ? true : false;\n$includeTVList = !empty($includeTVList) ? explode('','', $includeTVList) : array();\n$processTVs = !empty($processTVs) ? true : false;\n$processTVList = !empty($processTVList) ? explode('','', $processTVList) : array();\n$prepareTVs = !empty($prepareTVs) ? true : false;\n$prepareTVList = !empty($prepareTVList) ? explode('','', $prepareTVList) : array();\n$tvPrefix = isset($tvPrefix) ? $tvPrefix : ''tv.'';\n$parents = (!empty($parents) || $parents === ''0'') ? explode('','', $parents) : array($modx->resource->get(''id''));\narray_walk($parents, ''trim'');\n$parents = array_unique($parents);\n$depth = isset($depth) ? (integer) $depth : 10;\n\n$tvFiltersOrDelimiter = isset($tvFiltersOrDelimiter) ? $tvFiltersOrDelimiter : ''||'';\n$tvFiltersAndDelimiter = isset($tvFiltersAndDelimiter) ? $tvFiltersAndDelimiter : '','';\n$tvFilters = !empty($tvFilters) ? explode($tvFiltersOrDelimiter, $tvFilters) : array();\n\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$showUnpublished = !empty($showUnpublished) ? true : false;\n$showDeleted = !empty($showDeleted) ? true : false;\n\n$sortby = isset($sortby) ? $sortby : ''publishedon'';\n$sortbyTV = isset($sortbyTV) ? $sortbyTV : '''';\n$sortbyAlias = isset($sortbyAlias) ? $sortbyAlias : ''modResource'';\n$sortbyEscaped = !empty($sortbyEscaped) ? true : false;\n$sortdir = isset($sortdir) ? $sortdir : ''DESC'';\n$sortdirTV = isset($sortdirTV) ? $sortdirTV : ''DESC'';\n$limit = isset($limit) ? (integer) $limit : 5;\n$offset = isset($offset) ? (integer) $offset : 0;\n$totalVar = !empty($totalVar) ? $totalVar : ''total'';\n\n$dbCacheFlag = !isset($dbCacheFlag) ? false : $dbCacheFlag;\nif (is_string($dbCacheFlag) || is_numeric($dbCacheFlag)) {\n    if ($dbCacheFlag == ''0'') {\n        $dbCacheFlag = false;\n    } elseif ($dbCacheFlag == ''1'') {\n        $dbCacheFlag = true;\n    } else {\n        $dbCacheFlag = (integer) $dbCacheFlag;\n    }\n}\n\n/* multiple context support */\n$contextArray = array();\n$contextSpecified = false;\nif (!empty($context)) {\n    $contextArray = explode('','',$context);\n    array_walk($contextArray, ''trim'');\n    $contexts = array();\n    foreach ($contextArray as $ctx) {\n        $contexts[] = $modx->quote($ctx);\n    }\n    $context = implode('','',$contexts);\n    $contextSpecified = true;\n    unset($contexts,$ctx);\n} else {\n    $context = $modx->quote($modx->context->get(''key''));\n}\n\n$pcMap = array();\n$pcQuery = $modx->newQuery(''modResource'', array(''id:IN'' => $parents), $dbCacheFlag);\n$pcQuery->select(array(''id'', ''context_key''));\nif ($pcQuery->prepare() && $pcQuery->stmt->execute()) {\n    foreach ($pcQuery->stmt->fetchAll(PDO::FETCH_ASSOC) as $pcRow) {\n        $pcMap[(integer) $pcRow[''id'']] = $pcRow[''context_key''];\n    }\n}\n\n$children = array();\n$parentArray = array();\nforeach ($parents as $parent) {\n    $parent = (integer) $parent;\n    if ($parent === 0) {\n        $pchildren = array();\n        if ($contextSpecified) {\n            foreach ($contextArray as $pCtx) {\n                if (!in_array($pCtx, $contextArray)) {\n                    continue;\n                }\n                $options = $pCtx !== $modx->context->get(''key'') ? array(''context'' => $pCtx) : array();\n                $pcchildren = $modx->getChildIds($parent, $depth, $options);\n                if (!empty($pcchildren)) $pchildren = array_merge($pchildren, $pcchildren);\n            }\n        } else {\n            $cQuery = $modx->newQuery(''modContext'', array(''key:!='' => ''mgr''));\n            $cQuery->select(array(''key''));\n            if ($cQuery->prepare() && $cQuery->stmt->execute()) {\n                foreach ($cQuery->stmt->fetchAll(PDO::FETCH_COLUMN) as $pCtx) {\n                    $options = $pCtx !== $modx->context->get(''key'') ? array(''context'' => $pCtx) : array();\n                    $pcchildren = $modx->getChildIds($parent, $depth, $options);\n                    if (!empty($pcchildren)) $pchildren = array_merge($pchildren, $pcchildren);\n                }\n            }\n        }\n        $parentArray[] = $parent;\n    } else {\n        $pContext = array_key_exists($parent, $pcMap) ? $pcMap[$parent] : false;\n        if ($debug) $modx->log(modX::LOG_LEVEL_ERROR, "context for {$parent} is {$pContext}");\n        if ($pContext && $contextSpecified && !in_array($pContext, $contextArray, true)) {\n            $parent = next($parents);\n            continue;\n        }\n        $parentArray[] = $parent;\n        $options = !empty($pContext) && $pContext !== $modx->context->get(''key'') ? array(''context'' => $pContext) : array();\n        $pchildren = $modx->getChildIds($parent, $depth, $options);\n    }\n    if (!empty($pchildren)) $children = array_merge($children, $pchildren);\n    $parent = next($parents);\n}\n$parents = array_merge($parentArray, $children);\n\n/* build query */\n$criteria = array("modResource.parent IN (" . implode('','', $parents) . ")");\nif ($contextSpecified) {\n    $contextResourceTbl = $modx->getTableName(''modContextResource'');\n    $criteria[] = "(modResource.context_key IN ({$context}) OR EXISTS(SELECT 1 FROM {$contextResourceTbl} ctx WHERE ctx.resource = modResource.id AND ctx.context_key IN ({$context})))";\n}\nif (empty($showDeleted)) {\n    $criteria[''deleted''] = ''0'';\n}\nif (empty($showUnpublished)) {\n    $criteria[''published''] = ''1'';\n}\nif (empty($showHidden)) {\n    $criteria[''hidemenu''] = ''0'';\n}\nif (!empty($hideContainers)) {\n    $criteria[''isfolder''] = ''0'';\n}\n$criteria = $modx->newQuery(''modResource'', $criteria);\nif (!empty($tvFilters)) {\n    $tmplVarTbl = $modx->getTableName(''modTemplateVar'');\n    $tmplVarResourceTbl = $modx->getTableName(''modTemplateVarResource'');\n    $conditions = array();\n    $operators = array(\n        ''<=>'' => ''<=>'',\n        ''==='' => ''='',\n        ''!=='' => ''!='',\n        ''<>'' => ''<>'',\n        ''=='' => ''LIKE'',\n        ''!='' => ''NOT LIKE'',\n        ''<<'' => ''<'',\n        ''<='' => ''<='',\n        ''=<'' => ''=<'',\n        ''>>'' => ''>'',\n        ''>='' => ''>='',\n        ''=>'' => ''=>''\n    );\n    foreach ($tvFilters as $fGroup => $tvFilter) {\n        $filterGroup = array();\n        $filters = explode($tvFiltersAndDelimiter, $tvFilter);\n        $multiple = count($filters) > 0;\n        foreach ($filters as $filter) {\n            $operator = ''=='';\n            $sqlOperator = ''LIKE'';\n            foreach ($operators as $op => $opSymbol) {\n                if (strpos($filter, $op, 1) !== false) {\n                    $operator = $op;\n                    $sqlOperator = $opSymbol;\n                    break;\n                }\n            }\n            $tvValueField = ''tvr.value'';\n            $tvDefaultField = ''tv.default_text'';\n            $f = explode($operator, $filter);\n            if (count($f) >= 2) {\n                if (count($f) > 2) {\n                    $k = array_shift($f);\n                    $b = join($operator, $f);\n                    $f = array($k, $b);\n                }\n                $tvName = $modx->quote($f[0]);\n                if (is_numeric($f[1]) && !in_array($sqlOperator, array(''LIKE'', ''NOT LIKE''))) {\n                    $tvValue = $f[1];\n                    if ($f[1] == (integer)$f[1]) {\n                        $tvValueField = "CAST({$tvValueField} AS SIGNED INTEGER)";\n                        $tvDefaultField = "CAST({$tvDefaultField} AS SIGNED INTEGER)";\n                    } else {\n                        $tvValueField = "CAST({$tvValueField} AS DECIMAL)";\n                        $tvDefaultField = "CAST({$tvDefaultField} AS DECIMAL)";\n                    }\n                } else {\n                    $tvValue = $modx->quote($f[1]);\n                }\n                if ($multiple) {\n                    $filterGroup[] =\n                        "(EXISTS (SELECT 1 FROM {$tmplVarResourceTbl} tvr JOIN {$tmplVarTbl} tv ON {$tvValueField} {$sqlOperator} {$tvValue} AND tv.name = {$tvName} AND tv.id = tvr.tmplvarid WHERE tvr.contentid = modResource.id) " .\n                        "OR EXISTS (SELECT 1 FROM {$tmplVarTbl} tv WHERE tv.name = {$tvName} AND {$tvDefaultField} {$sqlOperator} {$tvValue} AND tv.id NOT IN (SELECT tmplvarid FROM {$tmplVarResourceTbl} WHERE contentid = modResource.id)) " .\n                        ")";\n                } else {\n                    $filterGroup =\n                        "(EXISTS (SELECT 1 FROM {$tmplVarResourceTbl} tvr JOIN {$tmplVarTbl} tv ON {$tvValueField} {$sqlOperator} {$tvValue} AND tv.name = {$tvName} AND tv.id = tvr.tmplvarid WHERE tvr.contentid = modResource.id) " .\n                        "OR EXISTS (SELECT 1 FROM {$tmplVarTbl} tv WHERE tv.name = {$tvName} AND {$tvDefaultField} {$sqlOperator} {$tvValue} AND tv.id NOT IN (SELECT tmplvarid FROM {$tmplVarResourceTbl} WHERE contentid = modResource.id)) " .\n                        ")";\n                }\n            } elseif (count($f) == 1) {\n                $tvValue = $modx->quote($f[0]);\n                if ($multiple) {\n                    $filterGroup[] = "EXISTS (SELECT 1 FROM {$tmplVarResourceTbl} tvr JOIN {$tmplVarTbl} tv ON {$tvValueField} {$sqlOperator} {$tvValue} AND tv.id = tvr.tmplvarid WHERE tvr.contentid = modResource.id)";\n                } else {\n                    $filterGroup = "EXISTS (SELECT 1 FROM {$tmplVarResourceTbl} tvr JOIN {$tmplVarTbl} tv ON {$tvValueField} {$sqlOperator} {$tvValue} AND tv.id = tvr.tmplvarid WHERE tvr.contentid = modResource.id)";\n                }\n            }\n        }\n        $conditions[] = $filterGroup;\n    }\n    if (!empty($conditions)) {\n        $firstGroup = true;\n        foreach ($conditions as $cGroup => $c) {\n            if (is_array($c)) {\n                $first = true;\n                foreach ($c as $cond) {\n                    if ($first && !$firstGroup) {\n                        $criteria->condition($criteria->query[''where''][0][1], $cond, xPDOQuery::SQL_OR, null, $cGroup);\n                    } else {\n                        $criteria->condition($criteria->query[''where''][0][1], $cond, xPDOQuery::SQL_AND, null, $cGroup);\n                    }\n                    $first = false;\n                }\n            } else {\n                $criteria->condition($criteria->query[''where''][0][1], $c, $firstGroup ? xPDOQuery::SQL_AND : xPDOQuery::SQL_OR, null, $cGroup);\n            }\n            $firstGroup = false;\n        }\n    }\n}\n/* include/exclude resources, via &resources=`123,-456` prop */\nif (!empty($resources)) {\n    $resourceConditions = array();\n    $resources = explode('','',$resources);\n    $include = array();\n    $exclude = array();\n    foreach ($resources as $resource) {\n        $resource = (int)$resource;\n        if ($resource == 0) continue;\n        if ($resource < 0) {\n            $exclude[] = abs($resource);\n        } else {\n            $include[] = $resource;\n        }\n    }\n    if (!empty($include)) {\n        $criteria->where(array(''OR:modResource.id:IN'' => $include), xPDOQuery::SQL_OR);\n    }\n    if (!empty($exclude)) {\n        $criteria->where(array(''modResource.id:NOT IN'' => $exclude), xPDOQuery::SQL_AND, null, 1);\n    }\n}\nif (!empty($where)) {\n    $criteria->where($where);\n}\n\n$total = $modx->getCount(''modResource'', $criteria);\n$modx->setPlaceholder($totalVar, $total);\n\n$fields = array_keys($modx->getFields(''modResource''));\nif (empty($includeContent)) {\n    $fields = array_diff($fields, array(''content''));\n}\n$columns = $includeContent ? $modx->getSelectColumns(''modResource'', ''modResource'') : $modx->getSelectColumns(''modResource'', ''modResource'', '''', array(''content''), true);\n$criteria->select($columns);\nif (!empty($sortbyTV)) {\n    $criteria->leftJoin(''modTemplateVar'', ''tvDefault'', array(\n        "tvDefault.name" => $sortbyTV\n    ));\n    $criteria->leftJoin(''modTemplateVarResource'', ''tvSort'', array(\n        "tvSort.contentid = modResource.id",\n        "tvSort.tmplvarid = tvDefault.id"\n    ));\n    if (empty($sortbyTVType)) $sortbyTVType = ''string'';\n    if ($modx->getOption(''dbtype'') === ''mysql'') {\n        switch ($sortbyTVType) {\n            case ''integer'':\n                $criteria->select("CAST(IFNULL(tvSort.value, tvDefault.default_text) AS SIGNED INTEGER) AS sortTV");\n                break;\n            case ''decimal'':\n                $criteria->select("CAST(IFNULL(tvSort.value, tvDefault.default_text) AS DECIMAL) AS sortTV");\n                break;\n            case ''datetime'':\n                $criteria->select("CAST(IFNULL(tvSort.value, tvDefault.default_text) AS DATETIME) AS sortTV");\n                break;\n            case ''string'':\n            default:\n                $criteria->select("IFNULL(tvSort.value, tvDefault.default_text) AS sortTV");\n                break;\n        }\n    } elseif ($modx->getOption(''dbtype'') === ''sqlsrv'') {\n        switch ($sortbyTVType) {\n            case ''integer'':\n                $criteria->select("CAST(ISNULL(tvSort.value, tvDefault.default_text) AS BIGINT) AS sortTV");\n                break;\n            case ''decimal'':\n                $criteria->select("CAST(ISNULL(tvSort.value, tvDefault.default_text) AS DECIMAL) AS sortTV");\n                break;\n            case ''datetime'':\n                $criteria->select("CAST(ISNULL(tvSort.value, tvDefault.default_text) AS DATETIME) AS sortTV");\n                break;\n            case ''string'':\n            default:\n                $criteria->select("ISNULL(tvSort.value, tvDefault.default_text) AS sortTV");\n                break;\n        }\n    }\n    $criteria->sortby("sortTV", $sortdirTV);\n}\nif (!empty($sortby)) {\n    if (strpos($sortby, ''{'') === 0) {\n        $sorts = $modx->fromJSON($sortby);\n    } else {\n        $sorts = array($sortby => $sortdir);\n    }\n    if (is_array($sorts)) {\n        while (list($sort, $dir) = each($sorts)) {\n            if ($sortbyEscaped) $sort = $modx->escape($sort);\n            if (!empty($sortbyAlias)) $sort = $modx->escape($sortbyAlias) . ".{$sort}";\n            $criteria->sortby($sort, $dir);\n        }\n    }\n}\nif (!empty($limit)) $criteria->limit($limit, $offset);\n\nif (!empty($debug)) {\n    $criteria->prepare();\n    $modx->log(modX::LOG_LEVEL_ERROR, $criteria->toSQL());\n}\n$collection = $modx->getCollection(''modResource'', $criteria, $dbCacheFlag);\n\n$idx = !empty($idx) || $idx === ''0'' ? (integer) $idx : 1;\n$first = empty($first) && $first !== ''0'' ? 1 : (integer) $first;\n$last = empty($last) ? (count($collection) + $idx - 1) : (integer) $last;\n\n/* include parseTpl */\ninclude_once $modx->getOption(''getresources.core_path'',null,$modx->getOption(''core_path'').''components/getresources/'').''include.parsetpl.php'';\n\n$templateVars = array();\nif (!empty($includeTVs) && !empty($includeTVList)) {\n    $templateVars = $modx->getCollection(''modTemplateVar'', array(''name:IN'' => $includeTVList));\n}\n/** @var modResource $resource */\nforeach ($collection as $resourceId => $resource) {\n    $tvs = array();\n    if (!empty($includeTVs)) {\n        if (empty($includeTVList)) {\n            $templateVars = $resource->getMany(''TemplateVars'');\n        }\n        /** @var modTemplateVar $templateVar */\n        foreach ($templateVars as $tvId => $templateVar) {\n            if (!empty($includeTVList) && !in_array($templateVar->get(''name''), $includeTVList)) continue;\n            if ($processTVs && (empty($processTVList) || in_array($templateVar->get(''name''), $processTVList))) {\n                $tvs[$tvPrefix . $templateVar->get(''name'')] = $templateVar->renderOutput($resource->get(''id''));\n            } else {\n                $value = $templateVar->getValue($resource->get(''id''));\n                if ($prepareTVs && method_exists($templateVar, ''prepareOutput'') && (empty($prepareTVList) || in_array($templateVar->get(''name''), $prepareTVList))) {\n                    $value = $templateVar->prepareOutput($value);\n                }\n                $tvs[$tvPrefix . $templateVar->get(''name'')] = $value;\n            }\n        }\n    }\n    $odd = ($idx & 1);\n    $properties = array_merge(\n        $scriptProperties\n        ,array(\n            ''idx'' => $idx\n            ,''first'' => $first\n            ,''last'' => $last\n            ,''odd'' => $odd\n        )\n        ,$includeContent ? $resource->toArray() : $resource->get($fields)\n        ,$tvs\n    );\n    $resourceTpl = false;\n    if ($idx == $first && !empty($tplFirst)) {\n        $resourceTpl = parseTpl($tplFirst, $properties);\n    }\n    if ($idx == $last && empty($resourceTpl) && !empty($tplLast)) {\n        $resourceTpl = parseTpl($tplLast, $properties);\n    }\n    $tplidx = ''tpl_'' . $idx;\n    if (empty($resourceTpl) && !empty($$tplidx)) {\n        $resourceTpl = parseTpl($$tplidx, $properties);\n    }\n    if ($idx > 1 && empty($resourceTpl)) {\n        $divisors = getDivisors($idx);\n        if (!empty($divisors)) {\n            foreach ($divisors as $divisor) {\n                $tplnth = ''tpl_n'' . $divisor;\n                if (!empty($$tplnth)) {\n                    $resourceTpl = parseTpl($$tplnth, $properties);\n                    if (!empty($resourceTpl)) {\n                        break;\n                    }\n                }\n            }\n        }\n    }\n    if ($odd && empty($resourceTpl) && !empty($tplOdd)) {\n        $resourceTpl = parseTpl($tplOdd, $properties);\n    }\n    if (!empty($tplCondition) && !empty($conditionalTpls) && empty($resourceTpl)) {\n        $conTpls = $modx->fromJSON($conditionalTpls);\n        $subject = $properties[$tplCondition];\n        $tplOperator = !empty($tplOperator) ? $tplOperator : ''='';\n        $tplOperator = strtolower($tplOperator);\n        $tplCon = '''';\n        foreach ($conTpls as $operand => $conditionalTpl) {\n            switch ($tplOperator) {\n                case ''!='':\n                case ''neq'':\n                case ''not'':\n                case ''isnot'':\n                case ''isnt'':\n                case ''unequal'':\n                case ''notequal'':\n                    $tplCon = (($subject != $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case ''<'':\n                case ''lt'':\n                case ''less'':\n                case ''lessthan'':\n                    $tplCon = (($subject < $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case ''>'':\n                case ''gt'':\n                case ''greater'':\n                case ''greaterthan'':\n                    $tplCon = (($subject > $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case ''<='':\n                case ''lte'':\n                case ''lessthanequals'':\n                case ''lessthanorequalto'':\n                    $tplCon = (($subject <= $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case ''>='':\n                case ''gte'':\n                case ''greaterthanequals'':\n                case ''greaterthanequalto'':\n                    $tplCon = (($subject >= $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case ''isempty'':\n                case ''empty'':\n                    $tplCon = empty($subject) ? $conditionalTpl : $tplCon;\n                    break;\n                case ''!empty'':\n                case ''notempty'':\n                case ''isnotempty'':\n                    $tplCon = !empty($subject) && $subject != '''' ? $conditionalTpl : $tplCon;\n                    break;\n                case ''isnull'':\n                case ''null'':\n                    $tplCon = $subject == null || strtolower($subject) == ''null'' ? $conditionalTpl : $tplCon;\n                    break;\n                case ''inarray'':\n                case ''in_array'':\n                case ''ia'':\n                    $operand = explode('','', $operand);\n                    $tplCon = in_array($subject, $operand) ? $conditionalTpl : $tplCon;\n                    break;\n                case ''between'':\n                case ''range'':\n                case ''>=<'':\n                case ''><'':\n                    $operand = explode('','', $operand);\n                    $tplCon = ($subject >= min($operand) && $subject <= max($operand)) ? $conditionalTpl : $tplCon;\n                    break;\n                case ''=='':\n                case ''='':\n                case ''eq'':\n                case ''is'':\n                case ''equal'':\n                case ''equals'':\n                case ''equalto'':\n                default:\n                    $tplCon = (($subject == $operand) ? $conditionalTpl : $tplCon);\n                    break;\n            }\n        }\n        if (!empty($tplCon)) {\n            $resourceTpl = parseTpl($tplCon, $properties);\n        }\n    }\n    if (!empty($tpl) && empty($resourceTpl)) {\n        $resourceTpl = parseTpl($tpl, $properties);\n    }\n    if ($resourceTpl === false && !empty($debug)) {\n        $chunk = $modx->newObject(''modChunk'');\n        $chunk->setCacheable(false);\n        $output[]= $chunk->process(array(), ''<pre>'' . print_r($properties, true) .''</pre>'');\n    } else {\n        $output[]= $resourceTpl;\n    }\n    $idx++;\n}\n\n/* output */\n$toSeparatePlaceholders = $modx->getOption(''toSeparatePlaceholders'', $scriptProperties, false);\nif (!empty($toSeparatePlaceholders)) {\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n    return '''';\n}\n\n$output = implode($outputSeparator, $output);\n\n$tplWrapper = $modx->getOption(''tplWrapper'', $scriptProperties, false);\n$wrapIfEmpty = $modx->getOption(''wrapIfEmpty'', $scriptProperties, false);\nif (!empty($tplWrapper) && ($wrapIfEmpty || !empty($output))) {\n    $output = parseTpl($tplWrapper, array_merge($scriptProperties, array(''output'' => $output)));\n}\n\n$toPlaceholder = $modx->getOption(''toPlaceholder'', $scriptProperties, false);\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return '''';\n}\nreturn $output;', 0, 'a:44:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:121:"Name of a chunk serving as a resource template. NOTE: if not provided, properties are dumped to output for each resource.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"tplOdd";a:7:{s:4:"name";s:6:"tplOdd";s:4:"desc";s:100:"Name of a chunk serving as resource template for resources with an odd idx value (see idx property).";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:8:"tplFirst";a:7:{s:4:"name";s:8:"tplFirst";s:4:"desc";s:89:"Name of a chunk serving as resource template for the first resource (see first property).";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:7:"tplLast";a:7:{s:4:"name";s:7:"tplLast";s:4:"desc";s:87:"Name of a chunk serving as resource template for the last resource (see last property).";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"tplWrapper";a:7:{s:4:"name";s:10:"tplWrapper";s:4:"desc";s:115:"Name of a chunk serving as wrapper template for the Snippet output. This does not work with toSeparatePlaceholders.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"wrapIfEmpty";a:7:{s:4:"name";s:11:"wrapIfEmpty";s:4:"desc";s:95:"Indicates if empty output should be wrapped by the tplWrapper, if specified. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"sortby";a:7:{s:4:"name";s:6:"sortby";s:4:"desc";s:153:"A field name to sort by or JSON object of field names and sortdir for each field, e.g. {"publishedon":"ASC","createdon":"DESC"}. Defaults to publishedon.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:11:"publishedon";s:7:"lexicon";N;s:4:"area";s:0:"";}s:8:"sortbyTV";a:7:{s:4:"name";s:8:"sortbyTV";s:4:"desc";s:65:"Name of a Template Variable to sort by. Defaults to empty string.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"sortbyTVType";a:7:{s:4:"name";s:12:"sortbyTVType";s:4:"desc";s:72:"An optional type to indicate how to sort on the Template Variable value.";s:4:"type";s:4:"list";s:7:"options";a:4:{i:0;a:2:{s:4:"text";s:6:"string";s:5:"value";s:6:"string";}i:1;a:2:{s:4:"text";s:7:"integer";s:5:"value";s:7:"integer";}i:2;a:2:{s:4:"text";s:7:"decimal";s:5:"value";s:7:"decimal";}i:3;a:2:{s:4:"text";s:8:"datetime";s:5:"value";s:8:"datetime";}}s:5:"value";s:6:"string";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"sortbyAlias";a:7:{s:4:"name";s:11:"sortbyAlias";s:4:"desc";s:58:"Query alias for sortby field. Defaults to an empty string.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"sortbyEscaped";a:7:{s:4:"name";s:13:"sortbyEscaped";s:4:"desc";s:82:"Determines if the field name specified in sortby should be escaped. Defaults to 0.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";N;s:4:"area";s:0:"";}s:7:"sortdir";a:7:{s:4:"name";s:7:"sortdir";s:4:"desc";s:41:"Order which to sort by. Defaults to DESC.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:3:"ASC";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:4:"DESC";s:5:"value";s:4:"DESC";}}s:5:"value";s:4:"DESC";s:7:"lexicon";N;s:4:"area";s:0:"";}s:9:"sortdirTV";a:7:{s:4:"name";s:9:"sortdirTV";s:4:"desc";s:61:"Order which to sort a Template Variable by. Defaults to DESC.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:3:"ASC";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:4:"DESC";s:5:"value";s:4:"DESC";}}s:5:"value";s:4:"DESC";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:55:"Limits the number of resources returned. Defaults to 5.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"5";s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"offset";a:7:{s:4:"name";s:6:"offset";s:4:"desc";s:56:"An offset of resources returned by the criteria to skip.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";N;s:4:"area";s:0:"";}s:9:"tvFilters";a:7:{s:4:"name";s:9:"tvFilters";s:4:"desc";s:778:"Delimited-list of TemplateVar values to filter resources by. Supports two delimiters and two value search formats. THe first delimiter || represents a logical OR and the primary grouping mechanism.  Within each group you can provide a comma-delimited list of values. These values can be either tied to a specific TemplateVar by name, e.g. myTV==value, or just the value, indicating you are searching for the value in any TemplateVar tied to the Resource. An example would be &tvFilters=`filter2==one,filter1==bar%||filter1==foo`. <br />NOTE: filtering by values uses a LIKE query and % is considered a wildcard. <br />ANOTHER NOTE: This only looks at the raw value set for specific Resource, i. e. there must be a value specifically set for the Resource and it is not evaluated.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:21:"tvFiltersAndDelimiter";a:7:{s:4:"name";s:21:"tvFiltersAndDelimiter";s:4:"desc";s:83:"The delimiter to use to separate logical AND expressions in tvFilters. Default is ,";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:",";s:7:"lexicon";N;s:4:"area";s:0:"";}s:20:"tvFiltersOrDelimiter";a:7:{s:4:"name";s:20:"tvFiltersOrDelimiter";s:4:"desc";s:83:"The delimiter to use to separate logical OR expressions in tvFilters. Default is ||";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"||";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"depth";a:7:{s:4:"name";s:5:"depth";s:4:"desc";s:88:"Integer value indicating depth to search for resources from each parent. Defaults to 10.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"10";s:7:"lexicon";N;s:4:"area";s:0:"";}s:7:"parents";a:7:{s:4:"name";s:7:"parents";s:4:"desc";s:57:"Optional. Comma-delimited list of ids serving as parents.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:14:"includeContent";a:7:{s:4:"name";s:14:"includeContent";s:4:"desc";s:95:"Indicates if the content of each resource should be returned in the results. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"includeTVs";a:7:{s:4:"name";s:10:"includeTVs";s:4:"desc";s:124:"Indicates if TemplateVar values should be included in the properties available to each resource template. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"includeTVList";a:7:{s:4:"name";s:13:"includeTVList";s:4:"desc";s:96:"Limits included TVs to those specified as a comma-delimited list of TV names. Defaults to empty.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"showHidden";a:7:{s:4:"name";s:10:"showHidden";s:4:"desc";s:85:"Indicates if Resources that are hidden from menus should be shown. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"showUnpublished";a:7:{s:4:"name";s:15:"showUnpublished";s:4:"desc";s:79:"Indicates if Resources that are unpublished should be shown. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"showDeleted";a:7:{s:4:"name";s:11:"showDeleted";s:4:"desc";s:75:"Indicates if Resources that are deleted should be shown. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:9:"resources";a:7:{s:4:"name";s:9:"resources";s:4:"desc";s:177:"A comma-separated list of resource IDs to exclude or include. IDs with a - in front mean to exclude. Ex: 123,-456 means to include Resource 123, but always exclude Resource 456.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"processTVs";a:7:{s:4:"name";s:10:"processTVs";s:4:"desc";s:117:"Indicates if TemplateVar values should be rendered as they would on the resource being summarized. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"processTVList";a:7:{s:4:"name";s:13:"processTVList";s:4:"desc";s:166:"Limits processed TVs to those specified as a comma-delimited list of TV names; note only includedTVs will be available for processing if specified. Defaults to empty.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:10:"prepareTVs";a:7:{s:4:"name";s:10:"prepareTVs";s:4:"desc";s:120:"Indicates if TemplateVar values that are not processed fully should be prepared before being returned. Defaults to true.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"prepareTVList";a:7:{s:4:"name";s:13:"prepareTVList";s:4:"desc";s:164:"Limits prepared TVs to those specified as a comma-delimited list of TV names; note only includedTVs will be available for preparing if specified. Defaults to empty.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:8:"tvPrefix";a:7:{s:4:"name";s:8:"tvPrefix";s:4:"desc";s:55:"The prefix for TemplateVar properties. Defaults to: tv.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"tv.";s:7:"lexicon";N;s:4:"area";s:0:"";}s:3:"idx";a:7:{s:4:"name";s:3:"idx";s:4:"desc";s:120:"You can define the starting idx of the resources, which is an property that is incremented as each resource is rendered.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"first";a:7:{s:4:"name";s:5:"first";s:4:"desc";s:81:"Define the idx which represents the first resource (see tplFirst). Defaults to 1.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:4:"last";a:7:{s:4:"name";s:4:"last";s:4:"desc";s:129:"Define the idx which represents the last resource (see tplLast). Defaults to the number of resources being summarized + first - 1";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:85:"If set, will assign the result to this placeholder instead of outputting it directly.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:22:"toSeparatePlaceholders";a:7:{s:4:"name";s:22:"toSeparatePlaceholders";s:4:"desc";s:130:"If set, will assign EACH result to a separate placeholder named by this param suffixed with a sequential number (starting from 0).";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"debug";a:7:{s:4:"name";s:5:"debug";s:4:"desc";s:68:"If true, will send the SQL query to the MODX log. Defaults to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"where";a:7:{s:4:"name";s:5:"where";s:4:"desc";s:193:"A JSON expression of criteria to build any additional where clauses from, e.g. &where=`{{"alias:LIKE":"foo%", "OR:alias:LIKE":"%bar"},{"OR:pagetitle:=":"foobar", "AND:description:=":"raboof"}}`";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"dbCacheFlag";a:7:{s:4:"name";s:11:"dbCacheFlag";s:4:"desc";s:218:"Determines how result sets are cached if cache_db is enabled in MODX. 0|false = do not cache result set; 1 = cache result set according to cache settings, any other integer value = number of seconds to cache result set";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";N;s:4:"area";s:0:"";}s:7:"context";a:7:{s:4:"name";s:7:"context";s:4:"desc";s:116:"A comma-delimited list of context keys for limiting results. Default is empty, i.e. do not limit results by context.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"tplCondition";a:7:{s:4:"name";s:12:"tplCondition";s:4:"desc";s:129:"A condition to compare against the conditionalTpls property to map Resources to different tpls based on custom conditional logic.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"tplOperator";a:7:{s:4:"name";s:11:"tplOperator";s:4:"desc";s:125:"An optional operator to use for the tplCondition when comparing against the conditionalTpls operands. Default is == (equals).";s:4:"type";s:4:"list";s:7:"options";a:10:{i:0;a:2:{s:4:"text";s:11:"is equal to";s:5:"value";s:2:"==";}i:1;a:2:{s:4:"text";s:15:"is not equal to";s:5:"value";s:2:"!=";}i:2;a:2:{s:4:"text";s:9:"less than";s:5:"value";s:1:"<";}i:3;a:2:{s:4:"text";s:21:"less than or equal to";s:5:"value";s:2:"<=";}i:4;a:2:{s:4:"text";s:24:"greater than or equal to";s:5:"value";s:2:">=";}i:5;a:2:{s:4:"text";s:8:"is empty";s:5:"value";s:5:"empty";}i:6;a:2:{s:4:"text";s:12:"is not empty";s:5:"value";s:6:"!empty";}i:7;a:2:{s:4:"text";s:7:"is null";s:5:"value";s:4:"null";}i:8;a:2:{s:4:"text";s:11:"is in array";s:5:"value";s:7:"inarray";}i:9;a:2:{s:4:"text";s:10:"is between";s:5:"value";s:7:"between";}}s:5:"value";s:2:"==";s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"conditionalTpls";a:7:{s:4:"name";s:15:"conditionalTpls";s:4:"desc";s:121:"A JSON map of conditional operands and tpls to compare against the tplCondition property using the specified tplOperator.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}}', '', 0, ''),
(3, 0, 0, 'phpthumbof', 'A custom output filter that generates thumbnails securely with phpThumb.', 0, 0, 0, '/**\n * phpThumbOf\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * phpThumbOf is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * phpThumbOf is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * phpThumbOf; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package phpthumbof\n */\n/**\n * A custom output filter for phpThumb\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @var phpThumbOf $phpThumbOf\n * @var string $input\n * @var string|array $options\n *\n * @package phpthumbof\n */\nif (empty($modx)) return '''';\nif (!$modx->loadClass(''modPhpThumb'',$modx->getOption(''core_path'').''model/phpthumb/'',true,true)) {\n    $modx->log(modX::LOG_LEVEL_ERROR,''[phpThumbOf] Could not load modPhpThumb class.'');\n    return '''';\n}\nif (empty($input)) {\n    $modx->log(modX::LOG_LEVEL_DEBUG,''[phpThumbOf] Empty image path passed, aborting.'');\n    return '''';\n}\n$modelPath = $modx->getOption(''phpthumbof.core_path'',null,$modx->getOption(''core_path'').''components/phpthumbof/'').''model/'';\nrequire_once $modelPath.''phpthumbof/phpthumbof.class.php'';\n$phpThumbOf = new phpThumbOf($modx,$scriptProperties);\n\n$phpThumbOf->getCacheDirectory();\n$phpThumbOf->ensureCacheDirectoryIsWritable();\n\n$thumbnail = $phpThumbOf->createThumbnailObject();\n$thumbnail->setInput($input);\n$thumbnail->setOptions($options);\n$thumbnail->initializeService();\nreturn $thumbnail->render();', 0, NULL, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'Начальный шаблон', 'Template', 0, 0, '', 0, '<!doctype html>\n<html lang="en">\n<head>\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n    <base href="[[!++site_url]]" />\n    <meta charset="[[++modx_charset]]" />\n    <meta http-equiv="X-UA-Compatible" content="IE=edge">\n    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />\n\n    <style type="text/css">\n        body {\n            background-color: #eee;\n            font-family: sans-serif;\n            font-size: 20px;\n            line-height: 1.4em;\n            padding: 0;\n            margin: 0;\n        }\n        body.loaded {\n            font-family: ''Open Sans'', sans-serif;\n        }\n        .container {\n            display: block;\n            max-width: 960px;\n            margin: 2em auto 2em;\n            padding: 2em;\n            background: #fff;\n            border: 1px solid #ddd;\n            border-radius: 3px;\n        }\n        .container > section {\n            height: 100%;\n            width: 60%;\n            display: inline-block;\n            float: left;\n            margin-bottom: 2em;\n        }\n        .container > aside {\n            height: 100%;\n            display: inline-block;\n            width: 30%;\n            border-left: 2px dashed #eee;\n            float: right;\n            padding-left: 1.5em;\n        }\n        .logo {\n            background: url(''[[++manager_url]]templates/default/images/modx-logo-color.svg'') no-repeat center transparent;\n            width: 220px;\n            height: 85px;\n            background-size: contain;\n            display: block;\n            position: relative;\n            text-indent: -9999px;\n            margin: 2em auto;\n        }\n        h1, h2, h3, h4, h5 {\n            color: #494949;\n            font-family: ''Open Sans'', sans-serif;\n            font-weight: 700;\n        }\n        h1 {\n            font-size: 36px;\n            color: #137899;\n        }\n        h2 {\n            font-size: 29px;\n        }\n        h3 {\n            font-size: 24px;\n        }\n\n        a {\n            color: #0f7096;\n        }\n\n        ul {\n            padding-left: 2em;\n        }\n\n        img {\n            max-width: 100%;\n        }\n\n        .cta-button {\n            display: block;\n            text-align: center;\n            vertical-align: middle;\n            -webkit-transform: translateZ(0);\n            transform: translateZ(0);\n            box-shadow: 0 0 1px rgba(0, 0, 0, 0);\n            -webkit-backface-visibility: hidden;\n            backface-visibility: hidden;\n            -moz-osx-font-smoothing: grayscale;\n            position: relative;\n            overflow: hidden;\n            margin: .2em 0;\n            padding: 1em;\n            cursor: pointer;\n            background: #67a749;\n            text-decoration: none;\n            border-radius: 3px;\n            color: #fff;\n            -webkit-tap-highlight-color: rgba(0,0,0,0);\n        }\n        .cta-button:before {\n            content: "";\n            position: absolute;\n            z-index: -1;\n            left: 50%;\n            right: 50%;\n            bottom: 0;\n            background: #137899;\n            height: 5px;\n            -webkit-transition-property: left, right;\n            transition-property: left, right;\n            -webkit-transition-duration: 0.3s;\n            transition-duration: 0.3s;\n            -webkit-transition-timing-function: ease-out;\n            transition-timing-function: ease-out;\n        }\n        .cta-button:hover:before, .cta-button:focus:before, .cta-button:active:before {\n            left: 0;\n            right: 0;\n        }\n\n        .companies {\n            clear: both;\n            display: block;\n            width: 100%;\n            padding: 1em 0 0;\n            border-top: 2px dashed #eee;\n        }\n\n        .companies h3 {\n            text-align: center;\n            margin: 0;\n        }\n\n        .companies ul {\n            margin: 0;\n            padding: 0;\n            list-style: none;\n            text-align: center;\n        }\n\n        .companies ul li {\n            display: inline-block;\n            padding: 0 1em;\n        }\n\n        .companies ul li:first-child {\n            padding-left: 0;\n        }\n\n        .companies ul li:last-child {\n            padding-right: 0;\n        }\n\n        .companies ul li a {\n            display: block;\n            position: relative;\n            text-indent: -99999px;\n            width: 200px;\n            height: 75px;\n            background-repeat: no-repeat;\n            background-size: 200px;\n            background-position: center;\n        }\n\n        .companies ul li.modmore a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAABxCAMAAAAUAqFnAAADAFBMVEUgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToB8YRCjAAAA/3RSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1O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);\n        }\n\n        .companies ul li.extrasio a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAA9CAYAAAAXgFT/AAAoo0lEQVR4AexabZAcRRm+fBxmd2dmdy+3M5sFQ8APxCiISFF+KKhBDZDszGwWyZ1A1JLSglJL/YNllbEKSn9QWohawQ/QBLRELH9oFVh+4EcplkZF4okYDZQhF3M7M7t3iblwd8n4PDvTVtfUZWe93WIP6bfqqZ6d6X777X7ffvrtvhsanCgJh3auFM9+yd3WNN1wwbom9Cxnb1Cs56U63YoSJSuAVYl3/K1EiSIsJc8ZWUZxpEQRlhKVWRGQkUzmLEMzdho5fbee03fg1fCyIS0lirCUKBHHvmKxmDdy2g/zmhG2kQOy+scTxKZEiSIsJYPPrvSsfjUyqxA4BcyQtFD+Vdf1teo+S4kirGUlirDyudwmElYeQDlPwsKx8FFmXoqwlCjCUrJcRBBRBkfCe0lYcXY1m89q708SmxIlirCUDD7TEvdYmnYTSOt2HhHV/ZUSRVhKlqusTHmvJARzc2GFQ/VVDw9dvpolwXedWV3Nm0xYQUxYvuX+zh8ZN/7fCItjuR9xIeKEEHHCuViOsSxspN07nzu+WBWDc7p6AGS1UrJhdVwOlgvoxImN9TNCOLRzPTr/xuGJIdRFm34FPvumzjSwb9ZlyWBcchCzfawnrc/F+uMzxy+DdbggIsKyrwlMp01YATKs6bPqI3wv6sjtxG9Zf9LeDvXSZAUXJ/0qxrx36OLhpcaI8AF91nv9/oscn8IXvcfzwGWFTBbPEkENE12QI206g+WzQmB7xSLrEHSdgo0LgegpK+kxQPvfX+/tm5ZTbYoMq+T8NtywY00/9afVo0+4CDk/vfZFguvkY5m802JN6Om3CEJOI1BB+Knx/PwUjns4PdNLJbr+E1cywEhagVV9ZcNyrg1K7i1YZHf4pn0PsoR7cbTZDdyFTOEzvmV/COXVR0z7RWwnt1/qDjVVqpcbo1vPa1lbzjli1c5tdUT9nKlS7SV+pfrCXhZ5Y9Rd1xh1Xso+qbcTWMdbW3sZbNQXzXo6ZFjziQyLJNJ9hpXIkgCUKZnY4tkMbffW1s+cjudO1OkUXMI2+V0LfsfcXeWV7Ju9knObZ7pf8k3n64wTYI9vOV/zLPvzvunuDCz7Rs+qbvJH6KsEKbD/PsUx9SXGWmmOOpchht8NWz6B4/nngK/SPtpJe2l3UHJuBW4KStUr0+N58BmWhP6KyN4kKWaK642c8Q5DM27Wc/qndU2/y8jpe/gXS5T3oLyD/8CKOmOFbOEiNMkkdA73NasSz0fMrRaC7H0IsAc8094Ph56Ys+phWN4ehuvGgXfFGMO7a8NjVi0EkU3D6Y+h7jcaljvWLNgFWXe35EHw2bNql0Lfo9D3d5T7EGh/8QBfgvjN78Df+Nyw7O0iaLvdhVk2y+6b0dfvoecfHEesd4J9EIn+/gQcAr5zuFwvSYviNYFp38f3XASo+y0BzgvwS3wLZ0zOl+Njbh/wUE+q88243IP33/VYWtVLxXhke4NKfX1guXdicf2UC88vV18uvp+OBPyRzUYD40TfHyOJwGcP4fkRlAdoM/8I0GnuZN0kW2SL13kRKT2G9i2OKyy/ExhLxMk4Y4dEzXETHja7P9BuYNtkZUtWJoVesyqZkKkf/e1CLP8G5b8AZri0ZxEbo3g+injmeOhnbszw03Wt9WNFObsc9P9iaZq2EQRxH/CQkTXuxO9SHy/e5fFl9Kxug5x2gZT2Ak0j/neKgpaX0X5H4Ps8cAD4Pojto7qunydnbD3ZKLICcZQiUfG4AmedZPCJYDtmbaMTp4GngCe8NpG4hxGscwiAmLzGRFA+g/e/QJ3rRT/d3rPQBmEXbLmb/Z+EzjmA5cJpQEJl/wiw/cyAqCPtOCC+t/JXFWHzz9kX9SR1y3gG3xnUtAcZxQ7Z5gBETR1h5XrOBxeCDLbj3Jzi3GJRSAsmAS6cyg3tsllybpBt5X1TlIFuvQhzPBVWdrTnG1nDW0W2lhz75Dr37AZICvV+7KHNtOnGxLKdYF/U8fRMZctoctEvRiQeiAr1fw3M09+0k+M9BZ3x+DzgScYJ/YE4eRo49m9rW9xnVPeEVWf9ORDmj4KSvVkmnV7JKsCpABvMwxjvcfpKkCh90DJdEcsHuSHHdh7gfOJ5QcRzHHvCxl/h+7jc14D/efQKEkdBz5MgGvk1+XNFZtSLfjmrAtE40P2gkdWPSgQlSOkEMIlv+1E+ATyVIDNRD8B3zbh1bSZzZoK4/jeR/3LD9Jc7vjiyIKDFTrMP776AY997Pct5y1TJfpW3zjnfL9c2cvdvWu7WeMf+NgOTC5rByCBh8DJjaJbtDYKEur2YZck7HgTezxjoDDzgBBdnEkFUHkdfc7Sd2U1SV1Lul97zGEC7GazsJ9a3CNxZ2nA8Iu9Pifa8gI+zwk2Yh8cZ/MzOImKPEGdmh4CwGS2YWS4W1pfrRc/2RBBtDH/2zdrbxQKRCQnz8goPbWMSPIgjzBv5fv+LN79AzPGTGy5f41vuh+lD9sm6IosgaTErhl3/xPcmyewgsqbknMm/mWUwK+IY6N95IJ63SWbjIPBboLOG8b8+MGsXiDhh5olj49t4HMTYvsjMmaRBwmJWRoLgvLL9UgmBNkqbz5cD+DKOY2HjIRDt92DfJ7mxMKPGMfbVzExpJ04VF/hm9XWwz0bdj6DczU15Fr6mjvk4nqF3F08PwsYBZliXgQimY1J4vLCmcHaPhLUyxlA2m60go/pKPqcfp/42YuJBeTePhMjqrgQuYaYHnF/I5S6MbDLG0fY2ZFY/AdheIi7jjwVNc1NIK52s4IjXAhN0ChcjncQg592UOMenCReKV3Yv4Z0WAxjByKOicPQ+klu3pMU6YkcHmbwB7Y/GJLEAhIshiMr5o1gAfGamKAJZvpNJpvU+FhLazcRjnmPb0/fhzjF4mY0xaBOZDO/dNN678W5rBndh4pkl74qw438Q+sUC2tcatS8mmXPBsM5/gbZRu7YOXcyJnGHxbpHHYBKQh6POVMl9k/ADSxIFfPGDlsimImI7CTwCfBZE9R6UV0zDZ/RN03QuFGNhX0kimET2hfoPklxIMvQHxtLA/N3O9iC7TLexd5hjNu0PcA5mIz3/ae9cYOSqzjsuwKDau6wJsAZME5UqqqJIlYJE0zZ9iL6rNsB6jYWCAq2apmmC0qYQSNskFPJIk1SEUKklbVOFkjZBRFACgRZCCuUBQoRHqNIQqWhxINjeHc/ugr1r76x3+/0833/96XTv3Hs9987OuB7paPYxc+65557zP9/j+/5fi0OJNYN9KV67DFjxTMzWeidjpD/6dknvWtbmztN+fajoGFl/zCG2WxvfC9wv6xmJq2nAJ3BnHa0FYNnGP1eAgJQTAasbsNq4YeM5Bi5PxsRqu853rF0OMBVV58hrJKAVtZVIfPpakcw2DH+kFGhdYxeltTfshW/jhF7wheib/wssqhTgsEXJpS/XdDhlgoFz6zkGNHchoXGyA1qc5Hba/0wEy6KePrMLXeULO4LWUgCT+PsCal2ThYpdJwGVKKWgAmFXclVmv/ppZPRrY+A+mtxHVHOLGvlRe4jDYtFjUynrhVwdsN7B2HZgUD40/2PnNux/zPui7EYGXiYdXYRjoei1kEJ1n3Z43XLgtIPzBBjw/hiHyaoG77BOtFZYJ6Fvt6mN/yi2Pe+vBSA0DVSRcsIaKLxOkKyYWwNp1jJAfgfztJp0/e3VxpjhHQe44nq2eWAd/EO857UALJNY9lYAWDLeAzK/YIAyESSq/QY419N3h9CF2I5f5frHbhwevhDQA/xoriZeFw38hWxWnOaoJWxwVATEcqQq/hc3CA+x04Yk2I6ThoceJS5bQNe5veAgaKH+zI6e/8aixtVoaG7YgvHNZ4A1dhBEArDEnw/Q+CxqSjwx08VlKtVfcu/he7Gf2BYBSwALKWnVharYsRTQbR4EMthVXOXmOk8BmFLd0pgzvpOGIGRJWAAW6jp/593mZzubym1EE0iby0hAyTqQ21+AkgUErAmXqAArxn4vjpl4AAAA+k7e2uMeYoAmzgPvfz+HR8McCXIAML5O/QlUpzBNuG2QhjMgSn1lYr80NzyTKD1j9uD+AUPmoiH7ImMYVAkL4KG/DRvOHhk+8YVgd5qy/rm/+CoWW8UY9Fl/mY3tLOvzTvpWM9Xy4xHYOoIACxgvUctPJNtM+01y+P24MXi4hxtIuAIKZh+addBiEyFOA2aFbAABXJGWsEO4mN+S5JMhZbW4Jq0xOv7+KNVxTUk79rm9bBRsX6nU1vDmf2uhVllYwi0aDwBdVjqawb4TIt3x2hWVzjpIWGyeBrZFNhUeOza9z9PD0/b3FFC5h6IS7rQZ7AE9NirN+n9mr0tpy13EUAFYEx6HxnpAlUNV9gNugTAZrZGC0tXtADT3zdy+euaWU9R3N4ACIHKg8PMeA2m7zhOsGQ46DPEv+3UA7AEErOPdHrbJ+ngkgNWkqXPnRaA6XM9elLpOPfXUE00qvDWCFuSDAbCO6WRo/lMeLpuaRcLvicrU1YuNFUV1FjvidPskHX9f0SDP+H8Dn9/ldGO8Ug0bGaDFac0GwBEwPbr17IN9nXbJkMI2sOVIFczrB1BvmLeLWK8ErErnEja7zCXMkLBeRk3FViMDMZ43VK4Yi8V72THbeK/a6/Ybm6P5SYtP0hxUETclMMBQb+OfYn3M89xGxz+et0a0nmdHt73Rvr9dgEeslb5XwRg1f7J5bt3ta4twH2LrNB+DBFjxc8RPCawwtBNHVWnsFGAE6DFue2GQl3poP7+E4X4Ve5Ybu10nJyaFxUHDk5e6+nlVBFry3Dwugz72FU7uop6WeEIS6sCGl+qXoxouHgAc7PTG4xgA9LPex1JOHy236zFH26LTYK2SnyNgMY+43jFeN+zAwatIWAQnP4Gtep7a2KXGLC+tORiQXGioRPpMlUGewVZ5M0DAMyMmTWuD906mDUAULzHfQx0mkLXKMcZDHKnYrnUf12Ito87GORkUwBIQ4e0zoNoDeKRqGp+peOyS6N5sILldIRD2M/gTwC1ZGEwyC2POvShIDilYVf2gEfFRwTipedAm0X2ojNFSNqjGKW8/E48m4y+iGnLick1JkIwDqckNvauqggK8pgMeXrXU3d4PgEVQrcIa6M/DUHbLKVA2tzIFZCRT1E2XJgj5GOfvVScy69naNf6QeXdHwj1KDuc+Otmvpi3ej2foHtzHYgBsHawbeDJZU+6EuF/XQy0cEMDSGl5PcGcIXXgQCUhqYJ0sExYR/wcu0bnncOS3w9h8wt0WZAtvxz43tNsiuVLidfeLMNfO8BXp/002GFHiAoESUfBTbfBbRPopoBruA3TY3EQsoyr5Jt+fglXoRwZgVMpHiWaPG6cfAGtnWyWcaHkME8/SQfjybrxXeI9X5tkCJZkLAIsYMUIz6pAkNK8elf6aq7n3EfdVBLA8RGMZwCJuD1te1YAV1imBs1sYp6+j50ht0uE8QICFpDOukIP2+/DW+P+aXur7R0z1vH+Fk374xH9d1XZFcB4SjmKBdp62ZVO9no64ILf8JjFPCtIkGTiCURn1gXivVrZaF1sEpHmXnJblaUzBKoQw8D6jcAF5SvsRsIgit80KyD5CvJQ+V8EBc/U+V9Hs2X2D+68TsCbNHsS9CLAwJej/nVXC8YvkGCGd5rVa1nTIMmjHBs4sn3Epc76bOEb9fwAAa536Ig8wxEfdCYhEVbCWVzCuG0Bug5fer9+0sIqfDxudRX7JEDYJFiAi7dSmsWsiYNRNYrfcDnX4FoDFRiMBNaoFZU45NjteMDZ/qhpmgZbc0YBWNlgphGGbpM8ELKsBrGZFgOXgv4B0ZeEHH+j2ecaxEGuk9B0cJ/Ez9UguY+/kUOF6ZQCLKH8AxA+w2TROrup8WwJ68Wri7GCcqM4yvPc9YMn4PTT0FsVc2fsi3roe8sGvkwHeQike9zFggP/0iguZdx4k6RhsGPKmSE1IH2zdoGWpPB9RLhuAUzbNIaoCpFKwQBV4KODpAFqoj51iuPgf0ez87XYANt0wfSZhvYiK7ff/QzZOdyd9wl5x+ti5hIXAwjB7+thb089UbcPCeywbFqp7BKxOc0u4AalP8wprGB27PtpQ62A1wfhOAjjPMK7dPgcsvnusSzfvldGboE7ipGqxXeV4KIl6l5Rn4PXo6Ojo8MqnWHwsbj+J7mXie+HdiIBEvh2noQPWK7ssJaSsBBM/awv7in15wZ/5TdLZfp+bCXL14mbpR8BqenyUB7/eSxpPncZfgKqWdeH9kubD/Xi4ybfyASuwuRrVkXITsS/hXInXqMpG24nGp98BK/7PjN3/KKAgb7CXJe8jcBJdr+RqglVH1o+YdOwvKEVYDCwKuIl6OdkCGWKD8PK5IXyxkdixygIgi5kUDO4rqoaN8mDVksoIy4TGhHTaj4DVdJVQIQdN45tKbZb99JL3kRbptaVGEYwK5cy8AzBMC0UAS+uqYRIgByFrG88w+ZVK8Uk/3y1l83IOF1kfA9YJntx8hkkzjzlILFFxp4dglRr+N5G7qLHgPTzEDWRGWTfOtgiAk8jMohExW9WNfmP0O+kSuII90ZqFednh2kboP0TBvyS6knzAyo7ZgsQtBcV+BSyScq0vZ14YvyICf/Ugky1ZRB73SD5YFBxISsZe5mEZCxw+RQBL14/hBqiFCoaGXcP6/TxhO1nPRuPttj7BIAEWLAvmofuBg8ROWBb0/14DFi8bwz/JjkXuoi+K886C9sRVsR3kEa7VrDcs4RVwcYP5tVEKO1wwIBYHCWlWUfAFAYvWdLsVPGAwU1Zm+6g/cFRxWAtNM1hHEK/bHqkDqewhEyl5YIpl3Db+h2SLI0SDZwExYQSswjFSRoWElCZJi34xjjftIIJFFA9ikXtbDoyvRwpgCSQg5CNYNNivfjwFrLWyY5mEddvBP0Kvgcjsp9d/k7WvBa7Ym1pbOGXhRGIhsTBNTb2hG7bJIAVBQfxF+nSJaamgdNXyRf0qYRexz34HLMjx3KM20zSK4rqCf1N65CLPBKmJfL7m5vPeQGYFoQB271uwo2IUJ4+14bmh3IPbnqYJLgaEUxtWGbsmQcI4l/CgKlCZnzmYCOWB5hsDP2wTHFB8t1NcWgSvwQWsYHDfMPyeQ1HmI98MwaLHr0WpMjyUjMfv5WH+Jt6nlnuUGiSLkv5ggHErKRe9ag0ohA0wGYsbi/++KqZJAhuhbXHVcDEPtBSTBYdWjLwHQAYBsAK9zK5p8+jV5RWT6pT+ncBfOL08v+5yjObQxUBlA20P4GA//8DZPbG1rZAI0vhZhwWSNnZV64M4rBwvYT5ozUKxzZqza3MNrq1wGhpAhnEeeyrEfuQuNo1eG34wvI4RnOI8iCZnQAFLBvcPCSBM2vpaAKp1a3EvNobzFY8FY8TB/3K6WeOUQVQOlLG897BxTTf88zN5jNVS445/ipQJAVaOLWvRVchARayTdKAAawcEfnUAVgpUEA7C5e7Mo88CMEgwgI/WFI1nzdj4u/LuuHckKLzD1p6xdhvSENK/IutxxPC9Ri5g5c+3Ql/sugDpUwAUkhzgJSpsNA4avzM+A7kmwaeAHWOjYAbB1TkA3v+AFSQayxe8luhytxvdVL+HMDfE4pdtHAtuw9qrzXIRQOUbdM652V9o0/nSxsI7Lf49/i3vM6GfjL7xbvnPs3b9z3QTnBnjsogzwzvkp+diR7BKCP+YC0BAG2SwAGt8x3QErBrACgZVG/OnuSYSi6SkQKU9D3DaAQTl8yMknGOrbKt/4x/FuWLP5yL4unCSqGJQfEGhjOSdG4dVok6BXsT7wXtv1/8wPGku/TVFSCjp64CDmEAWhgqAmftAio2HI+rxgALWJ0L+4BfXGLDwFP6ic8QDoAdWAIvN4mycz8K5TYgBhHoUbehlg3aZRsQweXrxJg5XusILimfJbVitEjYseLqV1nGbAIFNMhiAdXEtgMWGj0ACxzybGInJo+tfRf02YPk7Cyx9P/xirClsQlTBKTM/4keDj60KwIp9Z0nMUAxBaePX/Jy93+2mihmekexetAV/xyEAnxuVh+I8DSBgfUwSFhztawxY3MsvwW7qgDWvNIttqIMq4qmJHuRXvAdsIGluYYmwhkVxdVFQI8Yz/X8ELO5b44I1Vtz8nl+5w+btxhkCgGFTyHuFsvBpqIOcPRw6+YBVTWl63rM+gw0UKQqGVWxxXs5tzmmYVDBDifPX6lkgaQ0SYBlI/Vkwut/Cd9bShgVTA5KV+LH8lNx6HhuZhcdJAk1LWiZ9bVq6gMrToLB5YGVANclP0ckm6sO2QTKrKtCwkQYasLqnUfmUPG2YE2wj3429KatwqdZRjN1KW3Y8XX2Ala4bgJJx5nn/kMKoCkUUPTUJ5twONxt43SN7bl8DVgSI4eH3BS6qf4cJdC29hAaa79R47L1d6wDWAQyefkK8pDisnkbqhk0RF3U3hnY8VWx+v6+FRBUsDVqohtbfg9hYtFn6FbDg41fVnCoAK0b2s1EpCLHXWWnJkoh9My/dr536Aau0BJZR3Rm7W9PCcTgY3Q7s0tbYxwaIwG9dYEkQrcy3qei8lnFYdh9XJawR7Tp2sIz6xn5tymlTBBqDqgoSyXwgMJAGLvbSTfFbSKEYmOOG6mcJqyrAivUMKWUWSB7v47pp3UO91hKwBDJVhxvIcB/zMoMnc2rmEP/YDHtJ4xyASHfy936OIqh8FxWM/L21jHSn5L0i3U09bGea4JqFbMyZGiDqf1ftgFVD4mgcL6EaAE2Mbs8Gq7HI1tDRa0iVa96RMqIUeiQDlqSMwFuGipwcbgKFeg4ggkp5fhj28wGrd0nI9Mm8x6rSpP0AWgvt/XRjtP/1O2AhUSFZOUgsUB0nBZFeUswQLBqKrf7xysYhSXhR7trIRd0DwOL6wZt3Gbzq00YQR55XmRw4ncZEUFsfzy9EquQO/O4AhXNcZbM6BNYGl9qeo8y7Ns2RDFhxDJQ/mzvE6nEP/6trM8Zn3rTrYi9zep/MSHe+IwDF1EEhCOib8XrXClwBtHA8zB+ao+9Qo0Dz3+8qIe/wqIvt037+fGJb6sUrFm5tOGBN4zFc+QSRxIr4pSgEVLI9p5chqx5WyTMuYQwLDYtI1ilbzis4/iVAJYvjSn9TgU5ivsz9/iQno7MyZEpkCnUgHod0n3gP3QJWcwAAy/r7OpIDa8UA9qPxM3VJVxxEhJUoHqpTLmEskoG9ke/wTKm/WOdY4/wT00Ucl5MJNGbsd421z/mwZDf6oAzdkOgNDQ2dviZ8WMMjfxQ8lk+bunrqymmDqI9hWXE0ELT1hMAvSkZGBgcg+IN+aLsWJf8vXO5rjHJfipxezGNh8BP7JmKEkBiKcLrH2oaUjYrjOJIlrGU7xDjMVK+S5OQ6QUDjJSYP3njFPxFTtz0HsHjxPFWKH8kwBcK6xos0R3iQ14XcT70AXbePASu1Y+1wT+Fe+N175ikMvO54KRP7lU+il2Ynahc1CoMhBuseqIXp6X3HvJ+iBOylgJbLe3TK1jfh5ZwvUDWHheQq44siCuQkJMnW1cOOoKXvkw8HYV4VVXOsz74GLBKWUXFUSg07Xp002ppPUqM0/1w7pZfJViPH/5pwFg+IvoP+6oyNEn8XjKNNHX6sGWptRhtr3wJWAIvhE78evHM3x8/0JCVnaOhX5a2k7P5K5Zy0PLsq5JIiQ+R5r4pQEFmMhwWwQuUiNqzIZojMqCRtLxZQBcnMlxQ2ZeWjdB3xJrmUmakaNhLKZIBWlMl4jrpVCalO3I+ARTgH1Z1Vt5EKMTF+qQ6w4t2u9bWl9jzvzaOXielYAMW0G7+hkXk1hOvUCViYUyjMAWA1WUfwug0GYOkzJB3/XigCsZs+a1cLAxgStBpShB6wP7G/0lpzY29B557zar7k8tV5gnLdWASV6/pmeJzNUaYcORHIXi49VxWkcZ1Y/BPyQBWwwAvlaun+TMAKgOYesw9GEC17/xiH2VwO2E+xIfsNsKCFobQZY0RyAezrUgk1VtJ67B7mHHTm8gArzv+UsUVQn2De17M97z+pa7xhLKoe/nBbJRxfaJiEOAgqYVT7sBfZdx+lj8DccFyNquGxtMDQsKACrkkRjCQ3zEjO2hHMXnhz04Vvq62Qqm8wagmS2Q/g0HBhx4WVpwpCY8JYAbxmVAWzVTneJwj4i/emdza4AUhzX75qSFvguhju4VAqY/eLFMt4suiv1QbS72FT61Oj++2sD1env1AHAHAfOkQ4PHgOnhg/Awh08hLGsfAM7Dv/pgIUJDXn17vsetzil3vJVcIGrA4a6wCVqhcX1ZIXNF2GKytcq2rwVeXnUbNdPaV8RkrXB6nO11gQkzFwMtnKkSK7Hqmj6tpqBBmqWjNqhgommKT0ZJFFJbDCGyRa5RKqICffe1JwSSv4OmCp346gteSVfrSRUA/KFICdtqRZJAiXsCYnR88/OzyXY/oFsAyUP8mzYm4ohw+wVik9xE1NiX2oaFCR7X7+ytoU9DSAGBJ4kUKqOAZUxs0l8M/y96pBK8bjUd+T67EmKNmGEb7U/Af66bUBrBjiMHKrq4W0HdQHDJ+p5JCKaiaUNgJIClCEUIbjMhclUcWI/CFi9yv8X5uiG/WQfugj6vpcgwfsIDAeN3Oxgp7ZNqdUFWxJFUyAL90wGE6J4mbRRS74PDWzgRpdIgqee4kHxYKDJBWLY0n5fgscRQJnjTD/EQAqjGW6lIMCKQUvGyozzwEJC6N7XsVtjRebIvxZ4rRCRYOzKz7vKkwbsmHCoAod0bwKgBjQlpFCI1DFA7XHgBUlnjdbH/8TQOu7Fubwk6G/dV1KhSeExOvPjEia433D8NXxsx1jmewh/y0bkIdsi5OJ/zJubVHDshDKRqHHxQENsy28u2R3AkiK8F/F05PseQyxrr62Gp1BRdxWE3gTOy1W/Z1EZ2x6LLwioQ6wkwJcU8F7lrdIuU9tVjbW/kPqy/18X9Ko8tjSXMte5RJyvaCmPcqceBbBzO5NW38jzF2pdSFGhgh2Uyb9ElqDNEX8lSiQmHsHsKdfseBgjSeLKkZzSzyfAW1zzrncUd9Jo4lj1vfLgni83z2j206HvtmA3A39Y9vL8KilQJVer8eAdUywKb0daQc1TaBF6EMCbmX7Pl7987OpgTfQd0i8/ufw/+NyNxC8RVAkA1ozDloYOwnuTL05q20mfs9KGMWQyqIDrKY9ux16ZE6pQqqgSNcs1mVBqmAnu1X0Chp/Uzy5CkR2f3g+GPNz2B4WxHixe/MFry8bQ4Y3iWuJ/RVa4YIPv1YJK5V4kXZYE9ZcMh5/mVp/cUyrMTTECjr6f7wGFC7w+DPPDlYPwY2mazbMztnyfFdU6KxxpmNWIRIR8gWiymuXreJ5/HyRcdPicwsVph9nPgSMcIXFcRRZBwgDZHs02GujY3dCXx4/Uzdg5bAmzEf10JgdLouf8Z/XcR1vx6pJGkslspM2bDjb+voGfYZg1TtOPvnkkcJhFAIFUmWaXsVGNi02AGkSSCllFzxGaTL7G7bg6EtsjgRuoh5GNaqAKvg5hR8EBtGl2EJ5eafOGbsl3mMRWwrjohCpVMP0GvG6npPY4rN4PYuqShGE7fuPOWEgjUPiLvLTmG/sNkgUABPgw3wUoEiuhV6GWodkE4j3HomIpHBoksv2S9Umit5CHkmfKkfP3/UZKlcTmjDvgIMdi6R9xkQQKbZQHXistQxP9LsVHE0fNOyO2LmY+5LDVgT+z1KNh5Ac2WHpl4Ou4FqLkjiazXsBO9YAjf02oyrskqoLABaxSxUAVvwOTA4XGqjsUtoOBnlr95gEdgGxWyX6xAv5Jkts/qSpfi+j/oU+b4pgVephaLItAO/POdVYTHJpE3AJmE2brQWvCMZXAG7CjOBIZ2wucgFnNm35NYyn1sfdePJYcOLMZpFjoOQaeWAVY32oAoOKxoOF0sNBqcV72ki3cWCbwE5U1CAeQQugZUG6oXmuSb8Z15PqyNhwZ0ejbJF7I7QEsGGxAuqqp4hXk4BSVEUcIZy+LOQAiHhdo0r4vHupfjhZA4Ef4ADnE3MrGyTrgmo9lM0CZGEZxcWPFAPLA+tiZuPFr5sxIJo0iYSwCA4rG+P39ziPP/Nm/d5AkGp8Bv4cvupgttTOZBjfDnAR8GzXe2DSGHLjfKSAobWDF5Z1HFLRWkSmY9inaAbzR8kvxq31fPAwOfmC1zPnxMw1rDAFBxnrYt4rUnu9gFfMcfSueO0yB0E4HOcBV54hRVBif3mARS3BUDH5+a4AK/kedQtNevsPefEU2Gmg85+WSnON/f+3DIx+YmRk5GTzNKwHyODUWr9+/ZnG/PDTVqrr3TamL1t7URKVYr2s3yu7IgzkwUeRlwBJHq6nOwh0AI1JyoMhHZC/xanlxP4TAB0Lecm/wzt0snBn77Jg0QiQRR4q/OGctKg7c4GqNm2AIv8XrzjAGlXBshIFwCpeb4Fu1rW5rvOp76HQQTwdi6hc8JHZpv8XwJHr0FfkSSfXkuuw+SIQrTgz2qD3yvLmS5cJF4ErPQBal68kWPe08Q9wLR1CbFoH2RZ/J0kcm5fWBV4zaiZi+wLkWBMAFXOKGiT7X3xWvIeiuE8wBy6Jtdvm3+F6y0hcebFZvLB/uddxJ/PIGGiMAZAA5Bk3MWcaN7mmJNTb2HdhYlBxDa7veauNppH5kfUQr1k2yRvTiEvYS7LtRgBkznMAiyjxXwEMThreCBDssNqCZ0Xg6Ra0kIAMXK6wvr8P2KipUARgRGiCvT9kQPYg+Yj28/esTQmkQlDonAHeVwGzSqLpI2ixECg42TB1h8rCiL6qiJLd3gFIyf7zXYjOGsYCGh8mYFX0gSKteZGM/yJNhPeM9hyNAhdNsU+UjhdS5LoCSpEGxrYThsE1ctqzACvME9xrUdWAFlVoijQ02yWpHsM25pvmFTYQxuS0ND/vsybZwgBqn5tkwxkAniPJspYiFKau2lg/QbUbDiPsigFkQ4vVkS6WOWAnJeWQbJDQ45qIcxHAfLN9/kokTHjjORh5N6nnesJhNLa80IOgOl9tfTyCtM94ssatsWtNA1gkONt9P8AzIkg1a37KzOfMGVvPYZ+IOQWnAyqvxl+QVvinoIihgrO9323l5zdXxLZwbAQuk9x+DMoXa/fbdWYFQid1aMEG9ryN82+oikO/lab+rEZXTNqOc07ZAx+72R7aNxGr2cwuXT3SbFdHuRH7BJ4k4lG6KYlEoOWkeWKoDcfiRGxX20lLfkcdoUny6IZyWTFfXD9eS+9pY3xcmw0GoHRT1YXfie/CKA1VCXYivKz/R8UL1CqoVHityBGtK2AxHSf3zGFERDll/WF2QDqx96cAcFRaHDeEycDGSS0BJGaeS3r/ncBc4IvZgWsCdGXmNz0gUfeQhL0yz3WkAgH0Hv/1rIPio5g1sE3a2P/CJMGLp1APLfwlZ6+UflH1mqR65kf3VjKU6AQCMGFZMPXslIqDPI9JQWV0dHTYJKS3ou5RTn7j8Im3w2NlPz9tYPaMgdMT9vO99v4lOOPxOsK7lUpwtIqpYrNJ2tDz2VRskJdts/AgtaH6oegk1+z2/nv5/aKl3um3PBFi/YVUJfGx4QAW1sXMGy5+3bKtk+wxak3kg3kVYEvL+h/OlpcYd1jPhJfkV75eWxLLzCDjip9/TgzWOuxWgCUpPl49en0HqW1d5eNLT6iyCyd+r+vAU1zPBRufvbXSRV7u2oy3m7nWNaO7Xa3TAs8ppFBbqfqy19I4cTqUXQOak27uU9enz8Ndi1WBaIwzjOPrQgqiVTa2HMApG5V/XE1Alb+hHkg2U/q3aDs4+jqyX9pwRdZFeZCov9hEzrh7MvYBradwTBpvFdS89G9HseDo6+jr6OvIf/0vj9NbYMKQ+00AAAAASUVORK5CYII=);\n        }\n        .companies ul li.modstore a {\n            background-image: url(data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QMxaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkM1OTk4RURBQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkM1OTk4RURCQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RjlCOUZEN0ZCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6RjlCOUZEODBCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAACAgICAgICAgICAwIC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);\n        }\n\n        .companies ul li.modxextras a {\n            background-image: url(data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QMxaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkM1OTk4RUUyQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkM1OTk4RUUzQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QzU5OThFRTBCM0I1MTFFNUE3N0ZGOUU5N0U2MzUzMTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QzU5OThFRTFCM0I1MTFFNUE3N0ZGOUU5N0U2MzUzMTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAACAgICAgICAgICAwIC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);\n        }\n\n        .disclaimer {\n            max-width: 960px;\n            display: block;\n            margin: 0 auto;\n            text-align: center;\n            color: #333;\n            font-size: .6em;\n        }\n\n        @media (min-width: 768px) and (max-width: 991px)  {\n            .container {\n                padding: 1em;\n                border: 0;\n                border-radius: 0;\n            }\n        }\n\n        @media (max-width: 767px)  {\n            body {\n                font-size: 16px;\n            }\n            .container {\n                padding: 1em;\n                margin: 0 0 1em;\n                border: 0;\n                border-radius: 0;\n            }\n            .container > section, .container > aside {\n                float: none;\n                width: 100%;\n            }\n            .container aside {\n                border: 0;\n                padding: 0;\n            }\n            .logo {\n                width: 100%;\n                height: 48px;\n            }\n            h1 {\n                font-size: 24px;\n            }\n            h2 {\n                font-size: 19px;\n            }\n            h3 {\n                font-size: 16px;\n            }\n            .companys ul li {\n                display: block;\n            }\n        }\n\n    </style>\n</head>\n<body>\n\n<a href="http://www.modx.com" title="Modx" class="logo" target="_blank">MODX</a>\n\n<div class="container">\n    <section>\n        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n        [[*content]]\n    </section>\n    <aside>\n        <a href="[[++manager_url]]" title="Your MODX manager" class="cta-button">Go to the&nbsp;manager</a>\n        <h3>Learn more about&nbsp;MODX</h3>\n        <ul>\n            <li><a href="https://rtfm.modx.com/revolution/2.x/">Official&nbsp;Documentation</a></li>\n            <li><a href="https://rtfm.modx.com/revolution/2.x/administering-your-site/using-friendly-urls">Using Friendly&nbsp;URLs</a></li>\n            <li><a href="https://rtfm.modx.com/revolution/2.x/developing-in-modx/advanced-development/package-management/">Package&nbsp;Management</a></li>\n            <li><a href="http://modx.com/blog/">Official MODX&nbsp;Blog</a></li>\n            <li><a href="http://www.discovermodx.com/">Discover&nbsp;MODX</a></li>\n            <li><a href="https://modx.today">MODX.today</a></li>\n        </ul>\n\n        <h3>Get help!</h3>\n        <ul>\n            <li><a href="http://forums.modx.com/">Official MODX&nbsp;Forums</a></li>\n            <li><a href="https://modx.org/">MODX on&nbsp;Slack</a></li>\n            <li><a href="https://twitter.com/modx">MODX on&nbsp;Twitter</a></li>\n            <li><a href="https://www.facebook.com/modxcms">MODX on&nbsp;Facebook</a></li>\n            <li><a href="http://modx.com/professionals/">Find a MODX&nbsp;Professional</a></li>\n        </ul>\n    </aside>\n    <div class="companies">\n        <h3>Extend MODX with&nbsp;Extras</h3>\n        <ul>\n            <li class="modxextras"><a href="http://modx.com/extras/" title="MODX extras" target="_blank">MODX&nbsp;extras</a></li>\n            <li class="modmore"><a href="https://www.modmore.com/extras/" title="modmore.com" target="_blank">modmore.com</a></li>\n            <li class="modstore"><a href="https://modstore.pro/" title="modstore.pro" target="_blank">modstore.pro</a></li>\n            <li class="extrasio"><a href="https://extras.io/extras/" title="Extras.io" target="_blank">Extras.io</a></li>\n        </ul>\n    </div>\n</div>\n<footer class="disclaimer">\n    <p>&copy; 2005-2016 the <a href="http://www.modx.com/" target="_blank">MODX</a> Content Management Framework (CMF) project. All rights reserved. MODX is licensed under the GNU&nbsp;GPL.</p>\n</footer>\n\n<script>\n    // Load the Open Sans font\n    try {\n        document.addEventListener("DOMContentLoaded", function() { // prevent a Flash Of Unstyled Text (FOUT)\n            document.querySelector(''head'').innerHTML += "<link href=''https://fonts.googleapis.com/css?family=Open+Sans:400,700'' rel=''stylesheet'' type=''text/css''>";\n            document.body.classList.add(''loaded'');\n        });\n    } catch (e) { }\n\n    // Shuffle the vendors to prevent favoritism of one vendor over the other\n    // with thanks to http://james.padolsey.com/javascript/shuffling-the-dom/\n    function shuffle(elems) {\n        var allElems = (function(){\n            var ret = [], l = elems.length;\n            while (l--) {\n                if (elems[l].className !== ''modxextras'') {\n                    ret[ret.length] = elems[l];\n                }\n            }\n            return ret;\n        })();\n\n        var shuffled = (function(){\n            var l = allElems.length, ret = [];\n            while (l--) {\n                var random = Math.floor(Math.random() * allElems.length),\n                        randEl = allElems[random].cloneNode(true);\n                allElems.splice(random, 1);\n                ret[ret.length] = randEl;\n            }\n            return ret;\n        })(), l = elems.length;\n\n        // To make sure the MODX logo stays #1, we lower the count by one here (shuffling 3 instead of 4 items)\n        // and refer to elems[l+1] in the loop below. This matches because allElems was also filtered to not include\n        // the official MODX logo.\n        l--;\n        while (l--) {\n            elems[l+1].parentNode.insertBefore(shuffled[l], elems[l+1].nextSibling);\n            elems[l+1].parentNode.removeChild(elems[l+1]);\n        }\n    }\n    shuffle(document.querySelectorAll(''.companies li''));\n</script>\n\n</body>\n</html>\n', 0, NULL, 0, '');
INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(3, 1, 0, 'СНТК - Новое мероприятие', 'Шаблон для создания нового мероприятия СНТК', 0, 0, '', 0, '<!DOCTYPE HTML>\n<html>\n<head>\n<title>СНТК 2017</title>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1.0">\n<link rel="stylesheet" href="css/style.css">\n<link rel="stylesheet" href="css/bootstrap.css">\n<link rel="stylesheet" href="css/slick-theme.css">\n<link rel="stylesheet" href="css/slick.css">\n<link rel="stylesheet" href="css/snt.css">\n<link rel="stylesheet" href="css/font-awesome.min.css">\n<meta name="keywords" content="">\n<meta name="description" content="">\n</head>\n<body>\n    <!----ХЭДЕР ПОДГРУЖАЕТСЯ ЧАНКОМ "Header"------>\n            [[$Header]]\n        <section class="sntk_201">\n            <div class="col-md-8 col-sm-8 col-md-offset-2  col-sm-offset-2 text-center name_banner">\n                <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n            </div>\n    </section>\n    <main>\n        <div class="container">\n            <div class="row">\n                <div class="col-md-3 col-sm-3 col-xs-12 navigate_left">\n                    <ul>\n                        [[!getPage?\n                                &element=`getResources`\n                                &parents=`2` \n                                &tpl=`sntkTpl` \n                                &sortby=`id` \n                                &sortdir=`ASC`\n                                &limit=`10`\n                                &includeTVs=`1`]]\n                    </ul>\n                </div>\n	[[*content]]	\n        </div>\n    </main>\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    <div class="container">\n            <div class="row">\n                <div class="col-md-12 form">\n                        <form method="post" action="">\n                            <div class="row">\n                                <div class="col-md-11 col-md-offset-1 col-sm-offset-1">\n                                    <h4>ПОЛУЧАЙТЕ НОВОСТИ НА ПОЧТУ</h4>\n                                </div>\n                                <div class="col-md-7 col-sm-7 col-md-offset-1 col-sm-offset-1">\n                                    <input type="text" name="mail" placeholder="ВВЕДИТЕ ВАШ E-MAIL">\n                                </div>\n                                <div class="col-md-3 col-sm-3">\n                                    <input type="submit" name="add" value="ПОДПИСАТЬСЯ">\n                                </div>\n                            </div>\n                        </form>\n                    </div>\n            </div>\n    </div>\n\n    <footer>\n            <div class="container footer">\n                <div class="row">\n                <div class="col-md-9">\n                    <h4>Студенческое научно-техническое общество <br><br><br><br> Тел. +7 495 223-05-23 <br>доб. 1155</h4>    \n                </div>\n                <div class="col-md-3">\n                    <ul>\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\n                    </ul>    \n                </div>\n                </div>\n                <div class="row">\n                <div class="col-md-12 text-center">\n                    <h4>© Московский политех 2017</h4>\n                </div>\n            </div>\n        </div>\n    </footer>\n   \n <script src="js/jquery-3.1.1.js" type="text/javascript"></script>  \n <script src="js/slick.js" type="text/javascript"></script>   \n <script src="js/jquery.catslider.js" type="text/javascript"></script>     \n <script src="js/slider.js" type="text/javascript"></script>   \n <script src="js/slick.min.js" type="text/javascript"></script>   \n<script src="js/bootstrap.min.js" type="text/javascript"></script>\n<script src="js/bootstrap.js" type="text/javascript"></script>\n</body>\n</html>', 0, 'a:0:{}', 0, ''),
(4, 1, 0, 'Новая новость', 'Шаблон для новой новости', 0, 0, '', 0, '<!DOCTYPE HTML>\n<html>\n<head>\n<title>Новости</title>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1.0">\n<link rel="stylesheet" href="css/style.css">\n<link rel="stylesheet" href="css/bootstrap.css">\n<link rel="stylesheet" href="css/slick-theme.css">\n<link rel="stylesheet" href="css/slick.css">\n<link rel="stylesheet" href="css/snt.css">\n<link rel="stylesheet" href="css/font-awesome.min.css">\n<meta name="keywords" content="">\n<meta name="description" content="">\n</head>\n<body>\n     <!----ХЭДЕР ПОДГРУЖАЕТСЯ ЧАНКОМ "Header"------>\n            [[$Header]]\n        <main>\n            <div class="container">\n                <div class="col-md-12  store_zagolovok">\n                    <span style="color:grey;">[[*publishedon]]</span>\n                    <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1><hr>\n                </div>\n                <div class="col-md-12 full_news">\n                    <img src="[[*image:phpthumbof]]">\n                    <p>\n                       [[*content]]\n                    </p>\n                </div>\n                \n                \n            </div>\n            \n            \n                \n        </main>\n    <footer>\n            <div class="container footer">\n                <div class="row">\n                <div class="col-md-9">\n                    <h4>Студенческое научно-техническое общество <br><br><br><br> Тел. +7 495 223-05-23 <br>доб. 1155</h4>    \n                </div>\n                <div class="col-md-3">\n                    <ul>\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\n                    </ul>    \n                </div>\n                </div>\n                <div class="row">\n                <div class="col-md-12 text-center">\n                    <h4>© Московский политех 2017</h4>\n                </div>\n            </div>\n        </div>\n    </footer>\n   \n <script src="js/jquery-3.1.1.js" type="text/javascript"></script>  \n <script src="js/slick.js" type="text/javascript"></script>   \n <script src="js/jquery.catslider.js" type="text/javascript"></script>     \n <script src="js/slider.js" type="text/javascript"></script>   \n <script src="js/slick.min.js" type="text/javascript"></script>   \n<script src="js/bootstrap.min.js" type="text/javascript"></script>\n<script src="js/bootstrap.js" type="text/javascript"></script>\n</body>\n</html>', 0, 'a:0:{}', 0, ''),
(5, 1, 0, 'Новый проект', 'Шаблон для проекта ', 0, 0, '', 0, '<!DOCTYPE HTML>\n<html>\n<head>\n<title>[[*pagetitle]]</title>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1.0">\n<link rel="stylesheet" href="css/style.css">\n<link rel="stylesheet" href="css/bootstrap.css">\n<link rel="stylesheet" href="css/slick-theme.css">\n<link rel="stylesheet" href="css/slick.css">\n<link rel="stylesheet" href="css/snt.css">\n<link rel="stylesheet" href="css/font-awesome.min.css">\n<meta name="keywords" content="">\n<meta name="description" content="">\n</head>\n<body>\n     <!----ХЭДЕР ПОДГРУЖАЕТСЯ ЧАНКОМ "Header"------>\n            [[$Header]]\n        <main>\n            <div class="container">\n                <div class="col-md-12  store_zagolovok">\n                    <span style="color:grey;">[[*publishedon]]</span>\n                    <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1><hr>\n                </div>\n                <div class="col-md-12 full_news">\n                    <img src="[[*image:phpthumbof]]">\n                    <p>\n                       [[*content]]\n                    </p>\n                </div>\n                \n                  <div class="container">\n            <div class="row">\n             <h2>Регистрация на проект </h2> <hr>\n                <div class="col-md-12 form">\n                    <form method="post" action="">\n                         <div class="row">\n                             <div class="col-md-4 col-sm-4">\n                                <input type="text" name="name" placeholder="Введите имя">\n                             </div>\n                             <div class="col-md-4 col-sm-4">\n                                 <input type="text" name="family" placeholder="Введите фамилию">\n                             </div>\n                             <div class="col-md-4 col-sm-4">\n                                <input type="text" name="otch" placeholder="Введите отчество">\n                             </div>\n                        </div>\n                        <div class="row form_ots">\n                             <div class="col-md-6 col-sm-6">\n                                <input type="text" name="number" placeholder="Введите номер группы">\n                             </div>\n                             <div class="col-md-6 col-sm-6">\n                                 <input type="text" name="task" placeholder="[[*pagetitle]]">     \n                             </div>\n                            <div class="col-md-12 form_ots">\n                                <input type="submit" name="add" value="Зарегистрироваться">\n                            </div>\n                            </div>\n                    </form>\n                </div>\n            </div>\n        </div>\n            </div>\n            \n            \n                \n        </main>\n    <footer>\n            <div class="container footer">\n                <div class="row">\n                <div class="col-md-9">\n                    <h4>Студенческое научно-техническое общество <br><br><br><br> Тел. +7 495 223-05-23 <br>доб. 1155</h4>    \n                </div>\n                <div class="col-md-3">\n                    <ul>\n                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>\n                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>\n                    </ul>    \n                </div>\n                </div>\n                <div class="row">\n                <div class="col-md-12 text-center">\n                    <h4>© Московский политех 2017</h4>\n                </div>\n            </div>\n        </div>\n    </footer>\n   \n <script src="js/jquery-3.1.1.js" type="text/javascript"></script>  \n <script src="js/slick.js" type="text/javascript"></script>   \n <script src="js/jquery.catslider.js" type="text/javascript"></script>     \n <script src="js/slider.js" type="text/javascript"></script>   \n <script src="js/slick.min.js" type="text/javascript"></script>   \n<script src="js/bootstrap.min.js" type="text/javascript"></script>\n<script src="js/bootstrap.js" type="text/javascript"></script>\n</body>\n</html>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_site_tmplvars`
--

INSERT INTO `modx_site_tmplvars` (`id`, `source`, `property_preprocess`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `default_text`, `properties`, `input_properties`, `output_properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'image', 'image', '', '', 0, 0, 0, '', 0, 'default', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_site_tmplvar_contentvalues`
--

INSERT INTO `modx_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 1, 6, 'img/placehold/logo_minpromtorg.png'),
(2, 1, 7, 'img/placehold/rosspecmash_rus.png'),
(3, 1, 8, 'img/placehold/MANF_logo.png'),
(4, 1, 9, 'img/placehold/20170413_misis.png'),
(5, 1, 17, 'img/placehold/logo-conf.jpg'),
(6, 1, 18, 'img/placehold/MINOBR_COLOR.jpg'),
(7, 1, 19, 'img/placehold/Y214TX9Oams.jpg'),
(8, 1, 20, 'img/placehold/sm_users_img-24844.jpg'),
(9, 1, 21, 'img/placehold/Y214TX9Oams.jpg'),
(10, 1, 22, 'img/placehold/sm_users_img-24844.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_site_tmplvar_templates`
--

INSERT INTO `modx_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 5, 0),
(1, 3, 0),
(1, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnTempFormDelete', 1, 'Templates'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnEmptyTrash', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnBeforeWebLogin', 3, 'Security'),
('OnWebAuthentication', 3, 'Security'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnPageUnauthorized', 1, 'Security'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserNotFound', 1, 'Users'),
('OnBeforeUserActivate', 1, 'Users'),
('OnUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserSave', 1, 'Users'),
('OnUserRemove', 1, 'Users'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnWebPagePrerender', 5, 'System'),
('OnBeforeCacheUpdate', 4, 'System'),
('OnCacheUpdate', 4, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnSiteRefresh', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageAfterRender', 2, 'System'),
('OnWebPageInit', 5, 'System'),
('OnLoadWebDocument', 5, 'System'),
('OnParseDocument', 5, 'System'),
('OnWebPageComplete', 5, 'System'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnPageNotFound', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnMODXInit', 5, 'System'),
('OnElementNotFound', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnInitCulture', 1, 'Internationalization'),
('OnCategorySave', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnChunkSave', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnContextSave', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnPluginSave', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources');

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('base_help_url', '//docs.modx.com/display/revolution20/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_disabled', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2017-05-02 09:31:58'),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'asdmin-parol@yandex.ru', 'textfield', 'core', 'authentication', '2017-05-02 09:31:58'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_page', '1', 'textfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'http://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>"~:`@\\?\\[\\]\\{\\}\\|\\^''\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_urls_strict', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_frozen_parent_uris', '0', 'combo-boolean', 'core', 'furls', NULL),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2017-05-02 09:31:58'),
('manager_language', 'ru', 'modx-combo-language', 'core', 'language', '2017-05-02 09:31:58'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('password_generated_length', '8', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'http', 'textfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('send_poweredby_header', '0', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'textfield', 'core', 'site', NULL),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', NULL),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '1', 'textfield', 'core', 'site', NULL),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf,md,ttf,woff,eot', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '2097152', 'textfield', 'core', 'file', '2017-05-02 09:31:58'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('use_alias_path', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2017-05-02 09:31:58'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2017-05-02 09:32:51'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.25.html ', 'textfield', 'core', 'manager', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('settings_version', '2.5.7-pl', 'textfield', 'core', 'system', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('phpthumbof.cache_path', '', 'textfield', 'phpthumbof', 'paths', NULL),
('phpthumbof.cache_url', '', 'textfield', 'phpthumbof', 'paths', NULL),
('phpthumbof.hash_thumbnail_names', '', 'combo-boolean', 'phpthumbof', 'general', NULL),
('phpthumbof.postfix_property_hash', '1', 'combo-boolean', 'phpthumbof', 'general', NULL),
('phpthumbof.use_s3', '', 'combo-boolean', 'phpthumbof', 's3', NULL),
('phpthumbof.s3_key', '', 'textfield', 'phpthumbof', 's3', NULL),
('phpthumbof.s3_secret_key', '', 'textfield', 'phpthumbof', 's3', NULL),
('phpthumbof.s3_bucket', '', 'textfield', 'phpthumbof', 's3', NULL),
('phpthumbof.s3_host_alias', '', 'textfield', 'phpthumbof', 's3', NULL),
('phpthumbof.s3_path', 'phpthumbof/', 'textfield', 'phpthumbof', 's3', NULL),
('phpthumbof.s3_cache_time', '24', 'textfield', 'phpthumbof', 's3', NULL),
('phpthumbof.s3_headers_check', '', 'combo-boolean', 'phpthumbof', 's3', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(255) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('getpage-1.2.4-pl', '2017-05-07 02:51:22', '2017-05-07 12:53:33', '2017-05-07 14:53:33', 0, 1, 1, 0, 'getpage-1.2.4-pl.transport.zip', NULL, 'a:36:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:393:"--------------------\nSnippet: getPage\n--------------------\nVersion: 1.2.4-pl\nReleased: March 24, 2014\nSince: March 19, 2010\nAuthor: Jason Coward <jason@modx.com>\n\nA generic wrapper snippet for returning paged results and navigation from snippets that return limitable collections. This release requires MODX Revolution 2.1+.\n\nOfficial Documentation:\nhttp://rtfm.modx.com/display/ADDON/getPage\n";s:9:"changelog";s:1869:"Changelog for getPage.\n\ngetPage 1.2.4-pl (March 24, 2014)\n====================================\n- [#19] Add scriptProperties to cachePageKey signature\n- [#24] Cache total results number into correct variable name\n\ngetPage 1.2.3-pl (June 20, 2012)\n====================================\n- [#15] Add ability to specify pageNavScheme for navigation links\n- [#14] Avoid adding pageVarKey to query string when page = 1\n- [#12] Fix cacheKey when multi-dimensional arrays used in $_REQUEST\n\ngetPage 1.2.2-pl (December 9, 2011)\n====================================\n- Check $_GET before $_REQUEST for pageVarKey and limit overrides\n- [#6] Add pageOneLimit to allow different limit on first results page\n\ngetPage 1.2.1-pl (September 15, 2011)\n====================================\n- Remove inadvertent debugging statement in snippet code\n\ngetPage 1.2.0-pl (September 14, 2011)\n====================================\n- [#5] Add pageNavOuterTpl for layout control of page nav elements\n- Allow limit of 0 in $_REQUEST to bypass paging\n- Allow empty nav tpl parameters\n- Allow unlimited page listing with &pageLimit=`0`\n\ngetPage 1.1.0-pl (March 27, 2011)\n====================================\n- Change default cacheKey property to use ''resource'' (for MODX 2.1+)\n\ngetPage 1.0.0-pl (August 18, 2010)\n====================================\n- Add support for snippets that send output toPlaceholder\n- Add firstItem and lastItem properties/placeholders\n- Add pageActiveTpl to differentiate current page link\n\ngetPage 1.0.0-rc1 (June 29, 2010)\n====================================\n- Add per page caching capabilities\n- Add changelog, license, and readme\n\ngetPage 1.0.0-beta2 (May 28, 2010)\n====================================\n- Preserve additional query string parameters when creating paging navigation\n\ngetPage 1.0.0-beta1 (March 19, 2010)\n====================================\n- Initial release\n";s:9:"signature";s:16:"getpage-1.2.4-pl";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:20:"Продолжить";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:1749:"function (va){\n        var r;\n        var g = Ext.getCmp(''modx-package-grid'');\n        if (!g) return false;\n        \n        if (va.signature != undefined && va.signature != '''') {\n            r = {signature: va.signature};\n        } else {\n            r = g.menu.record.data ? g.menu.record.data : g.menu.record;\n        }\n		var topic = ''/workspace/package/install/''+r.signature+''/'';\n        g.loadConsole(Ext.getBody(),topic);\n\n		va = va || {};\n        Ext.apply(va,{\n            action: ''workspace/packages/install''\n            ,signature: r.signature\n            ,register: ''mgr''\n            ,topic: topic\n        });\n\n        MODx.Ajax.request({\n            url: MODx.config.connector_url\n            ,params: va\n            ,listeners: {\n                ''success'': {fn:function() {\n                    var bc = Ext.getCmp(''packages-breadcrumbs'');\n                    var trail= bc.data.trail;\n                    trail.pop();\n\n                    if (trail.length > 1) {\n                        last = trail[trail.length - 1];\n\n                        if (last != undefined && last.rec != undefined) {\n                            bc.data.trail.pop();\n                            bc.data.trail.shift();\n                            bc.updateDetail(bc.data);\n\n                            var grid = Ext.getCmp(''modx-package-grid'');\n                            grid.install(last.rec);\n                            return;\n                        }\n                    }\n\n                    this.activate();\n					Ext.getCmp(''modx-package-grid'').refresh();\n                },scope:this}\n                ,''failure'': {fn:function() {\n                    this.activate();\n                },scope:this}\n            }\n        });\n\n        return true;\n	}";s:8:"disabled";s:5:"false";s:5:"scope";s:15:"[object Object]";s:9:"autoWidth";s:4:"true";s:10:"autoHeight";s:4:"true";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:8:"lastSize";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:44:"/workspace/package/install/getpage-1.2.4-pl/";s:14:"package_action";i:0;}', 'getPage', 'a:38:{s:2:"id";s:24:"5331082662cf24022e002475";s:7:"package";s:24:"4d556c77b2b083396d000c1b";s:12:"display_name";s:16:"getpage-1.2.4-pl";s:4:"name";s:7:"getPage";s:7:"version";s:5:"1.2.4";s:13:"version_major";s:1:"1";s:13:"version_minor";s:1:"2";s:13:"version_patch";s:1:"4";s:7:"release";s:2:"pl";s:8:"vrelease";s:2:"pl";s:14:"vrelease_index";s:0:"";s:6:"author";s:8:"opengeek";s:11:"description";s:390:"<p>A generic wrapper snippet for MODX Revolution 2.1+. getPage will returning paged results and navigation from snippets that return limitable collections, and optionally cache the results of unique page requests.</p><p>The release fixes a bug with caching when getPage is used multiple times on a single page and caches the total value into the proper totalVar variable name.</p><ul>\n</ul>";s:12:"instructions";s:90:"<p>Install via Package Management.\nNOTE: requires MODX Revolution-2.1.0-rc-1 or later.</p>";s:9:"changelog";s:1377:"<p></p><p style="margin-bottom: 15px; "></p><p><b>getPage 1.2.4-pl (March 24, 2014)</b><b></b></p><p><ul><li>&#91;#19&#93; Add scriptProperties to cachePageKey signature</li><li>&#91;#24&#93; Cache total results number into correct variable name</li></ul></p><p><b>getPage 1.2.3-pl (June 20, 2012)</b></p><p></p><p></p><ul><li>&#91;#15&#93; Add ability to specify pageNavScheme for navigation links</li><li>&#91;#14&#93; Avoid adding pageVarKey to query string when page = 1</li><li>&#91;#12&#93; Fix cacheKey when multi-dimensional arrays used in $_REQUEST</li></ul><p></p><p></p><p><b>getPage 1.2.2-pl (December 9, 2011)</b></p><p></p><ul><li>Check $_GET before $_REQUEST for pageVarKey and limit overrides</li><li>&#91;#6&#93; Add pageOneLimit to allow different limit on first results page</li></ul><p></p><p></p><p style="margin-bottom: 15px; "><b>getPage 1.2.1-pl (September 15, 2011)</b></p><p style="margin-bottom: 15px; "></p><ul><li>Remove inadvertent debugging statement in snippet code</li></ul><p></p><p style="margin-bottom: 15px; "><b>getPage 1.2.0-pl (September 14, 2011)</b></p><ul style="margin-bottom: 15px; "><li>&#91;#5&#93; Add pageNavOuterTpl for layout control of page nav elements</li><li>Allow limit of 0 in $_REQUEST to bypass paging</li><li>Allow empty nav tpl parameters</li><li>Allow unlimited page listing with &amp;pageLimit=`0`</li></ul><p></p>";s:9:"createdon";s:24:"2014-03-25T04:37:58+0000";s:9:"createdby";s:8:"opengeek";s:8:"editedon";s:24:"2017-05-07T12:30:32+0000";s:10:"releasedon";s:24:"2014-03-25T04:37:58+0000";s:9:"downloads";s:6:"113326";s:8:"approved";s:4:"true";s:7:"audited";s:5:"false";s:8:"featured";s:5:"false";s:10:"deprecated";s:5:"false";s:7:"license";s:5:"GPLv2";s:7:"smf_url";s:0:"";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:3:"2.1";s:8:"location";s:60:"http://modx.com/extras/download/?id=5331082662cf24022e002477";s:9:"signature";s:16:"getpage-1.2.4-pl";s:11:"supports_db";s:12:"mysql,sqlsrv";s:16:"minimum_supports";s:3:"2.1";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:0:"";s:4:"file";a:7:{s:2:"id";s:24:"5331082662cf24022e002477";s:7:"version";s:24:"5331082662cf24022e002475";s:8:"filename";s:30:"getpage-1.2.4-pl.transport.zip";s:9:"downloads";s:5:"55687";s:6:"lastip";s:12:"80.93.176.27";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=5331082662cf24022e002477";}s:17:"package-signature";s:16:"getpage-1.2.4-pl";s:10:"categories";s:37:"navigation,blogging,content,utilities";s:4:"tags";s:0:"";}', 1, 2, 4, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('getresources-1.6.1-pl', '2017-05-07 02:52:22', '2017-05-07 12:53:44', '2017-05-07 14:53:44', 0, 1, 1, 0, 'getresources-1.6.1-pl.transport.zip', NULL, 'a:36:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:336:"--------------------\nSnippet: getResources\n--------------------\nVersion: 1.6.0-pl\nReleased: December 30, 2013\nSince: December 28, 2009\nAuthor: Jason Coward <jason@opengeek.com>\n\nA general purpose Resource listing and summarization snippet for MODX Revolution.\n\nOfficial Documentation:\nhttp://docs.modxcms.com/display/ADDON/getResources\n";s:9:"changelog";s:3492:"Changelog for getResources.\n\ngetResources 1.6.1-pl (December 30, 2013)\n====================================\n- Allow tvFilter values to contain filter operators\n- Allow 0-based idx\n- Pass scriptProperties to wrapperTpl\n- [#30][#80] Only dump properties for invalid tpl when debug enabled\n\ngetResources 1.6.0-pl (February 19, 2013)\n====================================\n- Add tplWrapper for specifying a wrapper template\n\ngetResources 1.5.1-pl (August 23, 2012)\n====================================\n- Add tplOperator property to default properties\n- [#73] Add between tplOperator to conditionalTpls\n\ngetResources 1.5.0-pl (June 15, 2012)\n====================================\n- [#58] Add tplCondition/conditionalTpls support\n- [#67] Add odd property\n- [#60] Allow custom delimiters for tvFilters\n- [#63] Give tplFirst/tplLast precedence over tpl_X/tpl_nX\n- Automatically prepare TV values for media-source dependent TVs\n\ngetResources 1.4.2-pl (December 9, 2011)\n====================================\n- [#25] Add new operators to tvFilters\n- [#37] Consider default values with tvFilters\n- [#57] Fix tpl overrides and improve order\n\ngetResources 1.4.1-pl (December 8, 2011)\n====================================\n- [#57] Add support for factor-based tpls\n- [#54], [#55] Fix processTVList feature\n\ngetResources 1.4.0-pl (September 21, 2011)\n====================================\n- [#50] Use children of parents from other contexts\n- [#45] Add dbCacheFlag to control db caching of getCollection, default to false\n- [#49] Allow comma-delimited list of TV names as includeTVList or processTVList\n\ngetResources 1.3.1-pl (July 14, 2011)\n====================================\n- [#43] Allow 0 as idx property\n- [#9] Fix tvFilters grouping\n- [#46] Fix criteria issue with &resources property\n\ngetResources 1.3.0-pl (March 28, 2011)\n====================================\n- [#33] sortbyTVType: Allow numeric and datetime TV sorting via SQL CAST()\n- [#24] Fix typos in list property options\n- [#4] Support multiple sortby fields via JSON object\n- Use get() instead to toArray() if includeContent is false\n- [#22] Add &toSeparatePlaceholders property for splitting output\n\ngetResources 1.2.2-pl (October 18, 2010)\n====================================\n- [#19] Fix sortbyTV returning duplicate rows\n\ngetResources 1.2.1-pl (October 11, 2010)\n====================================\n- Remove inadvertent call to modX::setLogTarget(''ECHO'')\n\ngetResources 1.2.0-pl (September 25, 2010)\n====================================\n- Fix error when &parents is not set\n- Allow empty &sortby\n- Add ability to sort by a single Template Variable value (or default value)\n\ngetResources 1.1.0-pl (July 30, 2010)\n====================================\n- Added &toPlaceholder property for assigning results to a placeholder\n- Added &resources property for including/excluding specific resources\n- Added &showDeleted property\n- Allow multiple contexts to be passed into &context\n- Added &showUnpublish property\n- Added getresources.core_path reference for easier development\n- [#ADDON-135] Make output separator configurable via outputSeparator property\n- Add where property to allow ad hoc criteria in JSON format\n\ngetResources 1.0.0-ga (December 29, 2009)\n====================================\n- [#ADDON-81] Allow empty tvPrefix property.\n- [#ADDON-89] Allow parents property to have a value of 0.\n- Changed default value of sortbyAlias to empty string and added sortbyEscaped property with default of 0.\n- Added changelog, license, and readme.\n";s:9:"signature";s:21:"getresources-1.6.1-pl";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:20:"Продолжить";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:1749:"function (va){\n        var r;\n        var g = Ext.getCmp(''modx-package-grid'');\n        if (!g) return false;\n        \n        if (va.signature != undefined && va.signature != '''') {\n            r = {signature: va.signature};\n        } else {\n            r = g.menu.record.data ? g.menu.record.data : g.menu.record;\n        }\n		var topic = ''/workspace/package/install/''+r.signature+''/'';\n        g.loadConsole(Ext.getBody(),topic);\n\n		va = va || {};\n        Ext.apply(va,{\n            action: ''workspace/packages/install''\n            ,signature: r.signature\n            ,register: ''mgr''\n            ,topic: topic\n        });\n\n        MODx.Ajax.request({\n            url: MODx.config.connector_url\n            ,params: va\n            ,listeners: {\n                ''success'': {fn:function() {\n                    var bc = Ext.getCmp(''packages-breadcrumbs'');\n                    var trail= bc.data.trail;\n                    trail.pop();\n\n                    if (trail.length > 1) {\n                        last = trail[trail.length - 1];\n\n                        if (last != undefined && last.rec != undefined) {\n                            bc.data.trail.pop();\n                            bc.data.trail.shift();\n                            bc.updateDetail(bc.data);\n\n                            var grid = Ext.getCmp(''modx-package-grid'');\n                            grid.install(last.rec);\n                            return;\n                        }\n                    }\n\n                    this.activate();\n					Ext.getCmp(''modx-package-grid'').refresh();\n                },scope:this}\n                ,''failure'': {fn:function() {\n                    this.activate();\n                },scope:this}\n            }\n        });\n\n        return true;\n	}";s:8:"disabled";s:5:"false";s:5:"scope";s:15:"[object Object]";s:9:"autoWidth";s:4:"true";s:10:"autoHeight";s:4:"true";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:49:"/workspace/package/install/getresources-1.6.1-pl/";s:8:"lastSize";s:15:"[object Object]";s:14:"package_action";i:0;}', 'getResources', 'a:38:{s:2:"id";s:24:"52c184b462cf240b35006e31";s:7:"package";s:24:"4d556c3db2b083396d000abe";s:12:"display_name";s:21:"getresources-1.6.1-pl";s:4:"name";s:12:"getResources";s:7:"version";s:5:"1.6.1";s:13:"version_major";s:1:"1";s:13:"version_minor";s:1:"6";s:13:"version_patch";s:1:"1";s:7:"release";s:2:"pl";s:8:"vrelease";s:2:"pl";s:14:"vrelease_index";s:1:"0";s:6:"author";s:8:"opengeek";s:11:"description";s:157:"<p>This patch release fixes several bugs, including the dumping of properties to array if the output of a tpl Chunk is empty.</p><p></p><p></p><p></p><p></p>";s:12:"instructions";s:37:"<p>Install via Package Management</p>";s:9:"changelog";s:1742:"<p></p><p>getResources 1.6.1-pl (December 30, 2013)</p><ul><li>Allow tvFilter values to contain filter operators</li><li><li>Allow 0-based idx</li><li>Pass scriptProperties to wrapperTpl</li><li>Only dump properties for invalid tpl when debug enabled</li></li></ul><p>getResources 1.6.0-pl (February 19, 2013)</p><p></p><ul><li>Add tplWrapper for specifying a wrapper template</li></ul><p></p><p>getResources 1.5.1-pl (August 23, 2012)</p><p></p><ul><li>Add tplOperator property to default properties</li><li>&#91;#73&#93; Add between tplOperator to conditionalTpls</li></ul><p></p><p>getResources 1.5.0-pl (June 15, 2012)</p><p></p><ul><li>&#91;#58&#93; Add tplCondition/conditionalTpls support</li><li>&#91;#67&#93; Add odd property</li><li>&#91;#60&#93; Allow custom delimiters for tvFilters</li><li>&#91;#63&#93; Give tplFirst/tplLast precedence over tpl_X/tpl_nX</li><li>Automatically prepare TV values for media-source dependent TVs</li></ul><p></p><p></p><p>getResources 1.4.2-pl (December 9, 2011)</p><p></p><ul><li>&#91;#25&#93; Add new operators to tvFilters</li><li>&#91;#37&#93; Consider default values with tvFilters</li><li>&#91;#57&#93; Fix tpl overrides and improve order</li></ul><p></p><p></p><p>getResources 1.4.1-pl (December 8, 2011)</p><p></p><ul><li>&#91;#57&#93; Add support for factor-based tpls</li><li>&#91;#54&#93;, &#91;#55&#93; Fix processTVList feature</li></ul><p></p><p></p><p>getResources 1.4.0-pl (September 21, 2011)</p><p></p><ul><li>&#91;#50&#93; Use children of parents from other contexts</li><li>&#91;#45&#93; Add dbCacheFlag to control db caching of getCollection, default to false</li><li>&#91;#49&#93; Allow comma-delimited list of TV names as includeTVList or processTVList</li></ul><p></p><p></p>";s:9:"createdon";s:24:"2013-12-30T14:35:32+0000";s:9:"createdby";s:8:"opengeek";s:8:"editedon";s:24:"2017-05-07T12:26:10+0000";s:10:"releasedon";s:24:"2013-12-30T14:35:32+0000";s:9:"downloads";s:6:"225019";s:8:"approved";s:4:"true";s:7:"audited";s:4:"true";s:8:"featured";s:4:"true";s:10:"deprecated";s:5:"false";s:7:"license";s:5:"GPLv2";s:7:"smf_url";s:0:"";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:1:"2";s:8:"location";s:60:"http://modx.com/extras/download/?id=52c184b562cf240b35006e33";s:9:"signature";s:21:"getresources-1.6.1-pl";s:11:"supports_db";s:12:"mysql,sqlsrv";s:16:"minimum_supports";s:1:"2";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:0:"";s:4:"file";a:7:{s:2:"id";s:24:"52c184b562cf240b35006e33";s:7:"version";s:24:"52c184b462cf240b35006e31";s:8:"filename";s:35:"getresources-1.6.1-pl.transport.zip";s:9:"downloads";s:5:"97815";s:6:"lastip";s:13:"31.220.104.87";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=52c184b562cf240b35006e33";}s:17:"package-signature";s:21:"getresources-1.6.1-pl";s:10:"categories";s:32:"blogging,content,navigation,news";s:4:"tags";s:57:"blog,blogging,resources,getr,getresource,resource,listing";}', 1, 6, 1, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('phpthumbof-1.4.0-pl', '2017-05-07 02:52:52', '2017-05-07 15:35:38', '2017-05-07 17:34:34', 0, 1, 1, 0, 'phpthumbof-1.4.0-pl.transport.zip', NULL, 'a:3:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:404:"--------------------\nSnippet: phpthumbof\n--------------------\nCreated: November 3rd, 2010\nAuthor: Shaun McCormick <shaun@modx.com>\nLicense: GNU GPLv2 (or later at your option)\n\nA custom, secure output filter for phpThumb.\n\nUsage:\n\n[[+imageUrl:phpthumb=`w=234&h=123&zc=1`]]\n\nAny phpThumb-compatable config options can be passed into the filter.\n\nThanks for using phpThumbOf!\nShaun McCormick\nshaun@modx.com";s:9:"changelog";s:2350:"Changelog for phpThumbOf package.\n\nphpThumbOf 1.4.0\n=====================================\n- [#22] Allow for thumbnails to preserve basename of file being thumbnailed\n- [#33] Fix issue with config not passed to phpthumbof class, causing some properties to not be respected\n- [#32] Fix context settings not respected\n- [#39] Fix class exists errors with AWS\n- [#25] Prevent followlocation curl error in environments that have open_basedir on\n\nphpThumbOf 1.3.2\n=====================================\n- Rollback 1.3.1 fix due to issues\n\nphpThumbOf 1.3.1\n=====================================\n- Fix for 2.2 base path prefixing\n\nphpThumbOf 1.3.0\n=====================================\n- [#29] Fix issue with caching of thumbnails always being forced\n- [#26] Add phpthumbof.cache_url setting for setting caching URLs outside of the main domain\n- [#28] Fix issue where image with query string on URL would not render\n- Revamp phpThumbOf to more OOP approach for easier debugging and quicker loads\n- [#27] Fix double slash issue with absolute cache paths\n\nphpThumbOf 1.2.2\n=====================================\n- [#21] Fix issue with file permissions on shared servers that have incorrect umask settings\n- [#23] Fix issue with expiry and S3 thumbnails\n- [#24] Respect s3hostAlias parameter for new thumbnails on S3\n\nphpThumbOf 1.2.1\n=====================================\n- [#14] Cloak path of generated thumbnail to prevent linking to source image\n- [#20] Added phpthumbof.cache_path setting for overriding the default cache path\n\nphpThumbOf 1.2.0\n=====================================\n- [#12] Fix issue where multiple fltr calls were not working, allow parameters with [] in their names\n- [#18] If output format is not specified, try to determine format from the original file extension\n- [#16] Avoid invalid file paths in HTML5\n\nphpThumbOf 1.1.0\n=====================================\n- [#8] Add phpthumbof.s3_host_alias setting to allow setting a CNAME alias for s3 url\n- [#10] Add fix to use modx base path rather than phpThumb default of document_root\n- [#9] Add fix for shared hosting environments using host dir aliasing\n- [#7] Add extra support for suphp by adding chmod statement to cache file\n\nphpThumbOf 1.0.0\n=====================================\n- Added Amazon S3 support\n- Added plugin to clear thumb cache when clearing site cache\n- Initial commit";}', 'phpThumbOf', 'a:38:{s:2:"id";s:24:"4ff762f3f245546938000010";s:7:"package";s:24:"4d556cf6b2b083396d000f0e";s:12:"display_name";s:19:"phpthumbof-1.4.0-pl";s:4:"name";s:10:"phpThumbOf";s:7:"version";s:5:"1.4.0";s:13:"version_major";s:1:"1";s:13:"version_minor";s:1:"4";s:13:"version_patch";s:1:"0";s:7:"release";s:2:"pl";s:8:"vrelease";s:2:"pl";s:14:"vrelease_index";s:1:"0";s:6:"author";s:12:"splittingred";s:11:"description";s:287:"<p>A custom, secure output filter for phpThumb. Any phpThumb-compatable config options can be passed into parameter of the filter.</p>\n<p>See the official documentation at:&nbsp;<a href="http://rtfm.modx.com/display/ADDON/phpThumbOf">http://rtfm.modx.com/display/ADDON/phpThumbOf</a></p>";s:12:"instructions";s:38:"<p>Install via Package Management.</p>";s:9:"changelog";s:3221:"<p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 1.4.0</b></p><ul><li>&#91;#22&#93; Allow for thumbnails to preserve basename of file being thumbnailed</li><li>&#91;#33&#93; Fix issue with config not passed to phpthumbof class, causing some properties to not be respected</li><li>&#91;#32&#93; Fix context settings not respected</li><li>&#91;#39&#93; Fix class exists errors with AWS</li><li>&#91;#25&#93; Prevent followlocation curl error in environments that have open_basedir on</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 1.3.2</b></p><ul><li>Fix path prefixing and abs issue with v1.3.1</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 1.3.1</b></p><ul><li>Fix for Revo 2.2 base path prefixing</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 1.3.0</b></p><ul><li>&#91;#29&#93; Fix issue with caching of thumbnails always being forced</li><li>&#91;#26&#93; Add phpthumbof.cache_url setting for setting caching URLs outside of the main domain</li><li>&#91;#28&#93; Fix issue where image with query string on URL would not render</li><li>Revamp phpThumbOf to more OOP approach for easier debugging and quicker loads</li><li>&#91;#27&#93; Fix double slash issue with absolute cache paths</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 1.2.2</b></p><ul><li>&#91;#21&#93; Fix issue with file permissions on shared servers that have incorrect umask settings</li><li>&#91;#23&#93; Fix issue with expiry and S3 thumbnails</li><li>&#91;#24&#93; Respect s3hostAlias parameter for new thumbnails on S3</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 1.2.1</b></p><ul><li>&#91;#14&#93; Cloak path of generated thumbnail to prevent linking to source image</li><li>&#91;#20&#93; Added phpthumbof.cache_path setting for overriding the default cache path</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 1.2.0</b></p><ul><li>&#91;#12&#93; Fix issue where multiple fltr calls were not working, allow parameters with &#91;&#93; in their names</li><li>&#91;#18&#93; If output format is not specified, try to determine format from the original file extension</li><li>&#91;#16&#93; Avoid invalid file paths in HTML5</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 1.1.0</b></p>\n<ul>\n  <li>&#91;#8&#93; Add phpthumbof.s3_host_alias setting to allow setting a CNAME alias for s3 url</li>\n  <li>&#91;#10&#93; Add fix to use modx base path rather than phpThumb default of document_root</li>\n  <li>&#91;#9&#93; Add fix for shared hosting environments using host dir aliasing</li>\n  <li>&#91;#7&#93; Add extra support for suphp by adding chmod statement to cache file</li>\n  <li>Added Amazon S3 support for storing cached thumbnails</li>\n  <li>Added plugin to clear thumb cache when clearing site cache</li>\n</ul>\n";s:9:"createdon";s:24:"2012-07-06T22:13:07+0000";s:9:"createdby";s:12:"splittingred";s:8:"editedon";s:24:"2017-05-07T12:52:28+0000";s:10:"releasedon";s:24:"2012-07-06T22:13:07+0000";s:9:"downloads";s:5:"98629";s:8:"approved";s:4:"true";s:7:"audited";s:5:"false";s:8:"featured";s:5:"false";s:10:"deprecated";s:5:"false";s:7:"license";s:5:"GPLv2";s:7:"smf_url";s:0:"";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:1:"2";s:8:"location";s:60:"http://modx.com/extras/download/?id=4ff762f6f245546938000012";s:9:"signature";s:19:"phpthumbof-1.4.0-pl";s:11:"supports_db";s:12:"mysql,sqlsrv";s:16:"minimum_supports";s:1:"2";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:0:"";s:4:"file";a:7:{s:2:"id";s:24:"4ff762f6f245546938000012";s:7:"version";s:24:"4ff762f3f245546938000010";s:8:"filename";s:33:"phpthumbof-1.4.0-pl.transport.zip";s:9:"downloads";s:5:"74991";s:6:"lastip";s:13:"178.208.83.20";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=4ff762f6f245546938000012";}s:17:"package-signature";s:19:"phpthumbof-1.4.0-pl";s:10:"categories";s:49:"content,gallery,integrations,multimedia,utilities";s:4:"tags";s:35:"phpthumb,thumbnail,thumbnails,image";}', 1, 4, 0, 'pl', 0),
('imageplus-2.6.2-pl', '2017-05-23 10:45:53', '2017-05-23 20:45:57', NULL, 0, 1, 1, 0, 'imageplus-2.6.2-pl.transport.zip', NULL, 'a:3:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:825:"Image+ TV type\n==============\n\nAuthor: Alan Pich <alan.pich@gmail.com>\nMaintainer and further development: Thomas Jakobi <thomas.jakobi@partout.info>\nLicense: GNU GPLv2\n\nAdvanced image custom template variable type for MODx Revolution. The dimensions for the uploaded image can (optionally)\nbe configured to constrain a minimal width and/or height. The image crop could be forced to remain at a pre-set ratio.\nA graphical tool could be used to crop the image to the required dimensions/proportions.\n\nUsage\n-----\nInstall via package manager and create a TV with input & output types of Image+\n\nDocumentation\n-------------\nhttp://jako.github.io/ImagePlus/\n\nGitHub Repository\n-----------------\nhttps://github.com/Jako/ImagePlus\n\nDependencies\n------------\nMODX Cropping Engine i.e. pthumb <http://modx.com/extras/package/pthumb>\n";s:9:"changelog";s:4101:"Changelog for Image+\n====================\n\n- 2.6.2\n    - Bugfix for disabled option ''Generate Thumbnail URL'' and a missing\n- 2.6.1\n    - Bugfix for an empty select_config system setting\n- 2.6.0\n    - System wide predefined crop sizes/aspect ratios, selectable in the TV options\n    - Context/system settings that supercede the TV options\n    - Removed MODX 2.2 compatibility\n    - Fixed a missing realpath issue\n\n- 2.5.0\n    - Added optional caption and credits fields below of the image\n\n- 2.4.6\n    - Fix showing a full server path, when the image is not found [#41]\n- 2.4.5\n    - Solved an installation issue on Windows machines\n- 2.4.4\n    - Add assets files on manager pages (i.e. for MIGX)\n    - Don''t try get an Image+ url with an empty template variable value\n    - Log invalid JSON only if imageplus.debug system setting is active\n    - Correcting typos, refactored code\n    - Use only uglified/minified scripts in package code\n- 2.4.3\n    - The alt text field could contain special chars\n    - Debug system setting for enabling not combined and minified/uglified css/js files\n    - Fixed not found image in combined/minified css file\n- 2.4.2\n    - The snippet could use inherited values\n- 2.4.1\n    - Fixing recoverable errors\n    - Change the image by typing the filename\n    - Translated error messages\n- 2.4.0\n    - Retain the value of a MODX TV as source image for the Image+ TV\n    - Fill output chunk placeholders with script properties\n    - Improved error logging\n    - Resolved issues with apostrophes in language strings\n\n- 2.3.4\n    - Open crop window automatic after selecting a new image\n    - Bugfix for media source issue in MIGX\n- 2.3.3\n    - Run jQuery in noConflict mode\n- 2.3.2\n    - Added ''value'' parameter in the ImagePlus Snippet\n- 2.3.1\n    - Use default_media_source if the media source of the TV is not set (i.e. if it used in a MIGX configuration)\n    - Enable property sets for the ImagePlus Snippet\n    - Don''t show the crop window if the image size is invalid\n- 2.3.0\n    - MODX 2.3 compatibility\n    - Inline Trigger fields\n    - Bugfix for fireResourceFormChange issue\n    - Some better backend styling\n    - Updated Jcrop plugin and jQuery\n    - Set thumbnail width in template variable panel\n    - Set crop aspect ratio in template variable input options\n    - Bugfix for a Firefox display issue\n    - Respect context settings for media sources\n    - Center the crop window in the viewport\n    - Updated Czech translation (@bartholomej)\n    - Updated Dutch translation (@Mark-H)\n    - Updated French translation (@AmaZili)\n    - Updated Russian translation (@Alroniks, serimarda)\n\n- 2.2.x\n    - Added GUI warning of missing dependencies\n    - Added PhpThumbsUp crop engine\n    - Refactored to allow changing of crop engines\n    - Added grid renderer for MIGX backend\n    - Confirmed to work with Articles [#21]\n    - Now works with MIGX [#15]\n    - TV Default Value is now output if TV is empty\n    - TV Reset button now works [#22]\n    - Added image preloader to accurately get image size on upload\n    - This is because MODX File Manager will not report accurate\n      image size for images above 800x600 [#8]\n    - Added option to put an icon on TV input ''crop'' button [#16]\n    - Create a system setting called imageplus.crop_icon and\n      populate it with the url to the desired icon png\n    - Added system setting override for core_path and assets_url [#25]\n    - Added Czech translation (@TheBoxer)\n    - Added Danish translation (@Flygenring)\n    - Added German translation (@KristianP)\n    - Added Spanish translation (Nico Telfer)\n    - Added French translation (@rtripault)\n    - Added Hungarian translation (Kristof Kotai)\n    - Added Italian translation (@tillilab)\n    - Added Dutch translation (@Mark-H)\n    - Added Russian translation (@Alroniks)\n    - Added French translation (@Alroniks)\n\n- 2.1.x\n    - Fixed bug with non-default media sources\n    - Added field for additional phpThumb parameters to output renderer\n    - Added option to specify a chunk for output formatting (fields: url,alt,width,height)\n\n- 2.0.x\n    - Complete rewrite\n";}', 'Image+', 'a:38:{s:2:"id";s:24:"58ac18bfbc8dd3e8608b4567";s:7:"package";s:24:"4f2aa00df2455455a900039b";s:12:"display_name";s:18:"imageplus-2.6.2-pl";s:4:"name";s:6:"Image+";s:7:"version";s:5:"2.6.2";s:13:"version_major";s:1:"2";s:13:"version_minor";s:1:"6";s:13:"version_patch";s:1:"2";s:7:"release";s:2:"pl";s:8:"vrelease";s:2:"pl";s:14:"vrelease_index";s:0:"";s:6:"author";s:4:"jako";s:11:"description";s:1037:"<p>Image+ is an advanced image custom template variable type for MODx Revolution. The dimensions for the uploaded image can (optionally) be configured to constrain a minimal width and/or height. The image crop could be forced to remain at a pre-set ratio. A graphical tool could be used to crop the image to the required dimensions/proportions.</p><p></p><ul><li>Visual Image cropping tool integrated into the MODX manager interface.</li><li>Option to constrain minimal width and/or height for the uploaded image.</li><li>User image crop can be forced to remain at pre-set ratio.</li><li>Use a chunk as an output template and fill placeholders with url, height, width, alt-tag, phpthumb options etc of the cropped uploaded image.</li></ul><p></p><p>For full details, see the&nbsp;<a href="http://jako.github.io/ImagePlus/" title="" target="">Image+ documentation</a>.&nbsp;</p><p>This project is hosted on GitHub:&nbsp;<a href="https://github.com/Jako/ImagePlus" title="" target="">https://github.com/Jako/ImagePlus</a></p><p></p><p></p>";s:12:"instructions";s:241:"<p>Install through package manager and select ''Image+'' as a template variable input type and output type if you create a new template variable. Ensure you also have a supported cropping engine (pThumb, phpThumbOf, phpThumbsUp) installed.</p>";s:9:"changelog";s:112:"<p></p><ul><li>Bugfix for disabled option ''Generate Thumbnail URL'' and an empty url placeholder</li></ul><p></p>";s:9:"createdon";s:24:"2017-02-21T10:38:55+0000";s:9:"createdby";s:4:"jako";s:8:"editedon";s:24:"2017-05-23T18:15:32+0000";s:10:"releasedon";s:24:"2017-02-21T10:38:55+0000";s:9:"downloads";s:5:"10058";s:8:"approved";s:4:"true";s:7:"audited";s:5:"false";s:8:"featured";s:5:"false";s:10:"deprecated";s:5:"false";s:7:"license";s:5:"GPLv2";s:7:"smf_url";s:0:"";s:10:"repository";s:24:"4d4c3fa6b2b0830da9000001";s:8:"supports";s:3:"2.3";s:8:"location";s:60:"http://modx.com/extras/download/?id=58ac18bfbc8dd3e8608b4568";s:9:"signature";s:18:"imageplus-2.6.2-pl";s:11:"supports_db";s:5:"mysql";s:16:"minimum_supports";s:3:"2.3";s:9:"breaks_at";s:8:"10000000";s:10:"screenshot";s:77:"http://modx.s3.amazonaws.com/extras/4f2aa00df2455455a900039b/imageplus-23.jpg";s:4:"file";a:7:{s:2:"id";s:24:"58ac18bfbc8dd3e8608b4568";s:7:"version";s:24:"58ac18bfbc8dd3e8608b4567";s:8:"filename";s:32:"imageplus-2.6.2-pl.transport.zip";s:9:"downloads";s:3:"836";s:6:"lastip";s:13:"209.124.66.11";s:9:"transport";s:4:"true";s:8:"location";s:60:"http://modx.com/extras/download/?id=58ac18bfbc8dd3e8608b4568";}s:17:"package-signature";s:18:"imageplus-2.6.2-pl";s:10:"categories";s:36:"content,gallery,multimedia,utilities";s:4:"tags";s:40:"image,image+,imageplus,resize,photo,crop";}', 2, 6, 2, 'pl', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(255) NOT NULL DEFAULT '',
  `api_key` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2017-04-20 13:22:09', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(255) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'admin', 'GUdJbLJP3ltPT4b5yd86uXGB2J6z8FI9WS+PQXgv7SY=', '', 'modUser', 1, NULL, NULL, 'hashing.modPBKDF2', 'b2f2c403e418dbb4a9baf3ec7b8e8341', 1, NULL, 1, 1493717518);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
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
  `extended` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Администратор по умолчанию', 'asdmin-parol@yandex.ru', '', '', 0, 0, 0, 4, 1494415706, 1495912757, 0, '2h69rs9pa875jtnr51vj4fo557', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Indexes for table `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_actions`
--
ALTER TABLE `modx_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Indexes for table `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Indexes for table `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Indexes for table `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Indexes for table `modx_class_map`
--
ALTER TABLE `modx_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Indexes for table `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Indexes for table `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Indexes for table `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Indexes for table `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Indexes for table `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Indexes for table `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Indexes for table `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Indexes for table `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Indexes for table `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Indexes for table `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Indexes for table `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Indexes for table `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Indexes for table `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Indexes for table `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Indexes for table `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Indexes for table `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Indexes for table `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(333)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Indexes for table `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Indexes for table `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `tv_cnt` (`tmplvarid`,`contentid`);

--
-- Indexes for table `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Indexes for table `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Indexes for table `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Indexes for table `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Indexes for table `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Indexes for table `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Indexes for table `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT for table `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_actions`
--
ALTER TABLE `modx_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_class_map`
--
ALTER TABLE `modx_class_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;
--
-- AUTO_INCREMENT for table `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
