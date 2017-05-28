<?php /* Smarty version 3.1.27, created on 2017-05-07 14:50:53
         compiled from "C:\xampp\htdocs\modx\www\manager\templates\default\workspaces\index.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:20270590f182dbb8975_53148056%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2c8cfc23da5f413f78eabcd74592f55ec34d2494' => 
    array (
      0 => 'C:\\xampp\\htdocs\\modx\\www\\manager\\templates\\default\\workspaces\\index.tpl',
      1 => 1492683676,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20270590f182dbb8975_53148056',
  'variables' => 
  array (
    'error' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_590f182ddcb0a2_53138511',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_590f182ddcb0a2_53138511')) {
function content_590f182ddcb0a2_53138511 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '20270590f182dbb8975_53148056';
echo (($tmp = @$_smarty_tpl->tpl_vars['error']->value)===null||$tmp==='' ? '' : $tmp);?>

<div id="modx-panel-workspace-div"></div>
<?php }
}
?>