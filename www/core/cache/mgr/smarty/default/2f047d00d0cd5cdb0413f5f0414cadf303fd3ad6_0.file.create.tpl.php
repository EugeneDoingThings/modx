<?php /* Smarty version 3.1.27, created on 2017-05-07 20:30:57
         compiled from "C:\xampp\htdocs\modx\www\manager\templates\default\resource\weblink\create.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:17191590f67e1708810_80240013%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2f047d00d0cd5cdb0413f5f0414cadf303fd3ad6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\modx\\www\\manager\\templates\\default\\resource\\weblink\\create.tpl',
      1 => 1492683676,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17191590f67e1708810_80240013',
  'variables' => 
  array (
    'tvOutput' => 0,
    'onDocFormPrerender' => 0,
    'resource' => 0,
    '_config' => 0,
    'onRichTextEditorInit' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_590f67e1b57e86_92422398',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_590f67e1b57e86_92422398')) {
function content_590f67e1b57e86_92422398 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '17191590f67e1708810_80240013';
?>
<div id="modx-panel-weblink-div"></div>
<div id="modx-resource-tvs-div" class="modx-resource-tab x-form-label-left x-panel"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['tvOutput']->value)===null||$tmp==='' ? '' : $tmp);?>
</div>

<?php echo $_smarty_tpl->tpl_vars['onDocFormPrerender']->value;?>

<?php if ($_smarty_tpl->tpl_vars['resource']->value->richtext && $_smarty_tpl->tpl_vars['_config']->value['use_editor']) {?>
    <?php echo $_smarty_tpl->tpl_vars['onRichTextEditorInit']->value;?>

<?php }

}
}
?>