<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:57:40
         compiled from "template/view_client.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9763656285a5162742b7d52-60026744%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9fbed5251e59777b9f761bc8775c28b73c678aa8' => 
    array (
      0 => 'template/view_client.tpl',
      1 => 1440795714,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9763656285a5162742b7d52-60026744',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Pregled Klijenta</h1>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

  
       
<div class="bloc left">
    <div class="title">
        Informacije
    </div>
    <div class="content">
            <table class="noalt">
                <thead>
                    <tr>
                        <th colspan="2"><em>Klijent</em></th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><h4>Ime:</h4></td>
                        <td><?php echo $_smarty_tpl->getVariable('ime')->value;?>
</td>
                    </tr>
                    <tr>

                        <td><h4>Prezime:</h4></td>
                        <td><?php echo $_smarty_tpl->getVariable('prezime')->value;?>
</td>
                    </tr>
                    <tr>
                        <td><h4>Email:</h4></td>
                        <td><?php echo $_smarty_tpl->getVariable('email')->value;?>
</td>
                    </tr>
                    <tr>
                        <td><h4>Broj Slotova:</h4></td>
                        <td><?php echo $_smarty_tpl->getVariable('slotovi')->value;?>
</td>
                    </tr>                    
                    
                </tbody>
            </table>
                    <br />
                    <center>
        <div class="submit" style="float:left;">
            <form action="admin.php" method="get" >
            <input type="hidden" name="page" value="klijenti" />    
            <input type="hidden" name="akcija" value="lista" /> 
            <input type="hidden" name="brisi" value="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" /> 
            <input type="submit" value="Izbriši Klijenta" />
            </form>
        </div>
        
      <div style="float:right;">
         <div class="submit" style="float:left; margin-right:10px;">
            <form action="admin.php" method="get">
            <input type="hidden" name="page" value="klijenti" />    
            <input type="hidden" name="akcija" value="uredi" /> 
            <input type="hidden" name="id" value="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" /> 
            <input type="submit" value="Uredi Klijenta" />
            </form>
        </div>     
        
        <div class="submit" style="float:right;">
            <input type="reset" class="black" value="Logiraj se kao klijent" onclick="window.open('<?php echo $_smarty_tpl->getVariable('link')->value;?>
index.php?support=<?php echo $_smarty_tpl->getVariable('id')->value;?>
');" />
        </div> 
      </div>        
                    </center>
                    <div style="clear:both"></div>
    </div>
   
</div>
            
            
<div class="bloc right">

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
                    <th>IP</th>
                    <th>Broj Slotova</th>
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
                    <td><?php echo $_smarty_tpl->tpl_vars['server']->value['ime'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['server']->value['ip'];?>
:<?php echo $_smarty_tpl->tpl_vars['server']->value['port'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['server']->value['slotovi'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['server']->value['status'];?>
</td>
                    <td class="actions"><a href="admin.php?page=serveri&akcija=lista&brisi=<?php echo $_smarty_tpl->tpl_vars['server']->value['id'];?>
" title="Izbriši ovaj server"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             <?php }} else { ?>
             <tr>
             <td colspan="7">Nema ni jednog servera</td>
             </tr>
             <?php } ?>
	      <tr> <td colspan="7">
        <div class="submit" style="float:left;">
	    <input type="submit" value="Dodaj server" onclick="window.open('admin.php?page=serveri&akcija=dodaj&korak=2&klijent=<?php echo $_smarty_tpl->getVariable('id')->value;?>
');" />
        </div> </td>
	      </tr>
            </tbody>
        </table>

    </div>
</div>            


<div class="cb"></div>

</div>
        
        
