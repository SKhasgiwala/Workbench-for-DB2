
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
  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

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
							<h1>Contact Us</h1>
							
						</div>
					</div>
				</div>
			<div>
		</section>

		<main id="main">
			<div class="container">
				<div class="col-md-8 col-md-offset-2 animate-box">
					<form action="contact" method="post">
						<div class="form-group row">
							<div class="col-md-6 field">
								<label for="firstname">First Name</label>
								<input type="text" name="fname" id="firstname" class="form-control">
							</div>
							<div class="col-md-6 field">
								<label for="lastname">Last Name</label>
								<input type="text" name=lname id="lastname" class="form-control">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-6 field">
								<label for="email">Email</label>
								<input type="email" name="email" id="email" class="form-control">
							</div>
							<div class="col-md-6 field">
								<label for="phone">Phone</label>
								<input type="number" name="phone" id="phone" class="form-control">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-12 field">
								<label for="message">Message</label>
								<textarea name="message" id="message" cols="30" rows="10" class="form-control"></textarea>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-5 field" style="float:none; margin:0 auto">
								<input type="submit" id="submit" class="btn btn-primary" value="Submit " style="padding-left:80px; padding-right:80px;">
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

