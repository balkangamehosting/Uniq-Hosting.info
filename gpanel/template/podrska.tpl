<div id="main">
{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}


<div class="serveri_morph">
<img src="template/images/podrska_title.png" border="0" />
<br />
Dobrodosli na Uniq Hosting support center.<br />
Ovde mozete otvarati nove tikete ukoliko vam treba pomoc ili podrska oko servera.<br />
Ako ste dobili odgovor molimo Vas ZATVORITE tiket!<br />
</div>

<div id="podrska_menu">
<a href="./main.php?page=podrska&arhiva=yes"><img src="template/images/pogledaj_sve_tikete.png" border="0" /></a> <br /><br /> <a href="./main.php?page=otvori_tiket"><img src="template/images/otvori_novi_tiket.png" border="0" /></a>
</div>

<br /><br /><br />

<table style="margin-left:9px;" class="morphtbl">
<tr>
<th>Status</th>
<th>ID</th>
<th>Datum</th>
<th>Server</th>
<th>Naslov tiketa</th>
<th>Broj odgovora</th>
<th>Poslednji odgovor</th>
</tr>

{foreach from=$tiketi item=tiket}

<tr>
<td>{if $tiket.status eq 'Odgovoren'}<span style='color:green;'>{$tiket.status}</span>{else if $tiket.status eq 'Neodgovoren'} <span style='color:#FFF;'>{$tiket.status} </span> {else}<span style='color:red;'>{$tiket.status}</span>{/if}</td>
<td><a href="main.php?page=tiket&id={$tiket.id}">#{$tiket.id}</a></td>
<td>{$tiket.datum|date_format:"%d.%m.%Y"}</td>
<td>{$tiket.ip}:{$tiket.port}</td>
<td><a href="main.php?page=tiket&id={$tiket.id}">
{if $tiket.naslov|count_characters > 21} 
{$tiket.naslov|substr:0:21}...
{else}
{$tiket.naslov}
{/if}
</a></td>
<td>{$tiket.broj_odgovora}</td>
<td>{$tiket.zadnji_odgovor|date_format:"%Y-%m-%d %H:%M"}</td>
</tr>

{foreachelse}

</table>

<span style="font-family:TAHOMA;font-size:12px;font-weight:bold;margin-left:10px;">Nema tiketa</span>


{/foreach}

{/if}
</div>

</table>
<div id="novipodrska-novi">
				<div id="novipodrska-novi-novi">
					<div class="footer-copyright">Copyright 2018 Uniq Hosting. Sva prava zadrzana.</div> 
					<div class="footer-kontakt">Designed and coded by: Uniq-Hosting www.uniq-hosting.info</div>
				</div>
<br />