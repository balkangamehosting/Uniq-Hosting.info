
<div class="serveri_morph">
<img src="template/images/serveri2.png" border="0" />
<br />
Lista svih vasih servera
</div>

<br />

<table class="morphtbl">
<tr>
<th>Ime servera</th>
<th>IP adresa</th>
<th>Slotova</th>
<th>Cena</th>
<th>Istice</th>
<th>Status</th>
</tr>

{foreach from=$serveri item=srv}
<tr>
<td><a href="main.php?page=server&id={$srv.id}">{$srv.name}</a></td>  <td>{if $srv.mod eq '52'}<img style='height:10px;width:10px;' src='template/images/game-samp.png'>{else}<img style='height:10px;width:10px;' src='template/images/game-cs.png'>{/if} {$srv.ip}:{$srv.port}</<td> <td>{$srv.slotovi}</<td> <td>{$srv.cena}</td> <td>{if $srv.istice|date_format:"%Y.%m.%d" gt $smarty.now|date_format:"%Y.%m.%d"} {$srv.istice|date_format:"%d.%m.%Y"} {else} <font color="red">{$srv.istice|date_format:"%d.%m.%Y"}</font> {/if}</td> <td><span class="server_list_status {if $srv.status eq 'Aktivan'}zelena{else}crvena{/if}">{$srv.status} </span> </td>
</tr>
<div class="clear"></div>
{foreachelse}


</table>

<span style="font-family:TAHOMA;font-size:12px;font-weight:bold;margin-left:10px;">Jos uvek nemate server kod nas.</span><br />

{/foreach}


<br />

</div>


</div>

</table>
<div id="novii-novi">
				<div id="novii-novi-novi">
					<div class="footer-copyright">Copyright 2018 Uniq Hosting. Sva prava zadrzana.</div> 
					<div class="footer-kontakt">Designed and coded by: Uniq-Hosting www.uniq-hosting.info</div>
				</div>
<br />

