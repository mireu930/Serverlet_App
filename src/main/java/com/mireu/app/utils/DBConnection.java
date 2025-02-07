package com.mireu.app.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBConnection {

	public static Connection getConnection() throws Exception {
		String user = "hr";
		String pw = "hr";
		String url ="jdbc:oracle:thin:@3.37.55.29:1521:xe";
		String driver = "oracle.jdbc.driver.OracleDriver";
		
		Class.forName(driver);
		
		Connection con = DriverManager.getConnection(url, user, pw);
		
		return con;
	}
	
	public static void disConnection(Connection connection, PreparedStatement preparedStatement, ResultSet resultSet) throws Exception {
		resultSet.close();
		preparedStatement.close();
		connection.close();
	}
	
	public static void disConnection(Connection connection, PreparedStatement preparedStatement) throws Exception {
		preparedStatement.close();
		connection.close();
	}
}
