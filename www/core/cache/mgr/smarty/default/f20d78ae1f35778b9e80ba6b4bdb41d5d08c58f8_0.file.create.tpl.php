<?php /* Smarty version 3.1.27, created on 2017-05-08 00:21:54
         compiled from "C:\xampp\htdocs\modx\www\manager\templates\default\element\snippet\create.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:27882590f9e022cdcc4_55142523%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f20d78ae1f35778b9e80ba6b4bdb41d5d08c58f8' => 
    array (
      0 => 'C:\\xampp\\htdocs\\modx\\www\\manager\\templates\\default\\element\\snippet\\create.tpl',
      1 => 1492683674,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '27882590f9e022cdcc4_55142523',
  'variables' => 
  array (
    'onSnipFormPrerender' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_590f9e022df384_67161587',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_590f9e022df384_67161587')) {
function content_590f9e022df384_67161587 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '27882590f9e022cdcc4_55142523';
?>
<div id="modx-panel-snippet-div"></div>
<?php echo $_smarty_tpl->tpl_vars['onSnipFormPrerender']->value;

}
}
?>