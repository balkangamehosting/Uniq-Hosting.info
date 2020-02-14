<?php /* Smarty version Smarty-3.0.7, created on 2018-01-08 16:50:55
         compiled from "template/client_edit.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6732415745a53935fdc41e6-78009088%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '08a53659bdee3470febca7498d4c3043a280ec45' => 
    array (
      0 => 'template/client_edit.tpl',
      1 => 1440795684,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6732415745a53935fdc41e6-78009088',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Uređivanje Klijenta</h1>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

<div class="bloc">
    <div class="title">Informacije o Klijentu</div>
    <div class="content">
    <form action="" method="post">
        <input type="hidden" name="uredi_klijenta" value="1" />
        <div class="input long">
            <label for="fname">Ime:</label>
            <input type="text" name="fname" id="fname" value="<?php echo $_smarty_tpl->getVariable('fname')->value;?>
" />
        </div>                
        <div class="input long">
            <label for="lname">Prezime:</label>
            <input type="text" name="lname" id="lname" value="<?php echo $_smarty_tpl->getVariable('lname')->value;?>
" />
        </div>
        <div class="input long">
            <label for="email">Email:</label>
            <input type="text" name="email" id="email" value="<?php echo $_smarty_tpl->getVariable('email')->value;?>
" />
        </div>        
        <div class="input">
            <label class="label">Resetuj Lozinku</label>
            <input type="radio" id="radio1" name="podatci" value="1"  /><label for="radio1" class="inline">Da</label> <br/>
            <input type="radio" id="radio2"  name="podatci" value="0" checked="checked" /> <label for="radio2" class="inline">Ne</label>
        </div>    
        <div class="submit">
            <input type="submit" value="Uredi" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
