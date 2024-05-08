package com.card;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/hertz_music_store";
	private static String user = "root";
	private static String pass = "123456";
	private static Connection con;
	
	public static Connection get_connect(){
		
		try {
			//connect database
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,pass);
			
		}catch(Exception e) {
			System.out.println("Database connection not success");
		}
		
		return con;
	}
}
