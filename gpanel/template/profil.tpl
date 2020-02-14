{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div class="serveri_morph">
<img src="template/images/profil_title.png" border="0" />
<br />
Ovde mozete izmeniti vase informacije.
</div>

<br />

<div class="morph_prf"><br />
<form action="" method="post">
<label for="fname">Ime :</label> <input type="text" style="width:395px;" class="input" name="fname" value="{$profil_fname}" /> <br /><br />
<label for="lname">Prezime :</label> <input type="text" style="width:395px;" class="input" name="lname" value="{$profil_lname}" /> <br /><br />
<label for="email">Email :</label> <input type="text" style="width:395px;" class="input" name="email" value="{$profil_email}" /> <br /><br />
<label for="password">Sifra :</label> <input type="password" style="width:395px;" class="input" name="password" autocomplete="off" /> <br /><br />
<input type="submit" class="profile_submit" style="border:none;margin:auto;" name="submit" value="" />
</form>
</div>
<div id="novipodrska-novi">
				<div id="novipodrska-novi-novi">
					<div class="footer-copyright">Copyright 2018 Uniq Hosting. Sva prava zadrzana.</div> 
					<div class="footer-kontakt">Designed and coded by: Uniq-Hosting www.uniq-hosting.info</div>
				</div>
<br />