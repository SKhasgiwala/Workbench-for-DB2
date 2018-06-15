import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public class tester {
public static void main(String[] args) throws Exception{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection conn = DriverManager.getConnection("jdbc:db2://localhost:50000/gdb","svits","svits");
	DatabaseMetaData md = conn.getMetaData();
	ResultSet rs = md.getTables(null, null, "%", null);
	ResultSetMetaData rm = rs.getMetaData();
	int n = rm.getColumnCount();
	System.out.println("********************************");
	while (rs.next()) {
		if(rs.getString(2).equalsIgnoreCase("svits")){
			for (int i = 1; i <= n; i++) {
				System.out.println(rm.getColumnName(i) + " : " + rs.getString(i) + "\t");				
			}
		}
	}
	
	
	
	  
}
}
