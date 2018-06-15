<%@page import="java.sql.*"%>
<%
	String host = request.getParameter("host");
	String port = request.getParameter("port");
	String dbname = request.getParameter("dbname");
	String uname = request.getParameter("user");
	String pwd = request.getParameter("password");
	String pag = "";
	try{
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		String url = "jdbc:db2://"+host+":"+port+"/"+dbname;
		Connection con = DriverManager.getConnection(url, uname, pwd);
		session.setAttribute("dbc", con);
		session.setAttribute("con", "true");
		session.setAttribute("host", host);
		session.setAttribute("port", port);
		session.setAttribute("dbname", dbname);
		session.setAttribute("uname", uname);
		session.setAttribute("pwd", pwd);
		pag = "index.jsp?msg=connscs";
	}
	catch(Exception e){
		if(e.toString().contains("Invalid database URL"))
			pag="error.jsp?msg=connect&submsg=Please Check Your Database Properties!";
		else if(e.toString().contains("Network is unreachable"))
			pag="error.jsp?msg=connect&submsg=Please Check Your Network Connection!";
		else if(e.toString().contains("Connection timed out"))
			pag="error.jsp?msg=connect&submsg=Unable to Connect Remote Database Server, Conection Timed Out!";
		else if(e.toString().contains("Connection refused"))
			pag="error.jsp?msg=connect&submsg=Either port no. is not valid or DB Server not Responding!";
		else if(e.toString().contains("Null password is not supported"))
			pag="error.jsp?msg=connect&submsg=Password Field is necessary!";
		else if(e.toString().contains("User ID length, 0"))
			pag="error.jsp?msg=connect&submsg=User Name field is compulsory!";
		else if(e.toString().contains("An attempt was made to access a database, "))
			pag="error.jsp?msg=connect&submsg=Invalid Database Name!";		
		else if(e.toString().contains("User ID or Password invalid"))
			pag="error.jsp?msg=connect&submsg=User name or password is invalid!";		
		else
			pag="error.jsp?msg=connect&submsg=Unknown Error!";		
	}
	response.sendRedirect(pag);
%>