<div >
		<header role="banner" id="fh5co-header">
			<div class="container">
				<nav class="navbar navbar-default">
					<div class="row">
						<div class="col-md-3">
							<div class="fh5co-navbar-brand">
								<a class="fh5co-logo" href="index.jsp"><img src="images/icon1.png"  height=70px><h2 style="display:inline">DB2 GUI</h2></a>
							</div>
						</div>
						<div class="col-md-8">
							<ul class="nav text-center">
							<%
							String s = request.getRequestURL().toString();
							s = s.substring(s.lastIndexOf("/")+1);
							s = s.substring(0, s.indexOf("."));
							System.out.println(s);
							%>
								<li <%=(s.equals("index")?"class=\"active\"":"")%>><a href="index.jsp"><span>Home</span></a></li>
								<li <%=(s.equals("inside")?"class=\"active\"":"")%>><a href="inside.jsp">About</a></li>
								<li <%=(s.equals("services")?"class=\"active\"":"")%>><a href="services.jsp">Services</a></li>
								<li <%=(s.equals("contact")?"class=\"active\"":"")%>><a href="contact.jsp">Contact</a></li>
								<%
								try{
									if(session.getAttribute("con").toString().equals("true"))
									{
									%>
										<li <%=(s.equals("disconnect")?"class=\"active\"":"")%>><a href="disconnect.jsp">Disconnect</a></li>
										<li <%=(s.equals("database")?"class=\"active\"":"")%>><a href="database.jsp">Database</a></li>
									<%
									}
								}
								catch(Exception e){
									%>
										<li <%=(s.equals("connect")?"class=\"active\"":"")%>><a href="connect.jsp">Connect</a></li>
									<%
								}
								%>
							</ul>
						</div>
						
					</div>
				</nav>
		  </div>
		</header>
		</div>