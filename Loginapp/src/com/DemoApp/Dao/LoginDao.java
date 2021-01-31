package com.DemoApp.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.sql.ResultSet;

public class LoginDao {
	String sql = "select * from login where uname = ? and pass = ?";
	String url = "jdbc:mysql://localhost:3306/testdb";
	String username = "root";
	String password = "Navin";
	public boolean check(String uname , String pass) throws SQLException {

		try {
			System.out.println("1");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,uname);
			st.setString(2,pass);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				System.out.println("2");
				return true;
			}
			
			
		}catch(ClassNotFoundException e) {
			System.out.println("3");
			e.printStackTrace();
		}
		
		return false;
	}
}
