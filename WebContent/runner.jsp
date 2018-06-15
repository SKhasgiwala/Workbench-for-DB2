<%@page import="java.sql.*"%><%
	Connection cn = (Connection)session.getAttribute("dbc");
	Statement st = cn.createStatement();
	String q = request.getParameter("q");
	if(q.startsWith("insert")||q.startsWith("update")||q.startsWith("delete")||q.startsWith("alter")||q.startsWith("create"))
	{
		try
		{
			int i = st.executeUpdate(q);
			out.println("Query Succeded!\n"+i+" record(s) affected!");
		}
		catch(Exception e){
			out.println("Please check the syntax of the query!\nInvalid Syntax!");
		}
	}
	else if(q.startsWith("select"))
		{
		
		ResultSet rs=st.executeQuery(q);
		ResultSetMetaData rm = rs.getMetaData();
		int n = rm.getColumnCount();
		out.println("***********************************************************************************");
		for(int i=1;i<=n;i++)
		{
			String ame = rm.getColumnName(i);
			while(ame.length()<15)
			{
				ame+=" ";
			}
			out.print(ame);
		}
		out.println("\n***********************************************************************************");
	int count=0;
		while(rs.next())
		{
			count++;
			for(int i=1;i<=n;i++)
			{
				String a = rs.getString(i);
				while(a.length()<15)
				{
					a +=" ";
				}
				out.print(a);
			}
			out.println("\n-----------------------------------------------------------------------------------------------------");
			}
		out.println("Query Successful!!");
		out.println("Fetched "+count +" Records!!");
		
		}
	
%>
    
    
    