package com.dxc.banking;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class AdminUserDAO {
	public AdminUser validateLogin(String email, String password) throws SQLException,
	ClassNotFoundException {
		String jdbcURL = "jdbc:mysql://localhost:3306/dxcdb";
		String dbUser = "root";
		String dbPassword = "Mysql@2710";

		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
		String sql = "SELECT * FROM admin WHERE email = ? and password = ?";
		java.sql.PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, email);
		statement.setString(2, password);

		ResultSet result = statement.executeQuery();

		AdminUser adminuser = null;

		if (result.next()) {
			adminuser = new AdminUser();
			adminuser.setFullname(result.getString("fullname"));
			adminuser.setEmail(email);
		}

		connection.close();

		return adminuser;
	}
}
