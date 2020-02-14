<?php /* Smarty version Smarty-3.0.7, created on 2018-01-08 11:17:49
         compiled from "template/podrska_admin.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7861755635a53454d47fb00-94601233%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6fd7b423fa9f0f9df9a9b65b88bacdf3914a6436' => 
    array (
      0 => 'template/podrska_admin.tpl',
      1 => 1440795704,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7861755635a53454d47fb00-94601233',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Podrška Klijentima</h1>
                
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>
<div class="bloc">

    <div class="title">
        Lista Tiketa
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>Id</th>

                    <th>Naslov</th>
                    <th>Datum</th>
					<th>Vrsta</th>
					<th>Prioritet</th>
                    <th>Status</th>
                    <th>Akcija</th>
                </tr>
            </thead>

            <tbody>
            <?php  $_smarty_tpl->tpl_vars['tiket'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('tiketi')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['tiket']->key => $_smarty_tpl->tpl_vars['tiket']->value){
?>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="admin.php?page=tiket&akcija=pregled&id=<?php echo $_smarty_tpl->tpl_vars['tiket']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['tiket']->value['id'];?>
</a></td>
                    <td><?php echo $_smarty_tpl->tpl_vars['tiket']->value['naslov'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['tiket']->value['datum'];?>
</td>
					<td><?php echo $_smarty_tpl->tpl_vars['tiket']->value['vrsta'];?>
</td>
					<td><?php echo $_smarty_tpl->tpl_vars['tiket']->value['prioritet'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['tiket']->value['status'];?>
</td>
                    <td class="actions"><a href="admin.php?page=podrska&status=<?php echo $_smarty_tpl->getVariable('status')->value;?>
&brisi=<?php echo $_smarty_tpl->tpl_vars['tiket']->value['id'];?>
" title="Brisi ovaj tiket"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             <?php }} else { ?>
             <tr>
             <td colspan="6">Nema ni jednog tiketa</td>
             </tr>
             <?php } ?>

            </tbody>

        </table>
        <div class="pagination">

            <?php echo $_smarty_tpl->getVariable('stranice')->value;?>

           

        </div>
    </div>
</div>
                

       


</div>
        
        
