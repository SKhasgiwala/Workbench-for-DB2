
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
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
  <link rel="stylesheet" href="style.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<script>
function runQuery()
{
	var q = document.getElementById("qRun").value.toLowerCase().trim();
	if(q.startsWith("insert")||q.startsWith("select")
			||q.startsWith("update")||q.startsWith("delete")
			||q.startsWith("alter")||q.startsWith("create")
			||q.startsWith("drop"))
	{
		var xmlOb=null;
		   if (window.XMLHttpRequest) {
			   xmlOb = new XMLHttpRequest();
	    } else {
	 	   xmlOb = new ActiveXObject("Microsoft.XMLHTTP");
	    }
		   if (xmlOb !== null) {
			   xmlOb.onreadystatechange = function() {
	           if (xmlOb.readyState === 4) {
	                var res = xmlOb.responseText;
	                document.getElementById("qMsg").innerHTML = res;
	            }
	        };
	       alert(q);
	        xmlOb.open("GET", "runner.jsp?q="+q, true);
	        xmlOb.send();
		   }
	}
	else
	{
		alert("Please Enter a valid SQL Query !");	
	}
}
function clearQuery()
{
	document.getElementById("qRun").value="";
}
function clearMessage()
{
	document.getElementById("qMsg").value="";
}
function showQuery()
{
	   var xmlOb=null;
	   if (window.XMLHttpRequest) {
		   xmlOb = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
 	   xmlOb = new ActiveXObject("Microsoft.XMLHTTP");
    } else {
        alert("Browser Dosent Support Ajax! ^_^");
    }
	   if (xmlOb !== null) {
		   xmlOb.onreadystatechange = function() {
            if (xmlOb.readyState < 4) {
                //document.getElementById('cnt').innerHTML = "Progress";
            } else if (xmlOb.readyState === 4) {
                //respoce recived
                var res = xmlOb.responseText;
                document.getElementById("viewer").innerHTML = res;
                //eval(document.getElementById('viewer').innerHTML);
            }
        };
        xmlOb.open("GET", "query.jsp", true);
        //a.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xmlOb.send();
    }
}
</script>
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
							<h1>Database Operation</h1>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4" style="overflow: scroll;">
							<input type="button" onclick="return showQuery();" style="padding-left:40px;padding-right:40px;margin:10px;margin-left:50px"  value="Query View">
							<h3>List of Tables </h3>
							<h5>* Right click on table to get operations</h5>
							<div style="height:400px;width:250px">
							<div class="container" style="width: 280px">
							      <ul class="tasks">
							      <%
							      	Connection cn = (Connection)session.getAttribute("dbc");
								  	DatabaseMetaData md = cn.getMetaData();
								  	
								  	ResultSet rs = md.getTables(null, null, "%", null);
								  	ResultSetMetaData rm = rs.getMetaData();
								  	int n = rm.getColumnCount();
								  	System.out.println("********************************");
								  	
								  	while (rs.next()) {
								  		System.out.println(rs.getString(2) + " : " + md.getUserName());
								  		if(rs.getString(2).equalsIgnoreCase(md.getUserName())){ 
								  			String tb = rs.getString(3);
								  			%>
								  			<li class="task" data-id="<%=tb%>">
							          <div class="task__content">
							            <%=tb%>
							          </div>
							        </li>	
								  			<%	
								  		}
								  	}
							        %>
							      </ul>
						      </div>
							  <nav id="context-menu" class="context-menu">
							    <ul class="context-menu__items">
							      <li class="context-menu__item">
							        <a href="viewer.jsp&q=" target="viewer" class="context-menu__link" data-action="View"><i class="fa fa-eye"></i> View Table</a>
							      </li>
							      <li class="context-menu__item">
							        <a href="#" class="context-menu__link" data-action="Delete"><i class="fa fa-times"></i> Drop Table</a>
							      </li>
							    </ul>
							  </nav>
							</div>
					</div>
					<div class="col-md-8" id="viewer" >
							<h1>You haven't selected any table.</h1>
					</div>
				</div>
			</div>
		</section>
</div>
		<%@include file="footer.jsp" %>
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
  <script src="main.js"></script>
	</body>
</html>

