
<!DOCTYPE html>

	<head>
	<link rel="icon" href="images/icon1.png">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>GDB &mdash; Workbench for DB2</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,300,700|Roboto:300,400' rel='stylesheet' type='text/css'>
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<div class="box-wrap">
		<%@include file="header.jsp" %>
		<!-- END: header -->
		<section id="intro">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2 text-center">
						<div class="intro animate-box">
							<h1>Connect</h1>
							<h2>Mention the following properties to get connected with your remote DB2.</h2>
						</div>
					</div>
				</div>
			<div>
		</section>

		<main id="main">
			<div class="container">
				<div class="col-md-8 col-md-offset-2 animate-box">
					<form action="conector.jsp">
						<div class="form-group row">
							<div class="col-md-12 field">
								<input type="text" name="host" id="host" placeholder="Host Address, i.e. 192.168.1.1 or localhost or 256.36.56.93 or Admin-PC" class="form-control">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-6 field">
								<input type="number" name="port" id="port" placeholder="Port No., i.e. 50000" class="form-control">
							</div>
							<div class="col-md-6 field">
								<input type="text" name="dbname" id="dbname" placeholder="Database name" class="form-control">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-6 field">
								<input type="text" name="user" id="user" placeholder="User Name" class="form-control">
							</div>
							<div class="col-md-6 field">
								<input type="password" name="password" id="password" placeholder="Password" class="form-control">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-5 field" style="float:none; margin:0 auto">
								<input type="submit" id="submit" class="btn btn-primary" value="Connect" style="padding-left:80px; padding-right:80px; ">
							<h1>&nbsp</h1>
							<h4>&nbsp</h4>
							</div>
						</div>
					</form>
				</div>
				<!-- <div class="col-md-4"></div> -->
			</div>
		</main>
		<%@include file="footer.jsp" %>
	</div>
	<!-- END: box-wrap -->
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>

	</body>
</html>

