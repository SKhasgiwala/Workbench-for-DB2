package com.svits.dao;

import java.sql.Connection;

public class DBSession 
{
	public static String guiDropTable(Object cn, String table)throws Exception{
		String message="";
		try{
		((Connection)cn).createStatement().executeUpdate("drop table "+table);
			message= "Table Deleted Successfully!";
		}
		catch(Exception e){
			e.printStackTrace();
			message = "Sorry Table Doesn't Exists";
		}
		return  message;
	}

}
