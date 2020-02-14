<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:57:42
         compiled from "template/dodaj_server.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5389092595a516276a354e1-90211486%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '539917c11e74b65289244f4abb56f490740ad23c' => 
    array (
      0 => 'template/dodaj_server.tpl',
      1 => 1440795688,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5389092595a516276a354e1-90211486',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
﻿<div id="content">
        
        
        
<h1>Dodavanje Servera</h1>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

<div class="bloc">
    <div class="title">Informacije o Serveru</div>
    <div class="content">
   

<?php if ($_smarty_tpl->getVariable('korak')->value==1){?> 
        <form action="" method="get">
            <input type="hidden" name="page" value="serveri" /> 
            <input type="hidden" name="akcija" value="dodaj" /> 
            <input type="hidden" name="korak" value="2" />    
        <div class="input">
            <label for="klijent">Odaberi Klijenta</label>
            <select name="klijent" id="klijent">
                <?php  $_smarty_tpl->tpl_vars['klijent'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('klijenti')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['klijent']->key => $_smarty_tpl->tpl_vars['klijent']->value){
?>
                <option value="<?php echo $_smarty_tpl->tpl_vars['klijent']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['klijent']->value['fname'];?>
 <?php echo $_smarty_tpl->tpl_vars['klijent']->value['lname'];?>
</option>
                <?php }} else { ?>
                    <option value="0">Nema klijenata</option>
                <?php } ?>
            </select>
        </div>  
        <div class="submit">
            <input type="submit" value="Dalje" />
        </div>  
       </form>             
 <?php }?>
     
 
 <?php if ($_smarty_tpl->getVariable('korak')->value==2){?>
 
       <form action="" method="get">
            <input type="hidden" name="page" value="serveri" /> 
            <input type="hidden" name="akcija" value="dodaj" />
            <input type="hidden" name="klijent" value="<?php echo $_smarty_tpl->getVariable('klijent')->value;?>
" />
            <input type="hidden" name="korak" value="3" />    
        <div class="input">
            <label for="masina">Odaberi Mašinu</label>
            <select name="masina" id="masina">
                <?php  $_smarty_tpl->tpl_vars['masina'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('masine')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['masina']->key => $_smarty_tpl->tpl_vars['masina']->value){
?>
                <option value="<?php echo $_smarty_tpl->tpl_vars['masina']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['masina']->value['name'];?>
</option>
                <?php }} else { ?>
                    <option value="0">Nema mašina</option>
                <?php } ?>
            </select>
        </div>  
        <div class="submit">
            <input type="submit" value="Dalje" />
        </div>  
       </form>
     
 <?php }?>   
 
 
  <?php if ($_smarty_tpl->getVariable('korak')->value==3){?>
 
       <form action="" method="get">
            <input type="hidden" name="page" value="serveri" /> 
            <input type="hidden" name="akcija" value="dodaj" />
            <input type="hidden" name="klijent" value="<?php echo $_smarty_tpl->getVariable('klijent')->value;?>
" />
            <input type="hidden" name="masina" value="<?php echo $_smarty_tpl->getVariable('masina')->value;?>
" /> 
            <input type="hidden" name="korak" value="4" />  
        <div class="input">
            <label for="ip">Odaberi IP</label>
            <select name="ip" id="ip">
                <?php  $_smarty_tpl->tpl_vars['ip'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('ip_adrese')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['ip']->key => $_smarty_tpl->tpl_vars['ip']->value){
?>
                <option value="<?php echo $_smarty_tpl->tpl_vars['ip']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['ip']->value['ip'];?>
</option>
                <?php }} else { ?>
                    <option value="0">Nema ip adresa</option>
                <?php } ?>
            </select>
        </div>  
        <div class="submit">
            <input type="submit" value="Dalje" />
        </div>  
       </form>
     
 <?php }?>
 
 
 
  <?php if ($_smarty_tpl->getVariable('korak')->value==4){?>
 
       <form action="" method="get">
            <input type="hidden" name="page" value="serveri" /> 
            <input type="hidden" name="akcija" value="dodaj" />
            <input type="hidden" name="klijent" value="<?php echo $_smarty_tpl->getVariable('klijent')->value;?>
" />
            <input type="hidden" name="masina" value="<?php echo $_smarty_tpl->getVariable('masina')->value;?>
" /> 
            <input type="hidden" name="ip" value="<?php echo $_smarty_tpl->getVariable('ip')->value;?>
" />
            <input type="hidden" name="korak" value="7" />  
        <div class="input">
            <label for="mod">Odaberi Mod</label>
            <select name="mod" id="mod">
                <?php  $_smarty_tpl->tpl_vars['mod'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('modovi')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['mod']->key => $_smarty_tpl->tpl_vars['mod']->value){
?>
                <option value="<?php echo $_smarty_tpl->tpl_vars['mod']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['mod']->value['ime'];?>
</option>
                <?php }} else { ?>
                    <option value="0">Nema modova</option>
                <?php } ?>
            </select>
        </div>  
        <div class="submit">
            <input type="submit" value="Dalje" />
        </div>  
       </form>
     
 <?php }?> 
 
   <?php if ($_smarty_tpl->getVariable('korak')->value==7){?>
 
       <form action="" method="get">
            <input type="hidden" name="page" value="serveri" /> 
            <input type="hidden" name="akcija" value="dodaj" />
            <input type="hidden" name="klijent" value="<?php echo $_smarty_tpl->getVariable('klijent')->value;?>
" />
            <input type="hidden" name="masina" value="<?php echo $_smarty_tpl->getVariable('masina')->value;?>
" /> 
            <input type="hidden" name="ip" value="<?php echo $_smarty_tpl->getVariable('ip')->value;?>
" />	
			<input type="hidden" name="mod" value="<?php echo $_smarty_tpl->getVariable('mod')->value;?>
" /> 			
            <input type="hidden" name="korak" value="8" />  
        <div class="input">
            <label for="vrsta">Vrsta servera</label>
            <select name="vrsta" id="vrsta">
                <option value="1">Plaćen server</option>
				<option value="2">Free server</option>
            </select>
        </div> 
        <div class="submit">
            <input type="submit" value="Dalje" />
        </div>  
       </form>
     
 <?php }?> 
 
<?php if ($_smarty_tpl->getVariable('korak')->value==8){?>
	<?php if ($_smarty_tpl->getVariable('vrsta')->value==1){?>
       <form action="" method="get">
            <input type="hidden" name="page" value="serveri" /> 
            <input type="hidden" name="akcija" value="dodaj" />
            <input type="hidden" name="klijent" value="<?php echo $_smarty_tpl->getVariable('klijent')->value;?>
" />
            <input type="hidden" name="masina" value="<?php echo $_smarty_tpl->getVariable('masina')->value;?>
" /> 
            <input type="hidden" name="ip" value="<?php echo $_smarty_tpl->getVariable('ip')->value;?>
" />	
			<input type="hidden" name="mod" value="<?php echo $_smarty_tpl->getVariable('mod')->value;?>
" /> 
			<input type="hidden" name="vrsta" value="<?php echo $_smarty_tpl->getVariable('vrsta')->value;?>
" />				
            <input type="hidden" name="korak" value="5" />  
        <div class="input long">
            <label for="uplatnica">Slika uplatnice</label>
            <input type="text" name="uplatnica" id="uplatnica" />
        </div>    
        <div class="submit">
            <input type="submit" value="Dalje" />
        </div>  
       </form>	
	<?php }?>
	
	<?php if ($_smarty_tpl->getVariable('vrsta')->value==2){?>
       <form action="admin.php?page=serveri&akcija=lista" method="post">
             <input type="hidden" name="klijent" value="<?php echo $_smarty_tpl->getVariable('klijent')->value;?>
" />
            <input type="hidden" name="masina" value="<?php echo $_smarty_tpl->getVariable('masina')->value;?>
" /> 
            <input type="hidden" name="ip" value="<?php echo $_smarty_tpl->getVariable('ip')->value;?>
" />	
			<input type="hidden" name="mod" value="<?php echo $_smarty_tpl->getVariable('mod')->value;?>
" /> 
			<input type="hidden" name="vrsta" value="<?php echo $_smarty_tpl->getVariable('vrsta')->value;?>
" />
			<input type="hidden" name="free" value="1" /> 
			<input type="hidden" name="uplatnica" value="" /> 

       <div class="input long">
            <label for="name">Ime Servera</label>
            <input type="text" name="name" id="name" />
        </div>             
            
       <div class="input long">
            <label for="name">Cena servera</label>
            <input type="text" name="cena" id="cena" />
        </div>          
		
        <div class="input long">
            <label for="slotovi">Broj slotova</label>
            <input type="text" name="slotovi" id="slotovi" />
        </div>  
        
        <div class="input long">
            <label for="mapa">Mapa</label>
            <input type="text" name="mapa" id="mapa" value="<?php echo $_smarty_tpl->getVariable('mapa')->value;?>
" />
        </div>         
            
        <div class="input long">
            <label for="port">Port</label>
            <input type="text" name="port" id="port" value="<?php echo $_smarty_tpl->getVariable('port')->value;?>
" />
        </div> 

        <div class="input long">
            <label for="fps">FPS</label>
            <input type="text" name="fps" id="fps" value="300" />
        </div>         
 
       <div class="input">
            <label for="istice">Ističe</label>
            <input type="text" class="datepicker" name="istice" id="istice"/>
        </div>            
 
         <div class="input">
            <label for="status">Status</label>
            <select name="status" id="status">
                <option value="Aktivan">Aktivan</option>
                <option value="Aktivan">Neaktivan</option>
            </select>
        </div>             
            
        <div class="submit">
            <input type="submit" name="dodaj_server" value="Dodaj" />
        </div>  
       </form>	
	<?php }?>  
 <?php }?> 
 
   <?php if ($_smarty_tpl->getVariable('korak')->value==5){?>
 
       <form action="admin.php?page=serveri&akcija=lista" method="post">
            <input type="hidden" name="klijent" value="<?php echo $_smarty_tpl->getVariable('klijent')->value;?>
" />
            <input type="hidden" name="masina" value="<?php echo $_smarty_tpl->getVariable('masina')->value;?>
" /> 
            <input type="hidden" name="ip" value="<?php echo $_smarty_tpl->getVariable('ip')->value;?>
" />	
			<input type="hidden" name="mod" value="<?php echo $_smarty_tpl->getVariable('mod')->value;?>
" /> 
			<input type="hidden" name="vrsta" value="<?php echo $_smarty_tpl->getVariable('vrsta')->value;?>
" />
			<input type="hidden" name="uplatnica" value="<?php echo $_smarty_tpl->getVariable('uplatnica')->value;?>
" /> 
			<input type="hidden" name="free" value="0" /> 

       <div class="input long">
            <label for="name">Ime Servera</label>
            <input type="text" name="name" id="name" />
        </div>             
            
       <div class="input long">
            <label for="name">Cena servera</label>
            <input type="text" name="cena" id="cena" />
        </div>          
		
        <div class="input long">
            <label for="slotovi">Broj slotova</label>
            <input type="text" name="slotovi" id="slotovi" />
        </div>  
        
        <div class="input long">
            <label for="mapa">Mapa</label>
            <input type="text" name="mapa" id="mapa" value="de_dust2" />
        </div>         
            
        <div class="input long">
            <label for="port">Port</label>
            <input type="text" name="port" id="port" value="<?php echo $_smarty_tpl->getVariable('port')->value;?>
" />
        </div> 

        <div class="input long">
            <label for="fps">FPS</label>
            <input type="text" name="fps" id="fps" value="300" />
        </div>         
 
       <div class="input">
            <label for="istice">Ističe</label>
            <input type="text" class="datepicker" name="istice" id="istice"/>
        </div>            
 
         <div class="input">
            <label for="status">Status</label>
            <select name="status" id="status">
                <option value="Aktivan">Aktivan</option>
                <option value="Aktivan">Neaktivan</option>
            </select>
        </div>             
            
        <div class="submit">
            <input type="submit" name="dodaj_server" value="Dodaj" />
        </div>  
       </form>
     
 <?php }?>
 
     
    </div>
</div>    
       


</div>
        
        
