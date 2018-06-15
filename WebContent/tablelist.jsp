<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Custom Context Menus!</title>
  <link rel="stylesheet" href="reset.css">
  <link rel="stylesheet" href="font-awesome.min.css">
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,300">
  <link rel="stylesheet" href="style.css">
</head>
<body style="margin:0px;padding:0px;">
    <div class="container">
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
        <a href="#" class="context-menu__link" data-action="Edit"><i class="fa fa-edit"></i> Edit Table</a>
      </li>
      <li class="context-menu__item">
        <a href="#" class="context-menu__link" data-action="Delete"><i class="fa fa-times"></i> Drop Table</a>
      </li>
    </ul>
  </nav>
  <script src="main.js"></script>
</body>
</html>