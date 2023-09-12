import java.sql.*;

public class Program1 
{
	public static void main(String args[])
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Preethaa@20");
			System.out.println("Connection is successful");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
