<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:58:40
         compiled from "template/lista_modova.tpl" */ ?>
<?php /*%%SmartyHeaderCode:867847705a5162b06d76b2-88678216%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bef8dc33bea24e4cf359e3f1cfa69392996a9212' => 
    array (
      0 => 'template/lista_modova.tpl',
      1 => 1440795698,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '867847705a5162b06d76b2-88678216',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Modovi</h1>
                
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>
<div class="bloc">

    <div class="title">
        Lista Modova
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>Id</th>

                    <th>Ime</th>
                    <th>Putanja</th>
					<th>Default mapa</th>
                    <th>Skriven</th>
                    <th>Akcija</th>
                </tr>
            </thead>

            <tbody>
            <?php  $_smarty_tpl->tpl_vars['mod'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('modovi')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['mod']->key => $_smarty_tpl->tpl_vars['mod']->value){
?>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><?php echo $_smarty_tpl->tpl_vars['mod']->value['id'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['mod']->value['ime'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['mod']->value['putanja'];?>
</td>
					<td><?php echo $_smarty_tpl->tpl_vars['mod']->value['mapa'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['mod']->value['skriven'];?>
</td>
                    <td class="actions"><a href="admin.php?page=mod&akcija=uredi&id=<?php echo $_smarty_tpl->tpl_vars['mod']->value['id'];?>
" title="Uredi profil ovaj mod"><img src="template/img/icons/edit.png" alt="" /></a><a href="admin.php?page=mod&akcija=lista&brisi=<?php echo $_smarty_tpl->tpl_vars['mod']->value['id'];?>
" title="Sakrij ovaj mod"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             <?php }} else { ?>
             <tr>
             <td colspan="6">Nema ni jednog mod-a.</td>
             </tr>
             <?php } ?>

            </tbody>

        </table>
    </div>
</div>
                

       


</div>
        
        
