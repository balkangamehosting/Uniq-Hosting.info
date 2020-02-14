<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:58:11
         compiled from "template/uredi_server.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14724259145a51629386d3d9-94524688%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'de464c0ab0a1f8dc330bc7441c8379c5ddf8a501' => 
    array (
      0 => 'template/uredi_server.tpl',
      1 => 1440795712,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14724259145a51629386d3d9-94524688',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        
        
<h1>Uređivanje Servera</h1>
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

  
       
<div class="bloc">
    <div class="title">
        Informacije
    </div>
    <div class="content">
       <form action="" method="post">
        <div class="input long">
            <label for="ime">Ime Servera</label>
            <input type="text" name="ime" id="ime" value="<?php echo $_smarty_tpl->getVariable('ime')->value;?>
" />
        </div>    
		
        <div class="input long">
            <label for="ime">Cena Servera</label>
            <input type="text" name="cena" id="cena" value="<?php echo $_smarty_tpl->getVariable('cena')->value;?>
" />
        </div>    		
		
        <div class="input">
            <label for="vlasnik">Vlasnik id</label>
            <input type="text" name="vlasnik" id="vlasnik" value="<?php echo $_smarty_tpl->getVariable('vlasnik')->value;?>
" />
        </div>   
        
        <div class="input">
            <label for="mapa">Mapa</label>
            <input type="text" name="mapa" id="mapa" value="<?php echo $_smarty_tpl->getVariable('mapa')->value;?>
" />
        </div>        

        <div class="input">
            <label for="port">Port</label>
            <input type="text" name="port" id="port" value="<?php echo $_smarty_tpl->getVariable('port')->value;?>
" />
        </div>
        
        <div class="input">
            <label for="fps">FPS</label>
            <input type="text" name="fps" id="fps" value="<?php echo $_smarty_tpl->getVariable('fps')->value;?>
" />
        </div>      
		
        <?php if ($_smarty_tpl->getVariable('admin')->value['status']=="support"){?>        
        <div class="input">
            <label for="slotovi">Slotovi</label>
            <input type="text" name="slotovi" readonly="readonly" id="slotovi" value="<?php echo $_smarty_tpl->getVariable('slotovi')->value;?>
" />
        </div>  
		<?php }?>
        <?php if ($_smarty_tpl->getVariable('admin')->value['status']=="admin"){?>        
        <div class="input">
            <label for="slotovi">Slotovi</label>
            <input type="text" name="slotovi" id="slotovi" value="<?php echo $_smarty_tpl->getVariable('slotovi')->value;?>
" />
        </div>  
		<?php }?>
		<?php if ($_smarty_tpl->getVariable('admin')->value['status']=="support"){?>
        <div class="input">
            <label for="istice">Ističe</label>
            <input type="text" class="datepickerr" readonly="readonly" name="istice" value="<?php echo $_smarty_tpl->getVariable('istice')->value;?>
" id="istice"/>Radnicima onemogućena opcija
        </div> 		
		<?php }?>
		<?php if ($_smarty_tpl->getVariable('admin')->value['status']=="admin"){?>
        <div class="input">
            <label for="istice">Ističe</label>
            <input type="text" class="datepicker" readonly="readonly" name="istice" value="<?php echo $_smarty_tpl->getVariable('istice')->value;?>
" id="istice"/>
        </div> 
        <?php }?>      
        <div class="input">
            <label for="status">Status</label>
            <select name="status" id="status">
                <option value="Aktivan">Aktivan</option>
                <option value="Suspendovan" <?php if ($_smarty_tpl->getVariable('status')->value=="Suspendovan"){?> selected="1" <?php }?>>Suspendovan</option>
            </select>
        </div>
		<?php if ($_smarty_tpl->getVariable('admin')->value['status']=="admin"){?>
        <div class="input">
            <label for="free">Free</label>
            <select name="free" id="free">
                <option value="0">Ne</option>
                <option value="1" <?php if ($_smarty_tpl->getVariable('free')->value=="1"){?> selected="1" <?php }?>>Da</option>
            </select>
        </div>
		<?php }?>
		<?php if ($_smarty_tpl->getVariable('admin')->value['status']=="support"){?>
        <div class="input">
            <label for="free">Free</label>
            <input type="text" readonly="readonly" name="free" value="<?php if ($_smarty_tpl->getVariable('free')->value=='1'){?>Da<?php }else{ ?>Ne<?php }?>" id="free" />
        </div>		
		<?php }?>
        <div class="input">
            <label for="uplatnica">Uplatnica</label>
            <input type="text" <?php if ($_smarty_tpl->getVariable('admin')->value['status']=="support"){?>readonly="readonly" <?php }?>name="uplatnica" id="uplatnica" value="<?php echo $_smarty_tpl->getVariable('uplatnica')->value;?>
" />Radnicima onemogućena opcija
        </div>
                
        <div class="submit">
            <center>
            <input type="submit" name="spremi_izmjene" value="Spremi Izmjene" />
            <input type="reset" value="Izbriši" onclick="document.location = 'admin.php?page=serveri&akcija=lista&brisi=<?php echo $_smarty_tpl->getVariable('id')->value;?>
';" />
            <input type="reset" class="black" value="Logiraj se kao klijent" onclick="window.open('<?php echo $_smarty_tpl->getVariable('link')->value;?>
index.php?support=<?php echo $_smarty_tpl->getVariable('user_id')->value;?>
');" />
            <input type="reset" class="black" value="Profil Klijenta" onclick="document.location = '<?php echo $_smarty_tpl->getVariable('link')->value;?>
admin/admin.php?page=klijenti&akcija=pregled&id=<?php echo $_smarty_tpl->getVariable('user_id')->value;?>
';" />
            </center>
        </div>    
        </form>
        </div>
    </div>
</div>
            
                     




</div>
        
        
