<div id="main">
{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div class="serveri_morph">
<img src="template/images/web_ftp2.png" border="0" />
<br />
Direktan pristup fajlovima servera putem FTP protokola.<br />
</div>

<br />

<div id="ftp_path">
<div id="ftp_home">
<a href="main.php?page=ftp&id={$id}&path=/"><img src="template/images/ftp_home.png" border="0" /></a> 
</div>

{$ftp_path}


<div class="ftp_path_folder">
<a href="main.php?page=ftp_file&id={$id}&path={$old_path}&file={$file}">{$file}</a>
</div>
<div class="clear"></div>
</div>

<div id="edit_file">
<div class="obavjest_top_text"></div>
<div class="obavjest_normal_text">

<form method="post" name="file_edit" id="file_edit" action="">
<textarea name="new_file" spellcheck="false" cols="100%" class="edit_file_textare">{$ftp_contents}</textarea>
</div>
<div class="obavjest_bottom_text"></div>
<div class="clear"></div>
<input type="image" src="template/images/sacuvaj.png" name="submit" class="sacuvaj_fajl" />
</form>
</div>

</div>

{/if}
</div>

