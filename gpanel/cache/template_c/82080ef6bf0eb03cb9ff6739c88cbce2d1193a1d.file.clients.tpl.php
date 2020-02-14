<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:57:35
         compiled from "template/clients.tpl" */ ?>
<?php /*%%SmartyHeaderCode:10759196465a51626f298c34-03510303%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '82080ef6bf0eb03cb9ff6739c88cbce2d1193a1d' => 
    array (
      0 => 'template/clients.tpl',
      1 => 1440795682,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10759196465a51626f298c34-03510303',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Klijenti</h1>
                
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>
<div class="bloc">

    <div class="title">
        Lista Klijenata
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>Id</th>

                    <th>Ime</th>
                    <th>Prezime</th>
                    <th>Broj Servera</th>
                    <th>Akcija</th>
                </tr>
            </thead>

            <tbody>
            <?php  $_smarty_tpl->tpl_vars['klijent'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('klijenti')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['klijent']->key => $_smarty_tpl->tpl_vars['klijent']->value){
?>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="admin.php?page=klijenti&akcija=pregled&id=<?php echo $_smarty_tpl->tpl_vars['klijent']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['klijent']->value['id'];?>
</a></td>
                    <td><a href="admin.php?page=klijenti&akcija=pregled&id=<?php echo $_smarty_tpl->tpl_vars['klijent']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['klijent']->value['fname'];?>
</a></td>
                    <td><a href="admin.php?page=klijenti&akcija=pregled&id=<?php echo $_smarty_tpl->tpl_vars['klijent']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['klijent']->value['lname'];?>
</a></td>
                    <td><?php echo $_smarty_tpl->tpl_vars['klijent']->value['serveri'];?>
</td>
                    <td class="actions"><a href="admin.php?page=klijenti&akcija=uredi&id=<?php echo $_smarty_tpl->tpl_vars['klijent']->value['id'];?>
" title="Uredi profil ovog klijenta"><img src="template/img/icons/edit.png" alt="" /></a><a href="admin.php?page=klijenti&akcija=lista&brisi=<?php echo $_smarty_tpl->tpl_vars['klijent']->value['id'];?>
" title="Izbriši ovog klijenta"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             <?php }} else { ?>
             <tr>
             <td colspan="6">Nema ni jednog klijenta</td>
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
        
        
