<?php /* Smarty version Smarty-3.0.7, created on 2018-01-21 09:51:29
         compiled from "template/dodaj_mod.tpl" */ ?>
<?php /*%%SmartyHeaderCode:850567045a6454912741a4-85805213%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4282e55b1548cfd6f2ecdcc455a8cf0df5d51f10' => 
    array (
      0 => 'template/dodaj_mod.tpl',
      1 => 1440795686,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '850567045a6454912741a4-85805213',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Dodavanje Moda</h1>
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
            <input type="text" name="ime" id="ime" />
        </div>      
        <div class="input long">
            <label for="igra">Igra:</label>
            <input type="text" name="igra" id="igra" value="CS" />
        </div>                
        <div class="input long">
            <label for="putanja">Putanja:</label>
            <input type="text" name="putanja" id="putanja" />
        </div>
        <div class="input long">
            <label for="putanja">Default mapa:</label>
            <input type="text" name="mapa" id="mapa" />
        </div>
         <div class="input textarea">
            <label for="komanda">Komanda</label>
            <textarea name="komanda" id="komanda" rows="7" cols="4"><?php echo $_smarty_tpl->getVariable('komanda')->value;?>
</textarea>
        </div>      
        <div class="input">
            <label class="label">Skriven</label>
            <input type="radio" id="radio1" name="skriven" value="1" checked="checked" /><label for="radio1" class="inline">Da</label> <br/>
            <input type="radio" id="radio2"  name="skriven" value="0" /> <label for="radio2" class="inline">Ne</label>
        </div>    
        <div class="submit">
            <input type="submit" name="uredi_mod" value="Dodaj" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
