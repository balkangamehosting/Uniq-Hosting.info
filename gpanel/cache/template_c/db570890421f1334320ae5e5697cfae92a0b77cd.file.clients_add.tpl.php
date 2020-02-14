<?php /* Smarty version Smarty-3.0.7, created on 2018-01-08 16:08:18
         compiled from "template/clients_add.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14961575485a5389627d4152-32258786%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'db570890421f1334320ae5e5697cfae92a0b77cd' => 
    array (
      0 => 'template/clients_add.tpl',
      1 => 1440795682,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14961575485a5389627d4152-32258786',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Dodavanje Klijenta</h1>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

<div class="bloc">
    <div class="title">Informacije o Klijentu</div>
    <div class="content">
    <form action="" method="post">
        <div class="input long">
            <label for="fname">Ime:</label>
            <input type="text" name="fname" id="fname" />
        </div>                
        <div class="input long">
            <label for="lname">Prezime:</label>
            <input type="text" name="lname" id="lname" />
        </div>
        <div class="input long">
            <label for="email">Email:</label>
            <input type="text" name="email" id="email" />
        </div>        
        <div class="input">
            <label class="label">Pošalji Podake</label>
            <input type="radio" id="radio1" name="podatci" value="1"  checked="checked"/><label for="radio1" class="inline">Da</label> <br/>
            <input type="radio" id="radio2"  name="podatci" value="0" /> <label for="radio2" class="inline">Ne</label>
        </div>    
        <div class="submit">
            <input type="submit" name="dodaj_klijenta" value="Dodaj" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
