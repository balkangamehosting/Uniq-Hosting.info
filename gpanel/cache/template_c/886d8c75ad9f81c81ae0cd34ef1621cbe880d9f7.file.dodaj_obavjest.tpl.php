<?php /* Smarty version Smarty-3.0.7, created on 2018-01-16 00:47:05
         compiled from "template/dodaj_obavjest.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7336150395a5d3d799f52c4-61494038%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '886d8c75ad9f81c81ae0cd34ef1621cbe880d9f7' => 
    array (
      0 => 'template/dodaj_obavjest.tpl',
      1 => 1440795686,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7336150395a5d3d799f52c4-61494038',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Dodavanje Obavijesti</h1>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

<div class="bloc">
    <div class="title">Sadržaj</div>
    <div class="content">
    <form action="" method="post">
        <div class="input long">
            <label for="naslov">Naslov:</label>
            <input type="text" name="naslov" id="naslov" />
        </div>                
        <div class="input">
            <label for="input4">Datum</label>
            <input type="text" name="datum" class="datepicker" id="input4"/>
        </div>
        <div class="input textarea">
            <label for="text">Text</label>
            <textarea name="text" id="text" rows="7" class="wysiwyg" cols="4">
            </textarea>
        </div>  
        <div class="input">
            <label class="label">Skrivena</label>
            <input type="radio" id="radio1" name="skriven" value="1" checked="checked" /><label for="radio1" class="inline">Da</label> <br/>
            <input type="radio" id="radio2"  name="skriven" value="0" /> <label for="radio2" class="inline">Ne</label>
        </div>    
        <div class="submit">
            <input type="submit" name="dodaj" value="Dodaj" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
