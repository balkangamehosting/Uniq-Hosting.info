<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:57:19
         compiled from "template/admin.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6578173005a51625fafe238-41910296%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6321aaa599f21fcac973b1f249fda6155b039a20' => 
    array (
      0 => 'template/admin.tpl',
      1 => 1440795680,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6578173005a51625fafe238-41910296',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="content">
        
        

    
<h1><img src="template/img/icons/dashboard.png" alt="" />Početna</h1>
                
<?php if ($_smarty_tpl->getVariable('message')->value){?>
<?php echo $_smarty_tpl->getVariable('message')->value;?>

<?php }?>

<div class="bloc" style="float: left; width: 100%;">
 <div class="title">
        Napomena
    </div>
    <div class="content">
    <?php if ($_smarty_tpl->getVariable('napomena')->value){?>
    <?php echo $_smarty_tpl->getVariable('napomena')->value;?>

    <?php }?>
    <form action="" method="post">
        <div class="input textarea">
             <textarea name="napomena" id="textarea1" rows="7" cols="4"><?php echo $_smarty_tpl->getVariable('admin')->value['napomena'];?>
</textarea>
        </div>
        <div class="submit">
            <input type="submit" value="Spremi" />
        </div>
    </form>    
    </div>   
</div>


<div class="bloc left">
 <div class="title">
        Signature
    </div>
    <div class="content">
	<?php if ($_smarty_tpl->getVariable('signature')->value){?>
    <?php echo $_smarty_tpl->getVariable('signature')->value;?>

    <?php }?>
    <form action="" method="post">
        <div class="input textarea">
             <textarea name="signature" id="textarea1" rows="7" cols="4"><?php echo $_smarty_tpl->getVariable('admin')->value['signature'];?>
</textarea>
        </div>
        <div class="submit">
            <input type="submit" value="Spremi" />
        </div>
    </form>    
    </div>       
</div>

<div class="bloc right">
    <div class="title">
        Statistika
    </div>
    <div class="content">
        <div class="left">
            <table class="noalt">
                <thead>
                    <tr>
                        <th colspan="2"><em>Serveri</em></th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><h4><?php echo $_smarty_tpl->getVariable('aktivni_serveri')->value;?>
</h4></td>
                        <td>Aktivni</td>
                    </tr>
                    <tr>

                        <td><h4><?php echo $_smarty_tpl->getVariable('neaktivni_serveri')->value;?>
</h4></td>
                        <td>Neaktivni</td>
                    </tr>
                    <tr>
                        <td><h4><?php echo $_smarty_tpl->getVariable('istekli_serveri')->value;?>
</h4></td>
                        <td>Istekli</td>
                    </tr>
					<!--
                     <tr>
                        <td><h4><?php echo $_smarty_tpl->getVariable('broj_slotova')->value;?>
</h4></td>
                        <td>Ukupan Broj Slotova</td>
                    </tr> 
					-->
                     <tr>
                        <td><h4><?php echo $_smarty_tpl->getVariable('broj_besplatnih_servera')->value;?>
</h4></td>
                        <td>Broj Besplatnih Servera</td>
                    </tr> 
					<tr>
						<td><h4><?php echo $_smarty_tpl->getVariable('broj_odgovora_admin')->value;?>
</h4></td>
						<td>Broj vasih odgovora u tiketima</td>
					</tr>
                </tbody>
            </table>
        </div>
        <div class="right">

            <table class="noalt">
                <thead>
                    <tr>
                        <th colspan="2"><em>Tiketi</em></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>

                        <td><h4><?php echo $_smarty_tpl->getVariable('neodgovoreni_tiketi')->value;?>
</h4></td>
                        <td class="bad">Neodgovoreni</td>
                    </tr>
                    <tr>
                        <td><h4><?php echo $_smarty_tpl->getVariable('odgovoreni_tiketi')->value;?>
</h4></td>
                        <td class="neutral">Otvoreni</td>
                    </tr>

                    <tr>
                        <td><h4><?php echo $_smarty_tpl->getVariable('zatvoreni_tiketi')->value;?>
</h4></td>
                        <td class="good">Zatvoreni</td>
                    </tr>
                     <tr>
                        <td><h4><?php echo $_smarty_tpl->getVariable('zarada')->value;?>
</h4></td>
                        <td>dinara ( Zarada )</td>
                    </tr> 
                     <tr>
                        <td><h4><?php echo $_smarty_tpl->getVariable('broj_klijenta')->value;?>
</h4></td>
                        <td>Ukupan Broj Klijenata</td>
                    </tr> 					
                </tbody>
            </table>
        </div>
        <div class="cb"></div>

    </div>
</div>

<div class="bloc" style="float: left; width:100%;">
                 <div class="title">
                    Chat <input type="text" placeholder="Zabranjen spam i vredjanje..." style="margin-left: 20px; margin-top: 3px;" id="chat_text" /> <div class="submit" style="margin-top: -40px; margin-left: 4px; margin-right: -4px;"><input class="btn btn-primary" type="button" value="Posalji" style="margin-top: 3px; float: right; margin-right: 40%;" onclick="Chat_Send()" /></div>
                </div> 
                <div id="chat_main" class="content" style="float: left; padding: 0; margin: 0; width: 100%;">
                    <div id="chat_messages">
						<div id="atest">Brisanje u toku...</div>
						<div id="rtest">Refresh u toku...</div>
                        <ul></ul>
                    </div>
                    <?php if ($_smarty_tpl->getVariable('admin')->value['status']=="admin"){?>
					<div class="submit" style="float: left;">
                        <input class="btn btn-primary" type="button" value="Izbriši sve poruke" style="margin: 5px 10px 5px 10px;" onclick="Chat_IzbrisiSve()" />
                    </div>
					<?php }?>
					<div class="submit" style="float: left;">
                        <input class="btn btn-primary" type="button" value="Refresh" style="margin: 5px 10px 5px 10px;" onclick="Refresh()" />
                    </div>
				
<div class="bloc right" style="margin-left: 5px; margin-top: -205px; margin-bottom: 10px; margin-right: 5px; width:20%;">
                 <div class="title">
				Aktivni klijenti
				</div> 
                <div id="chat_main" class="content" style="float: left; padding: 0; margin: 0; width: 100%;">
					<div id="clanovi">
						<div id="vtest">Refresh u toku...</div>
                        <ul></ul>
					</div>
					<div class="submit" id="klijenti">
                        <input class="btn btn-primary" type="button" value="Online: <?php echo $_smarty_tpl->getVariable('klijention')->value;?>
" style="margin: 5px 10px 5px 10px;" />
                    </div>
				</div>
</div>
<div class="bloc right" style="margin-top: -205px; width:20%;">
                 <div class="title">
				Aktivni radnici
				</div> 
                <div id="chat_main" class="content" style="float: left; padding: 0; margin: 0; width: 100%;">
					<div id="onlinea">
						<div id="btest">Refresh u toku...</div>
                        <ul></ul>
					</div>
					<div class="submit" id="admini">
						<input class="btn btn-primary" type="button" value="Online: <?php echo $_smarty_tpl->getVariable('adminion')->value;?>
" style="margin: 5px 10px 5px 10px;" />
                    </div>
				</div>
</div>	</div>			
</div>
<div class="bloc" style="float: left; width: 100%;">
    <div class="title">
        Lista logova
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>Id</th>
                    <th>Poruka</th>
                    <th>Ime</th>
                    <th>Ip</th>
                    <th style="width: 110px;">Vreme</th>
                </tr>
            </thead>

            <tbody>
            <?php  $_smarty_tpl->tpl_vars['log'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('logovi')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['log']->key => $_smarty_tpl->tpl_vars['log']->value){
?>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><?php echo $_smarty_tpl->tpl_vars['log']->value['id'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['log']->value['message'];?>
</td>
                    <td><a href="admin.php?page=klijenti&akcija=pregled&id=<?php echo $_smarty_tpl->tpl_vars['log']->value['clientid'];?>
"><?php echo $_smarty_tpl->tpl_vars['log']->value['name'];?>
</a></td>
                    <td><?php echo $_smarty_tpl->tpl_vars['log']->value['ip'];?>
</td>
                    <td class="actions"><?php echo $_smarty_tpl->tpl_vars['log']->value['vreme'];?>
</td>
                </tr>
             <?php }} else { ?>
             <tr>
             <td colspan="6">Nema ni jednog klijenta</td>
             </tr>
             <?php } ?>

            </tbody>

        </table>

    </div>
</div> 


<div class="cb"></div>

                    


</div>
        
        
