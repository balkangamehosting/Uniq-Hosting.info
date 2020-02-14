<?php /* Smarty version Smarty-3.0.7, created on 2018-01-09 01:36:40
         compiled from "template/uredi_masinu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6899400635a540e98124110-87019975%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '302634937501b14e6f4888908ef9b683ba59fe3d' => 
    array (
      0 => 'template/uredi_masinu.tpl',
      1 => 1440795710,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6899400635a540e98124110-87019975',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Uređivanje Mašine</h1>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

<div class="bloc">
    <div class="title">Informacije o Mašini</div>
    <div class="content">
    <form action="" method="post">
        <input type="hidden" name="uredi_klijenta" value="1" />
        <div class="input long">
            <label for="ime">Ime:</label>
            <input type="text" name="ime" id="ime" value="<?php echo $_smarty_tpl->getVariable('ime')->value;?>
" />
        </div>                
        <div class="input long">
            <label for="ip">IP:</label>
            <input type="text" name="ip" id="ip" value="<?php echo $_smarty_tpl->getVariable('ip')->value;?>
" />
        </div>
     
        <div class="input long">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" value="<?php echo $_smarty_tpl->getVariable('username')->value;?>
" />
        </div>  
        
        <div class="input long">
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" value="<?php echo $_smarty_tpl->getVariable('password')->value;?>
" />
        </div>  
        
        <div class="input long">
            <label for="ftp_port">FTP Port:</label>
            <input type="text" name="ftp_port" id="ftp_port" value="<?php echo $_smarty_tpl->getVariable('ftp_port')->value;?>
" />
        </div>  
        
        <div class="input long">
            <label for="ssh_port">SSH Port:</label>
            <input type="text" name="ssh_port" id="ssh_port" value="<?php echo $_smarty_tpl->getVariable('ssh_port')->value;?>
" />
        </div>  
        
       <div class="input long">
            <label for="lokacija">Lokacija:</label>
            <input type="text" name="lokacija" id="lokacija" value="<?php echo $_smarty_tpl->getVariable('lokacija')->value;?>
" />
        </div>           
        
        <div class="submit">
            <input type="submit" name="dodaj_masinu" value="Izmijeni" />
        </div>  
    </form>    
    </div>
</div>    
       

<div class="bloc left">

    <div class="title">
        Lista IP Adresa
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>Id</th>
                    <th>IP</th>
                    <th>Akcija</th>
                </tr>
            </thead>

            <tbody>
            <?php  $_smarty_tpl->tpl_vars['ip_adresa'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('ip_adrese')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['ip_adresa']->key => $_smarty_tpl->tpl_vars['ip_adresa']->value){
?>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><?php echo $_smarty_tpl->tpl_vars['ip_adresa']->value['id'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['ip_adresa']->value['ip'];?>
</td>
                    <td class="actions"><a href="admin.php?page=box&akcija=uredi&id=<?php echo $_smarty_tpl->getVariable('id')->value;?>
&brisiip=<?php echo $_smarty_tpl->tpl_vars['ip_adresa']->value['id'];?>
" title="Izbriši ovu ip adresu"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             <?php }} else { ?>
             <tr>
             <td colspan="4">Nema ni jedne ip adrese</td>
             </tr>
             <?php } ?>

            </tbody>

        </table>
    </div>
</div>                   
  
                 
<div class="bloc right">

    <div class="title">
        Dodaj IP adresu
    </div>
    <div class="content">
    <form action="" method="post">
        <div class="input long">
            <label for="ip">IP:</label>
            <input type="text" name="ip" id="ip" />
        </div>                
        <div class="submit">
            <input type="submit" name="dodaj_ip" value="Dodaj" />
        </div>  
    </form>           
    </div>
</div>                 
                 
<div class="cb"></div>                 
                 

</div>
        
        
