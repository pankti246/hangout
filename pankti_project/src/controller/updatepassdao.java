package controller;

import java.sql.DriverManager;

import controller.updatepassbean;

public class updatepassdao {
	public String storevalues(updatepassbean s) {
		String newpassword = s.getnewpassword();
		String email = s.getemail();
		java.sql.Connection con = null;
		java.sql.PreparedStatement statement = null;
		java.sql.ResultSet resultSet = null;
					
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
			statement = con.prepareStatement("UPDATE user_details SET pwd=? where email=?");
			statement.setString(1, newpassword);
			statement.setString(2, email);
			statement.executeUpdate();
			return "SUCCESS";
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return "Update password";
	}
	

	

}
