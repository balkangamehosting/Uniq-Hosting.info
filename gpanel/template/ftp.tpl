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

<div class="clear"></div>
</div>
</div>

<br />


<table style="margin-left:25px;width:900px;" class="morphtbl">
<tr>
<th>File</th>
<th>Size</th>
<th>User</th>
<th>Group</th>
<th>Prems</th>
<th>Action</th>
</tr>

{foreach from=$ftp_folderi item=x}

<tr>
<td>
<img src="template/images/ftp_folder.png" border="0" /> <a href="main.php?page=ftp&id={$id}&path={$old_path}{$x.8}">
{if $x.8|count_characters > 18} 
{$x.8|substr:0:18}...
{else}
{$x.8}
{/if}</a>
</td>

<td>
{if $x.4 < 1024} 
{$x.4} B
{elseif $x.4 < 1048576} 
{math|string_format:"%.2f" equation="size / 1024" size=$x.4} KB 
{else} 
{math|string_format:"%.2f" equation="size / 1024 / 1024" size=$x.4} MB 
{/if} 
</td>

<td>
{$x.2}
</td>

<td>
{$x.3}
</td>

<td>
{$x.0}
</td>

<td>
<img id="delete_folder" class="delete_folder" informacije="{$id},{$old_path},{$x.8}" src="template/images/ftp_delete.png" border="0" />
</td>

{/foreach}

{foreach from=$ftp_fajlovi item=x}

<tr>
<td>
<img src="template/images/ftp_fajl.png" border="0" /> 
{if $x.9} 
<a href="main.php?page=ftp_file&id={$id}&path={$old_path}&file={$x.8}">
{if $x.8|count_characters > 18} 
{$x.8|substr:0:18}...
{else}
{$x.8}
{/if}
</a>
{else}

{if $x.8|count_characters > 18} 
{$x.8|substr:0:18}...
{else}
{$x.8}
{/if}

{/if}
</td>

<td>
{if $x.4 < 1024} 
{$x.4} B
{elseif $x.4 < 1048576} 
{math|string_format:"%.2f" equation="size / 1024" size=$x.4} KB 
{else} 
{math|string_format:"%.2f" equation="size / 1024 / 1024" size=$x.4} MB 
{/if} 
</td>

<td>
{$x.2}
</td>

<td>
{$x.3}
</td>

<td>
{$x.0}
</td>

<td>
<img id="delete_file" class="delete_file" ftp_id="{$id}" ftp_path="{$old_path}" ftp_fname="{$x.8}" src="template/images/ftp_delete.png" border="0" />
{if $x.9} 
<a href="main.php?page=ftp_file&id={$id}&path={$old_path}&file={$x.8}"><img src="template/images/ftp_edit.png" border="0" /></a>
{/if} 
</td>
</th>
{/foreach}

</table>




<br /><br />

<div id="upload_file">
<div id="upload_file_title"><img src="template/images/upload_file.png" border="0" /></div>
<div id="upload_form">
<form action="main.php?page=ftp&id={$id}&path={$old_path}" method="post" enctype="multipart/form-data">
<input type="hidden" name="upload_file" value="yes" />
<input type="file" name="file" class="filename" size="25" /> 
<input type="image" src="template/images/upload_button.png" class="upload_button" />
</form>
</div>
</div>

<div id="create_folder">
<div id="create_folder_title"><img src="template/images/make_new_folder.png" border="0" /></div>
<div id="create_folder_form">
<form method="post" action="main.php?page=ftp&id={$id}&path={$old_path}">
<input type="text" class="create_folder_input" name="folder_name" />
<input type="image" src="template/images/ftp_yes.png" class="input_yes" />
</form>
</div>
</div>

<div class="clear"></div>
</div>


<br /><br />

{/if}
</div>

