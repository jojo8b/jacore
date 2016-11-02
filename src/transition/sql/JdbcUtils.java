package com.sun.tools.javac.transition.sql;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;


public class JdbcUtils {

	private static String url;
	private static String user;
	private static String pwd;

	private static Connection conn = null;

	public static Connection getConnection() throws SQLException {
		if (conn != null)
			return conn;
		Properties prop = new Properties();
		try {
			prop.load(new FileInputStream("mysql.properties"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		url = prop.getProperty("url");
		user = prop.getProperty("user");
		pwd = prop.getProperty("pwd");
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		conn = DriverManager.getConnection(url, user, pwd);
		return conn;
		
	}

}
