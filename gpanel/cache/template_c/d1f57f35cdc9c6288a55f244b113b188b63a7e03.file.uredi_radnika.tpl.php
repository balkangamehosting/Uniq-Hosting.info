<?php /* Smarty version Smarty-3.0.7, created on 2018-01-28 14:41:28
         compiled from "template/uredi_radnika.tpl" */ ?>
<?php /*%%SmartyHeaderCode:382038935a6dd3082560d6-30235345%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd1f57f35cdc9c6288a55f244b113b188b63a7e03' => 
    array (
      0 => 'template/uredi_radnika.tpl',
      1 => 1440795712,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '382038935a6dd3082560d6-30235345',
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
            <input type="text" name="fname" id="ime" value="<?php echo $_smarty_tpl->getVariable('e_ime')->value;?>
" />
        </div>                
        <div class="input long">
            <label for="prezime">Prezime:</label>
            <input type="text" name="lname" id="prezime" value="<?php echo $_smarty_tpl->getVariable('e_prezime')->value;?>
" />
        </div>
        <div class="input long">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" value="<?php echo $_smarty_tpl->getVariable('e_username')->value;?>
" />
        </div>  
        
        <div class="input long">
            <label for="password">Password (Nije Vidljiv):</label>
            <input type="text" name="password" id="password" value="<?php echo $_smarty_tpl->getVariable('e_password')->value;?>
" />
        </div>     
        
        <div class="input long">
            <label for="email">Email:</label>
            <input type="text" name="email" id="email" value="<?php echo $_smarty_tpl->getVariable('e_email')->value;?>
" />
        </div> 

        <div class="input">
            <label for="status">Status</label>
            <select name="status" id="status">
                <option value="support" <?php if ($_smarty_tpl->getVariable('e_status')->value=="support"){?> selected="1" <?php }?>>Radnik</option>
				<option value="admin" <?php if ($_smarty_tpl->getVariable('e_status')->value=="admin"){?> selected="1" <?php }?>>Vlasnik</option>
                <option value="suspendovan" <?php if ($_smarty_tpl->getVariable('e_status')->value=="suspendovan"){?> selected="1" <?php }?>>Suspendovan</option>
            </select>
        </div>
		
        <div class="submit">
            <input type="submit" name="uredi_radnika" value="Uredi" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
