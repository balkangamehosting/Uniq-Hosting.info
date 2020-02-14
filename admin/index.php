<?php include("header.php"); 

	if($_SESSION['adminid'] == "") {
		header("Location:login.php");
		die();
	}
	else {
		
		$br_narudzbina 			= mysqli_num_rows(mysqli_query($con,"SELECT id FROM narudzbine"));
		$br_kontakata 			= mysqli_num_rows(mysqli_query($con,"SELECT id FROM kontakti"));
		$br_admina   			= mysqli_num_rows(mysqli_query($con,"SELECT adminid FROM admin"));
	
?>
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Dashboard</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-xs-12 col-md-6 col-lg-4">
				<div class="panel panel-blue panel-widget ">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<svg class="glyph stroked bag"><use xlink:href="#stroked-bag"></use></svg>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large"><?php echo $br_narudzbina; ?></div>
							<div class="text-muted">Broj svih narudzbina </div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-4">
				<div class="panel panel-orange panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<svg class="glyph stroked empty-message"><use xlink:href="#stroked-empty-message"></use></svg>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large"><?php echo $br_kontakata; ?></div>
							<div class="text-muted">Kontakti</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-4">
				<div class="panel panel-teal panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large"><?php echo $br_admina; ?></div>
							<div class="text-muted">Admina</div>
						</div>
					</div>
				</div>
			</div>

		</div><!--/.row-->

		
		<div class="row">
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">Nove porudzbine</div>
					<div class="panel-body">
						

						<table class="table table-stripped">
						    <thead>
						    <tr>
							
						        <th>#ID</th>
						        <th>Ime</th>
								<th>Igra</th>
						        <th>Datum</th>
						        <th>Slotovi</th>
								<th>Cena</th>
							
							</tr>
							
						    </thead>
							
							<tbody>
							<?php 
								$sql = "SELECT * FROM narudzbine ORDER by id DESC LIMIT 5";
								$q 	 = mysqli_query($con,$sql);
								
								while($red = mysqli_fetch_array($q)){ 
								
								$vreme = time_ago($red['vreme']);
							?>	
								<tr>
								
								<td><?php echo $red['id']; ?></td>
								<td><?php echo $red['ime']; ?></td>
								<td><?php echo $red['igra']; ?></td>
								
								<td><?php echo "$red[datum]";?></td>
								<td><?php echo $red['slotovi']; ?></td>
								<td><?php echo $red['cena']; ?></td>
								
								<td><a class="btn btn-primary btn-small" href="narudzbina.php?id=<?php echo $red['id']; ?>"><i class="glyphicon glyphicon-eye-open"></i> Pogledaj </a></td>
								
								</tr>
							<?php };?>
							</tbody>
							
							
							
						</table>
				
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">Statistika tema (Graf. prikaz)</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<canvas class="chart" id="doughnut-chart"></canvas>
						</div>
					</div>
				</div>
				
				<br />
				
				<div class="panel panel-default">
					<div class="panel-heading"> Posete </div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<canvas  class="main-chart" id="bar-chart"></canvas> <hr /> 
						</div>
					</div>
				</div>
		
				
			</div>
		</div><!--/.row-->
		<canvas type="hidden" class="main-chart" id="line-chart" height="0" width="0"></canvas>
						

	</div>	<!--/.main-->

	<?php } include("footer.php"); ?>