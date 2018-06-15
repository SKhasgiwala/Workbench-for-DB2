<%@page import="java.sql.*"%>
<%@page import="com.svits.dao.DBSession"%>
<%
	String msg = request.getParameter("msg");
	if(msg.equals("drop"))
	{
		String result = DBSession.guiDropTable(session.getAttribute("dbc"), request.getParameter("table"));
		%>
		<h1><%=result%></h1>
		<%
	}
	else if(msg.equals("view"))
	{
		ResultSet rs = ((Connection)session.getAttribute("dbc")).createStatement()
				.executeQuery("Select * from " + request.getParameter("table"));
		ResultSetMetaData rm = rs.getMetaData();
		int n = rm.getColumnCount();
		out.println("<table border=1 width=\"100%\">");
		out.println("<tr>");
		for(int i=1;i<=n;i++){
			out.println("<th align=center>"+rm.getColumnName(i)+"</th>");
		}
		out.println("</tr>");		
		while(rs.next())
		{
			out.println("<tr>");
			for(int i=1;i<=n;i++){
				out.println("<td align=center>"+rs.getString(i)+"</td>");
			}
			out.println("</tr>");		
			}
		out.println("</table>");
	}
	else 

 
%>

<h4>To refresh table list - <button onclick="location.reload(true);">Click Me</button></h4>