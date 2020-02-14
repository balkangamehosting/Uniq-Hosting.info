<?php /* Smarty version Smarty-3.0.7, created on 2018-01-09 11:17:51
         compiled from "template/dodaj_masinu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:19937402455a5496cf648b55-92152678%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '720a705272eee0dd060c9d59b7bd1e31fe8599ae' => 
    array (
      0 => 'template/dodaj_masinu.tpl',
      1 => 1440795684,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '19937402455a5496cf648b55-92152678',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Dodavanje Mašine</h1>
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
            <input type="text" name="ime" id="ime" />
        </div>                
        <div class="input long">
            <label for="ip">IP:</label>
            <input type="text" name="ip" id="ip" />
        </div>
     
        <div class="input long">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" />
        </div>  
        
        <div class="input long">
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" />
        </div>  
        
        <div class="input long">
            <label for="ftp_port">FTP Port:</label>
            <input type="text" name="ftp_port" id="ftp_port" />
        </div>  
        
        <div class="input long">
            <label for="ssh_port">SSH Port:</label>
            <input type="text" name="ssh_port" id="ssh_port" />
        </div>  
        
       <div class="input long">
            <label for="lokacija">Lokacija:</label>
            <input type="text" name="lokacija" id="lokacija" />
        </div>           
        
        <div class="submit">
            <input type="submit" name="dodaj_masinu" value="Dodaj" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
