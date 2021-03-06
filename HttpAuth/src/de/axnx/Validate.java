package de.axnx;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Validate {

	public static boolean checkUser(String user, String pass) {
		System.out.println("validate: " +  user + ":" + pass);
		boolean r = ( user.equals("user") && pass.equals("pass") )  ? true : false;
		System.out.println("r:"  + r);
		return r;
	}

	public static boolean checkUserDB(String email, String pass) {
		boolean st = false;
		try {

			// loading drivers for mysql
			Class.forName("com.mysql.jdbc.Driver");

			// creating connection with the database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "studytonight");
			PreparedStatement ps = con.prepareStatement("select * from userlist where username=? and password=?");
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			st = rs.next();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return st;
	}

}
