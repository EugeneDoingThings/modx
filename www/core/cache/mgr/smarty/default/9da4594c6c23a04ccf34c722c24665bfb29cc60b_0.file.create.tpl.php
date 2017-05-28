<?php /* Smarty version 3.1.27, created on 2017-05-07 15:20:31
         compiled from "C:\xampp\htdocs\modx\www\manager\templates\default\element\chunk\create.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:18714590f1f1f414bb4_33346228%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9da4594c6c23a04ccf34c722c24665bfb29cc60b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\modx\\www\\manager\\templates\\default\\element\\chunk\\create.tpl',
      1 => 1492683674,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '18714590f1f1f414bb4_33346228',
  'variables' => 
  array (
    'onChunkFormPrerender' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_590f1f1f424f32_50124637',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_590f1f1f424f32_50124637')) {
function content_590f1f1f424f32_50124637 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '18714590f1f1f414bb4_33346228';
?>
<div id="modx-panel-chunk-div"></div>
<?php echo $_smarty_tpl->tpl_vars['onChunkFormPrerender']->value;

}
}
?>