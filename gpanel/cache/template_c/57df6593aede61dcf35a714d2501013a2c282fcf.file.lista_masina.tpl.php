<?php /* Smarty version Smarty-3.0.7, created on 2018-01-09 01:36:37
         compiled from "template/lista_masina.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15846249855a540e95829273-65601944%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '57df6593aede61dcf35a714d2501013a2c282fcf' => 
    array (
      0 => 'template/lista_masina.tpl',
      1 => 1440795696,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15846249855a540e95829273-65601944',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Mašine</h1>
                
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>
<div class="bloc">

    <div class="title">
        Lista Mašina
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>Id</th>

                    <th>Ime</th>
                    <th>IP</th>
                    <th>Location</th>
                    <th>Slobodna</th>
					<th>Serveri</th>
                    <th>Akcija</th>
                </tr>
            </thead>

            <tbody>
            <?php  $_smarty_tpl->tpl_vars['masina'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('masine')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['masina']->key => $_smarty_tpl->tpl_vars['masina']->value){
?>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="admin.php?page=box&akcija=uredi&id=<?php echo $_smarty_tpl->tpl_vars['masina']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['masina']->value['id'];?>
</a></td>
                    <td><?php echo $_smarty_tpl->tpl_vars['masina']->value['name'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['masina']->value['ip'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['masina']->value['location'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['masina']->value['slobodan'];?>
</td>
					<td><a href="admin.php?page=serveri&akcija=lista&boxid=<?php echo $_smarty_tpl->tpl_vars['masina']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['masina']->value['serverii'];?>
 servera</a></td>
                    <td class="actions"><a href="admin.php?page=box&akcija=uredi&id=<?php echo $_smarty_tpl->tpl_vars['masina']->value['id'];?>
" title="Uredi ovu mašinu"><img src="template/img/icons/edit.png" alt="" /></a><a href="admin.php?page=box&akcija=lista&brisi=<?php echo $_smarty_tpl->tpl_vars['masina']->value['id'];?>
" title="Briši ovu mašinu i servere na mašini"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             <?php }} else { ?>
             <tr>
             <td colspan="7">Nema ni jedne mašine.</td>
             </tr>
             <?php } ?>

            </tbody>

        </table>
    </div>
</div>
                

       


</div>
        
        
