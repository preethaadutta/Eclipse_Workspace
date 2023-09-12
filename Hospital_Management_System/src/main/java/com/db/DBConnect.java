package com.db;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnect 
{
	private static Connection conn;
	public static Connection getConn() 
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver"); //Syntax: Class.forName(Driver name);
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management_system","root",
					"Preethaa@20");
			//Connection conn=DriverManager.getConnection(url,username,password);
		} 
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}
}
