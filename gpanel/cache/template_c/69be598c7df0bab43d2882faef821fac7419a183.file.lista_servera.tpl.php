<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:58:07
         compiled from "template/lista_servera.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14941419455a51628fb86c67-60198342%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '69be598c7df0bab43d2882faef821fac7419a183' => 
    array (
      0 => 'template/lista_servera.tpl',
      1 => 1440795700,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14941419455a51628fb86c67-60198342',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
﻿<div id="content">
        
        
        
<h1>Serveri</h1>
                
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>
<div class="bloc">

    <div class="title">
        Lista Servera
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>Id</th>

                    <th>Ime</th>
                    <th>Klijent</th>
                    <th>Broj Slotova</th>
                    <th>Ističe</th>
                    <th>Status</th>
                    <th>Akcija</th>
                </tr>
            </thead>

            <tbody>
            <?php  $_smarty_tpl->tpl_vars['server'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('serveri')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['server']->key => $_smarty_tpl->tpl_vars['server']->value){
?>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="admin.php?page=serveri&akcija=uredi&id=<?php echo $_smarty_tpl->tpl_vars['server']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['server']->value['id'];?>
</a></td>
                    <td><?php echo $_smarty_tpl->tpl_vars['server']->value['name'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['server']->value['klijent'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['server']->value['slotovi'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['server']->value['istice'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['server']->value['status'];?>
</td>
                    <td class="actions"><a href="admin.php?page=serveri&akcija=uredi&id=<?php echo $_smarty_tpl->tpl_vars['server']->value['id'];?>
" title="Uredi ovaj server"><img src="template/img/icons/edit.png" alt="" /></a><a href="admin.php?page=serveri&akcija=lista<?php echo $_smarty_tpl->getVariable('isticemi')->value;?>
&brisi=<?php echo $_smarty_tpl->tpl_vars['server']->value['id'];?>
" onclick="return confirm('Dali ste sigurni da želite izbrisati server?')" title="Izbriši ovaj server"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             <?php }} else { ?>
             <tr>
             <td colspan="8">Nema ni jednog servera</td>
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
        
        
