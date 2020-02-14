<?php /* Smarty version Smarty-3.0.7, created on 2018-01-09 11:29:39
         compiled from "template/lista_obavjesti.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14126199245a5499931ff8d4-82673962%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '60fb5837a82abb1904617962df108fd00c4cae49' => 
    array (
      0 => 'template/lista_obavjesti.tpl',
      1 => 1440795700,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14126199245a5499931ff8d4-82673962',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Obavijesti</h1>
                
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>
<div class="bloc">

    <div class="title">
        Lista Obavijesti
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>Id</th>

                    <th>Naslov</th>
                    <th>Datum</th>
                    <th>Skrivena</th>
                    <th>Akcija</th>
                </tr>
            </thead>

            <tbody>
            <?php  $_smarty_tpl->tpl_vars['vijest'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('vijesti')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['vijest']->key => $_smarty_tpl->tpl_vars['vijest']->value){
?>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><?php echo $_smarty_tpl->tpl_vars['vijest']->value['id'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['vijest']->value['title'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['vijest']->value['date'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['vijest']->value['skrivena'];?>
</td>
                    <td class="actions"><a href="admin.php?page=news&akcija=uredi&id=<?php echo $_smarty_tpl->tpl_vars['vijest']->value['id'];?>
" title="Uredi ovu vijest"><img src="template/img/icons/edit.png" alt="" /></a><a href="admin.php?page=news&akcija=lista&brisi=<?php echo $_smarty_tpl->tpl_vars['vijest']->value['id'];?>
" title="Izbriši ovu vijest"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             <?php }} else { ?>
             <tr>
             <td colspan="6">Nema ni jedne obavijesti.</td>
             </tr>
             <?php } ?>

            </tbody>

        </table>
    </div>
</div>
                

       


</div>
        
        
