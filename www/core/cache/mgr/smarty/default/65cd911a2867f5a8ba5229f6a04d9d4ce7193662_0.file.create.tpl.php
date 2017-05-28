<?php /* Smarty version 3.1.27, created on 2017-05-23 22:40:46
         compiled from "C:\xampp\htdocs\modx\www\manager\templates\default\element\plugin\create.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:2905859249e4e4de031_75223646%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '65cd911a2867f5a8ba5229f6a04d9d4ce7193662' => 
    array (
      0 => 'C:\\xampp\\htdocs\\modx\\www\\manager\\templates\\default\\element\\plugin\\create.tpl',
      1 => 1492683674,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2905859249e4e4de031_75223646',
  'variables' => 
  array (
    'onPluginFormPrerender' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59249e4e4f0475_49292376',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59249e4e4f0475_49292376')) {
function content_59249e4e4f0475_49292376 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '2905859249e4e4de031_75223646';
?>
<div id="modx-panel-plugin-div"></div>
<?php echo $_smarty_tpl->tpl_vars['onPluginFormPrerender']->value;

}
}
?>