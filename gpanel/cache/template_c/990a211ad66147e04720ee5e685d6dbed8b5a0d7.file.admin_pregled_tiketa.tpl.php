<?php /* Smarty version Smarty-3.0.7, created on 2018-01-08 11:17:50
         compiled from "template/admin_pregled_tiketa.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6592623905a53454ed68ac8-24821251%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '990a211ad66147e04720ee5e685d6dbed8b5a0d7' => 
    array (
      0 => 'template/admin_pregled_tiketa.tpl',
      1 => 1440795682,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6592623905a53454ed68ac8-24821251',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Pregled Tiketa</h1>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

  
       
<div class="bloc">
    <div class="title">
        Tiket
    </div>
    <div class="content">

         <table class="noalt">
            <tbody>
                <?php  $_smarty_tpl->tpl_vars['odgovor'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('odgovori')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['odgovor']->key => $_smarty_tpl->tpl_vars['odgovor']->value){
?>
                <tr>
                    <td>
                        <p>

                            <strong><?php echo $_smarty_tpl->tpl_vars['odgovor']->value['korisnik'];?>
</strong><br/>
                            <em><?php echo $_smarty_tpl->tpl_vars['odgovor']->value['vrijeme_odgovora'];?>
</em><br/>
<?php echo $_smarty_tpl->tpl_vars['odgovor']->value['odgovor'];?>

                        </p>
                    </td>
                </tr>
                <?php }} ?>
                      
                                      
            </tbody>
        </table>       
        <form action="" method="post">
        <div class="input textarea">
            <label for="odgovor">Odgovor</label>
            <textarea name="odgovor" id="odgovor" rows="7" cols="4"></textarea>
        </div> 
        <div class="submit">
            <center>
            <input type="submit" name="spremi_izmjene" value="Odgovori" />
            <input type="reset" class="black" value="Zatvori" onclick="document.location = '<?php echo $_smarty_tpl->getVariable('link')->value;?>
admin.php?page=tiket&akcija=pregled&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&zatvori=yes';" />
            <input type="reset" class="black" value="Izbriši" onclick="document.location = '<?php echo $_smarty_tpl->getVariable('link')->value;?>
admin.php?page=podrska&status=Neodgovoren&brisi=<?php echo $_smarty_tpl->getVariable('id')->value;?>
';" />
            </center>
        </div>            
        </form>
        </div>
    </div>
</div>
            
                     




</div>
        
        
