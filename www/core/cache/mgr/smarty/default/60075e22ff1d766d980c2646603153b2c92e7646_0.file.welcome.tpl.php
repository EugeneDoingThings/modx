<?php /* Smarty version 3.1.27, created on 2017-05-02 11:32:55
         compiled from "C:\xampp\htdocs\modx\www\manager\templates\default\welcome.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:20172590852477e6a86_10286093%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '60075e22ff1d766d980c2646603153b2c92e7646' => 
    array (
      0 => 'C:\\xampp\\htdocs\\modx\\www\\manager\\templates\\default\\welcome.tpl',
      1 => 1492683676,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20172590852477e6a86_10286093',
  'variables' => 
  array (
    'dashboard' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_590852477f9d07_78783500',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_590852477f9d07_78783500')) {
function content_590852477f9d07_78783500 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '20172590852477e6a86_10286093';
?>
<div id="modx-panel-welcome-div"></div>

<div id="modx-dashboard" class="dashboard">
<?php echo $_smarty_tpl->tpl_vars['dashboard']->value;?>

</div><?php }
}
?>