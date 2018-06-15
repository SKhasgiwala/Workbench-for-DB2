
<!DOCTYPE html>

	<head>
	<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
	
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
	<meta property="og:url" co=""/>
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
					<div class="col-lg-6 col-lg-offset-3 col-md-9 col-md-offset-2 text-center">
						<div class="intro animate-box">
							<h2>A complete integrated database development environment, suited according to your needs.</h2>
						</div>
					</div>
				</div>
			<div>
		</section>

		<section id="work">
			<div class="container">
				<div class="row">
				<!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="data1/images/maxresdefault.jpg" alt="" title="" id="wows1_0"/></li>
		<li><a href="http://wowslider.com"><img src="data1/images/1_ibmbwf.png" alt="wowslideshow" title="" id="wows1_1"/></a></li>
		<li><img src="data1/images/img4.png" alt="" title="" id="wows1_2"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title=""><span><img src="data1/tooltips/maxresdefault.jpg" alt=""/>1</span></a>
		<a href="#" title=""><span><img src="data1/tooltips/1_ibmbwf.png" alt=""/>2</span></a>
		<a href="#" title=""><span><img src="data1/tooltips/img4.png" alt=""/>3</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">wowslider.com</a> by WOWSlider.com v8.7</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
					<div class="col-md-6">
					<h1>&nbsp</h1>
						<div class="fh5co-grid animate-box" >
						<img src="images/img.png" height=624px width=555px >
							<a class="image-popup text-center"  href="all.jsp" img src="images/img.png" >
								<div class="work-title">
									<h3><b>All About DB2</b></h3>
									
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
					<h1>&nbsp</h1>
						<div class="fh5co-grid animate-box" >
						<img src="images/img7.png" height=624px width=555px>
							<a class="image-popup text-center" href="tour.jsp">
								<div class="work-title">
									<h3><b>Take a Tour</b></h3>
									
								</div>
							</a>
						</div>
					</div>
					
				

				</div>
			<div>
		</section>

		

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
<script>
<%
try
{
	String msg = request.getParameter("msg");
	if(msg.equals("conscs"))
		out.println("alert(\"Thanks for your precious time with us!\");");									
	if(msg.equals("connscs"))
		out.println("alert(\"Connection Successful!\");");									
	}catch(Exception e){}
%>
</script>
	</body>
</html>

