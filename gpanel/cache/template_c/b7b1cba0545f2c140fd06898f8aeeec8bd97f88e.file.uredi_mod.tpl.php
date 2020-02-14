<?php /* Smarty version Smarty-3.0.7, created on 2018-01-11 21:10:01
         compiled from "template/uredi_mod.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13595732105a57c49935efa2-93585715%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b7b1cba0545f2c140fd06898f8aeeec8bd97f88e' => 
    array (
      0 => 'template/uredi_mod.tpl',
      1 => 1440795710,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13595732105a57c49935efa2-93585715',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Uređivanje Moda</h1>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

<div class="bloc">
    <div class="title">Informacije o Modu</div>
    <div class="content">
    <form action="" method="post">
        <input type="hidden" name="uredi_klijenta" value="1" />
        <div class="input long">
            <label for="ime">Ime:</label>
            <input type="text" name="ime" id="ime" value="<?php echo $_smarty_tpl->getVariable('ime')->value;?>
" />
        </div>       
        <div class="input long">
            <label for="igra">Igra:</label>
            <input type="text" name="igra" id="igra" value="<?php echo $_smarty_tpl->getVariable('igra')->value;?>
" />
        </div>         
        <div class="input long">
            <label for="putanja">Putanja:</label>
            <input type="text" name="putanja" id="putanja" value="<?php echo $_smarty_tpl->getVariable('putanja')->value;?>
" />
        </div>
        <div class="input long">
            <label for="putanja">Default mapa:</label>
            <input type="text" name="mapa" id="mapa" value="<?php echo $_smarty_tpl->getVariable('mapa')->value;?>
" />
        </div>
		<div class="input textarea">
            <label for="komanda">Komanda</label>
            <textarea name="komanda" id="komanda" rows="7" cols="4"><?php echo $_smarty_tpl->getVariable('komanda')->value;?>
</textarea>
        </div>      
        <div class="input">
            <label class="label">Skriven</label>
            <input type="radio" id="radio1" name="skriven" value="1" <?php if ($_smarty_tpl->getVariable('hidden')->value==1){?>checked="checked"<?php }?> /><label for="radio1" class="inline">Da</label> <br/>
            <input type="radio" id="radio2"  name="skriven" value="0" <?php if ($_smarty_tpl->getVariable('hidden')->value==0){?>checked="checked"<?php }?> /> <label for="radio2" class="inline">Ne</label>
        </div>    
        <div class="submit">
            <input type="submit" name="uredi_mod" value="Uredi" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
