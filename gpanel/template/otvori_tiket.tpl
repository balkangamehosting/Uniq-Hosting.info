<div id="main">
{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div class="serveri_morph">
<img src="template/images/otvori_tiket.png" border="0" />
<br />
Popunjavanjem ovog formulara otvarate novi support tiket.<br />
Potrudite se da sto detaljnije opisete problem koji imate oko servera i nas support tim ce vam odgovoriti u najkracem roku. <br />
</div>

<br />

<div style="height:320px;" class="morph_prf"><br />
<form action="main.php?page=podrska" method="post">
<label for="tiket_title">Naslov:</label> <input style="width:350px;" class="input" type="text" name="tiket_title" />
<br /><br />

<label for="serveri">Server:</label> 
<select style="width:360px;" class="input" name="serveri" >
{foreach from=$serveri item=srv}
<option value="{$srv.id}">{$srv.ip}:{$srv.port}</option>
{/foreach}
</select>
<br /><br />

<label for="vrsta">Vrsta tiketa:</label> 
<select style="width:360px;" class="input" name="vrsta">
<option value="Podrska">Podrska</option>
<option value="Pitanje">Pitanje</option>
<option value="Uplata">Uplata</option>
</select>
<br /><br />

<label for="prioritet">Prioritet tiketa:</label> 
<select style="width:360px;" class="input" name="prioritet">
<option value="Hitno">Hitno</option>
<option value="Normalan">Normalan</option>
<option value="Nije hitno">Nije hitno</option>
</select>
<br /><br />

<label for="pitanje">Pitanje:</label>
<textarea name="pitanje" style="width:395px;height:70px;max-width:395px;max-height:70px;" class="input"></textarea>
<div class="clear"></div>
<input style="margin:auto;" type="image" src="template/images/otvori_novi_tiket.png" class="otvori_tiket_dugme" name="otvori_tiket" />
</form>
</div>

<br />

{/if}
</div>
