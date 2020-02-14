<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:57:24
         compiled from "template/profile.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11600756405a5162649ccae8-64051912%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b050774c33ee437a58c5b770c58ad75ddfc21c36' => 
    array (
      0 => 'template/profile.tpl',
      1 => 1440795706,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11600756405a5162649ccae8-64051912',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Izmene Administratorkog Profila</h1>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

<div class="bloc">
    <div class="title">Informacije o Profilu</div>
    <div class="content">
    <form action="" method="post">
        <div class="input long">
            <label for="ime">Ime:</label>
            <input type="text" name="ime" id="ime" value="<?php echo $_smarty_tpl->getVariable('ime')->value;?>
" />
        </div>                
        <div class="input long">
            <label for="prezime">Prezime:</label>
            <input type="text" name="prezime" id="prezime" value="<?php echo $_smarty_tpl->getVariable('prezime')->value;?>
" />
        </div>
        <div class="input long">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" value="<?php echo $_smarty_tpl->getVariable('username')->value;?>
" />
        </div>  
        
        <div class="input long">
            <label for="password">Password (Nije Vidljiv):</label>
            <input type="password" name="password" id="password" value="<?php echo $_smarty_tpl->getVariable('password')->value;?>
" />
        </div>     
        
        <div class="input long">
            <label for="email">Email:</label>
            <input type="text" name="email" id="email" value="<?php echo $_smarty_tpl->getVariable('email')->value;?>
" />
        </div>     
        <div class="submit">
            <input type="submit" name="uredi_profil" value="Uredi" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
