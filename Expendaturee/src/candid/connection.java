package candid;

import java.sql.Connection;
import java.sql.DriverManager;

public class connection {
	
static Connection con=null;

static String DB_URL ="jdbc:mysql://localhost:3306/expand";
static String USER = "root";
static String PASS = "1234";
	
	public static Connection getCon() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			System.out.println("Connecting to database...");
			con=DriverManager.getConnection(DB_URL,USER,PASS);
			System.out.println("Connecting sucess");
			
		}catch(Exception e) {
			System.out.println("database open error");
		}
		return con;

	}

}
