package candid;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DataAccess {

	static Connection conn = null;
	static PreparedStatement ps;

	public int insertUser(user u) {
		int status = 0;

		try {
			conn = connection.getCon();
			ps = conn.prepareStatement("insert into login values(?,?,?)");
			ps.setString(1, u.getId());
			ps.setString(2, u.getUsername());
			ps.setString(3, u.getPassword());

			status = ps.executeUpdate();
			conn.close();
			ps.close();

		} catch (Exception e) {
			System.out.println("Error to register user");

		}
		return status;
	}

	public user getUser(String username, String pass) {
		user usr = new user();
		try {
			conn = connection.getCon();
			ps = conn.prepareStatement("select * from login where username=? and password =?"); // should be same as DB
			ps.setString(1, username);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				usr.setUsername(rs.getString(2));
				usr.setPassword(rs.getString(3));
				usr.setId(rs.getString(1));
			}
		} catch (Exception e) {
			System.out.println("Error to get user");
		}

		return usr;

	}

	public int insertExpense(expense e) {
		int status = 0;

		try {
			conn = connection.getCon();
			ps = conn.prepareStatement("insert into expenditures (ic, amount, ex_date, ex_type) values(?,?,?,?)");
			ps.setInt(1, e.getIC());
			ps.setDouble(2, e.getAmount());
			ps.setString(3, e.getDate());
			ps.setString(4, e.getType());

			status = ps.executeUpdate();
			conn.close();
			ps.close();

		} catch (Exception e1) {
			System.out.println("Error to enter expense");

		}
		return status;
	}

}
