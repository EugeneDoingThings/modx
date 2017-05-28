<?php /* Smarty version 3.1.27, created on 2017-05-02 11:31:59
         compiled from "C:\xampp\htdocs\modx\www\setup\templates\footer.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:78615908520f0125b1_04194239%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '91424f477a314682edb1cbcf7fa2daf405fbdcb6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\modx\\www\\setup\\templates\\footer.tpl',
      1 => 1492683676,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '78615908520f0125b1_04194239',
  'variables' => 
  array (
    '_lang' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_5908520f037c60_62824541',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5908520f037c60_62824541')) {
function content_5908520f037c60_62824541 ($_smarty_tpl) {
if (!is_callable('smarty_modifier_replace')) require_once 'C:/xampp/htdocs/modx/www/core/model/smarty/plugins\\modifier.replace.php';

$_smarty_tpl->properties['nocache_hash'] = '78615908520f0125b1_04194239';
?>
        </div>
        <!-- end content -->
        <div class="clear">&nbsp;</div>
    </div>
</div>

<!-- start footer -->
<div id="footer">
    <div id="footer-inner">
    <div class="container_12">
        <p><?php ob_start();
echo date('Y');
$_tmp1=ob_get_clean();
echo smarty_modifier_replace($_smarty_tpl->tpl_vars['_lang']->value['modx_footer1'],'[[+current_year]]',$_tmp1);?>
</p>
        <p><?php echo $_smarty_tpl->tpl_vars['_lang']->value['modx_footer2'];?>
</p>
    </div>
    </div>
</div>

<div class="post_body">

</div>
<!-- end footer -->
</body>
</html><?php }
}
?>