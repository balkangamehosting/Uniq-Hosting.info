<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 23:26:41
         compiled from "template/dodaj_radnika.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17590778025a529ea12915d1-95875471%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '573e22c368cd500e996e083b4e6932a6454fdc95' => 
    array (
      0 => 'template/dodaj_radnika.tpl',
      1 => 1440795688,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17590778025a529ea12915d1-95875471',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Dodavanje Radnika</h1>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

<div class="bloc">
    <div class="title">Informacije o Profilu</div>
    <div class="content">
    <form action="" method="post">
        <div class="input long">
            <label for="ime">Ime:</label>
            <input type="text" name="ime" id="ime" />
        </div>                
        <div class="input long">
            <label for="prezime">Prezime:</label>
            <input type="text" name="prezime" id="prezime" />
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
            <label for="email">Email:</label>
            <input type="text" name="email" id="email"/>
        </div> 
        
        <div class="input">
            <label for="status">Status</label>
            <select name="status" id="status">
                <option value="admin">Admin</option>
                <option value="support">Support</option>
            </select>
        </div>        
        <div class="submit">
            <input type="submit" name="dodaj_radnika" value="Dodaj" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
