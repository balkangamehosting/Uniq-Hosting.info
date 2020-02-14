<?php /* Smarty version Smarty-3.0.7, created on 2018-01-09 11:29:41
         compiled from "template/uredi_obavjest.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1779686625a54999558c549-55599716%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c0e37989b1b8ffac28d20262d8d254da873bc8fc' => 
    array (
      0 => 'template/uredi_obavjest.tpl',
      1 => 1440795712,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1779686625a54999558c549-55599716',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Uređivanje Obavijesti</h1>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

<div class="bloc">
    <div class="title">Sadržaj</div>
    <div class="content">
    <form action="" method="post">
        <div class="input long">
            <label for="naslov">Naslov:</label>
            <input type="text" name="naslov" id="naslov" value="<?php echo $_smarty_tpl->getVariable('naslov')->value;?>
" />
        </div>                
        <div class="input">
            <label for="input4">Datum</label>
            <input type="text" name="datum" class="datepicker" id="input4" value="<?php echo $_smarty_tpl->getVariable('datum')->value;?>
" />
        </div>
        <div class="input textarea">
            <label for="text">Text</label>
            <textarea name="text" id="text" rows="7" class="wysiwyg" cols="4">
<?php echo $_smarty_tpl->getVariable('text')->value;?>

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
        
        
