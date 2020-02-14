<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 23:26:38
         compiled from "template/lista-radnika.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6922315905a529e9ecac445-05125754%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2c8376875a34aaeeb3f3fdfe1552fe3daf8ba69a' => 
    array (
      0 => 'template/lista-radnika.tpl',
      1 => 1440795694,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6922315905a529e9ecac445-05125754',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Radnici</h1>
                
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>
<div class="bloc">

    <div class="title">
        Lista Radnika
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th>Ime</th>
                    <th>Prezime</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Email</th>
		      <th>Broj odgovora u tiketima</th>
                    <th>Status</th>
                    <th width="40px" align="right">Akcija</th>
                </tr>
            </thead>

            <tbody>
            <?php  $_smarty_tpl->tpl_vars['radnik'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('radnici')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['radnik']->key => $_smarty_tpl->tpl_vars['radnik']->value){
?>
			
                <tr>
                    <td><?php echo $_smarty_tpl->tpl_vars['radnik']->value['fname'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['radnik']->value['lname'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['radnik']->value['username'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['radnik']->value['password'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['radnik']->value['email'];?>
</td>
		      <td><?php echo $_smarty_tpl->tpl_vars['radnik']->value['odgovori'];?>
</td>
                    <td><span style="color: <?php echo $_smarty_tpl->tpl_vars['radnik']->value['boja'];?>
"><?php echo $_smarty_tpl->tpl_vars['radnik']->value['status'];?>
</span></td>
					<td class="actions">
						<a href="admin.php?page=lista_radnika&brisi=<?php echo $_smarty_tpl->tpl_vars['radnik']->value['id'];?>
" title="Izbrisi radnika"><img style="float: right;" src="template/img/icons/delete.png" alt="" /></a>
						<a href="admin.php?page=uredi_radnika&id=<?php echo $_smarty_tpl->tpl_vars['radnik']->value['id'];?>
" title="Edituj radnika"><img style="float: right;" src="template/img/icons/edit.png" alt="" /></a>
					</td>	
                    				
                </tr>
             <?php }} else { ?>
             <tr>
             <td colspan="7">Nema ni jednog radnika.</td>
             </tr>
             <?php } ?>

            </tbody>

        </table>
    </div>
</div>
                

       


</div>
        
        
