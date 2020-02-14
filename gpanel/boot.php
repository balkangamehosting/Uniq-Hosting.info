<script type="text/javascript" src="./jquery.leanModal.min.js"></script>
<?php
	session_start();
	if(!isset($_SESSION["id"])){
	$_SESSION["return_path"] = 'main.php';
		header("location:index.php");
		exit();
	}
	
	ini_set('display_errors', 0);

	define("GPANEL", "YES");
	include "config.php";
	
	$id_servera	=	$_GET["id"];
	if(!is_numeric($id_servera)){
		header("location:index.php");
		exit();
	}

	$query_all	=	mysql_query("SELECT * FROM serveri WHERE id = '".mysql_real_escape_string($id_servera)."' LIMIT 1") or die(mysql_error());
	while($red	=	mysql_fetch_array($query_all)){
		$ime_servera	=	$red['name'];		
		$boot_map		=	$red['boot_map'];
		$boot_cfg		=	$red['boot_cfg'];
		$boot_maxfps	=	$red['boot_maxfps'];
		$boot_tickrate	=	$red['boot_tickrate'];
		$boot_pingboost	=	$red['boot_pingboost'];
	}
?>
	<style>
		.kohead{
			background: none repeat scroll 0 0 rgba(0, 0, 0, 0.5);
			border-bottom: 1px solid #404345;
			color: #FFFFFF;
			font-family: Tahoma;
			font-size: 11px;
			font-weight: bold;
			padding: 3px;
			text-align: left;
		}
		
		#lean_overlay {
			position: fixed;
			z-index:100;
			top: 0px;
			left: 0px;
			height:100%;
			width:100%;
			background: #000;
			display: none;
		}
 		
		.modalni{
			display: none; 
			position: fixed; 
			opacity: 1; 
			z-index: 11000; 
			left: 50%; 
			margin-left: -330px; 
			top: 200px;
			width:350px;
			height:200px;
			
			color: #FFFFFF;
			font-family: Tahoma;
			font-size: 12px;
			font-weight: bold;
			border: 5px solid red;
			background-color: black;
		}
		
		input[type="text"] {
			background: none repeat scroll 0 0 rgba(0, 0, 0, 0.6);
			border: 1px solid #404345;
			color: #FFFFFF;
			font-family: Tahoma;
			font-size: 11px;
			font-weight: bold;
			height: 23px;
			margin-bottom: 13px;
			padding-left: 4px;
			width: 184px;
		}

	</style>
	
	
	<script type="text/javascript">
		$(function() {
		$('a[rel*=leanModal]').leanModal({ top : 200, closeButton: ".modal_close" });
		}); 
	</script>
	
	<div id="imeservera" class='modalni'>
		<h3 style='float:left; margin-left:16px;'>Promena imena servera:</h3><br>
	      <h4 style='float:left; margine-left:16px;'>Ovo ce promeniti ime samo u panelu! Promena nece biti aktivna na serveru!</h4><br>
		<form method='POST' action='boot_change.php'>
			<input type="text" name="boot_imeservera" style='float:left; margin-left:16px; width:260px;' value='<?php echo strip_tags($ime_servera); ?>'>
			<input type="hidden" name="server_id" value="<?php echo $id_servera; ?>" />
			<input id="button" type="submit" value="Sacuvaj" style='float:right; margin-top:0px; margin-right:18px;'>
			<div class="clear"></div>
		</form>
	</div>

	<div id="mapa" class='modalni'>
		<h3 style='float:left; margin-left:16px;'>Promeni mapu servera:</h3><br>
		<h4 style='float:left; margine-left:16px;'>Da bi se mapa promenula restartujete server!</h4><br>
		<form method='POST' action='boot_change.php'>
			<input type="text" name="boot_map" style='float:left; margin-left:16px; width:260px;' value='<?php echo strip_tags($boot_map); ?>'>
			<input type="hidden" name="server_id" value="<?php echo $id_servera; ?>" />
			<input id="button" type="submit" value="Sacuvaj" style='float:right; margin-top:0px; margin-right:38px;'>
			<div class="clear"></div>
		</form>
	</div>
	<div id="cfg" class='modalni'>
		<h3 style='float:left; margin-left:16px;'>Promjeni boot config:</h3><br>
		
		<form method='POST' action='boot_change.php'>
			<input type="text" name="boot_config" style='float:left; margin-left:16px; width:260px;' placeholder='Boot config'>
			<input type="hidden" name="server_id" value="<?php echo $id_servera; ?>" />
			<input id="button" type="submit" value="Sačuvaj" style='float:right; margin-top:0px; margin-right:38px;'>
			<div class="clear"></div>
		</form>
	</div>
	<div id="fps" class='modalni'>
		<h3 style='float:left; margin-left:16px;'>Promjeni boot fps:</h3><br>
		
		<form method='POST' action='boot_change.php'>
			<input type="text" name="boot_fps" style='float:left; margin-left:16px; width:260px;' placeholder='Boot fps'>
			<input type="hidden" name="server_id" value="<?php echo $id_servera; ?>" />
			<input id="button" type="submit" value="Sačuvaj" style='float:right; margin-top:0px; margin-right:38px;'>
			<div class="clear"></div>
		</form>
	</div>
	<div id="pboost" class='modalni'>
		<h3 style='float:left; margin-left:16px;'>Promjeni boot ping boost:</h3><br>
		
		<form method='POST' action='boot_change.php'>
			<input type="text" name="boot_trate" style='float:left; margin-left:16px; width:260px;' placeholder='Boot ping boost'>
			<input type="hidden" name="server_id" value="<?php echo $id_servera; ?>" />
			<input id="button" type="submit" value="Sačuvaj" style='float:right; margin-top:0px; margin-right:38px;'>
			<div class="clear"></div>
		</form>
	</div>
	
	<br>

      <div id="pozadina">
	  
<div id="infopro">
	<div id="infoproi"></div>
	<p><pl>Podesavanja servera</pl><br />Ovde mozete menjati razna podesavanja vezana za sam rad servera! </p>
</div>


	<table class="data" style="display: table;">
		<tbody>
			<tr>
				<td class='kohead'>Ime servera</td>
				<td><?php echo strip_tags($ime_servera); ?></td>
				<td class="option"><a href="#imeservera" name="imeservera" rel="leanModal">Izmeni</a></td>
			</tr>
			<tr>
				<td class='kohead'>Mapa</td>
				<td><?php echo strip_tags($boot_map); ?></td>
				<td class="option"><a href="#mapa" name="mapa" rel="leanModal">Izmeni</a></td>
			</tr>
			<tr>
				<td class='kohead'>Server CFG file</td>
				<td><?php echo strip_tags($boot_cfg); ?></td>
				<td class="option"><a href="#cfg" name="cfg" rel="leanModal"></a></td>
			</tr>
			<tr>
				<td class='kohead'>FPS Max</td>
				<td><?php echo strip_tags($boot_maxfps); ?></td>
				<td class="option"><a href="#fps" name="fps" rel="leanModal"></a></td>
			</tr>
			<tr>
				<td class='kohead'>Tick Rate</td>
				<td>333</td>
				<td class="option"><a href="#trate" name="trate" rel="leanModal"></a></td>
			</tr>           
		</tbody>
	</table>

</div>
