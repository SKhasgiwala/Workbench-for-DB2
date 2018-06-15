package com.svits.dao;

import java.sql.*;

public class DBMan 
{
	static Connection cn;
	static PreparedStatement ps;
	static{
		try {
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			String url = "jdbc:db2://"+Props.Host+":"+Props.Port+"/"+Props.DB;
			cn = DriverManager.getConnection(url, Props.User, Props.Password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static int contact(String email, String fname, String lname, String con, String msg)throws Exception{
		ps = cn.prepareStatement("insert into contact (email, fname, lname, con, msg, msgdate, msgtime)values(?, ?, ?, ?, ?, ?, ?)");
		ps.setString(1, email);
		ps.setString(2, fname);
		ps.setString(3, lname);
		ps.setString(4, con);
		ps.setString(5, msg);
		ps.setDate(6, new Date(System.currentTimeMillis()));
		ps.setTime(7, new Time(System.currentTimeMillis()));
		System.out.println(email);
		System.out.println(fname);
		System.out.println(lname);
		System.out.println(con);
		System.out.println(msg);
		System.out.println(new Date(System.currentTimeMillis()));
		System.out.println(new Time(System.currentTimeMillis()));
		
		
		
		return ps.executeUpdate();
	}
	
}
