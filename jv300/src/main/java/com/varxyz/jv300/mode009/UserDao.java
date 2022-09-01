package com.varxyz.jv300.mode009;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.varxyz.jv300.mod007.User;


public class UserDao {
	private DataSource dataSource;
	public UserDao() {
		NamingService namingService = NamingService.getInstance();
		dataSource = (DataSource) namingService.getAttribute("dataSource");
	}
	
	
	public void addUser(User user) {
		String sql = "INSERT INTO Users(userId, passwd, userName, email, ssn, addr)"
				+ "VALUES(?, ?, ?, ?, ?, ?)";
		
		try {
			Connection con = null;
			PreparedStatement pstmt = null;
		
			try {
				con = dataSource.getConnection();
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, user.getUserId());
				pstmt.setString(2, user.getPasswd());
				pstmt.setString(3, user.getUserName());
				pstmt.setString(4, user.getEmail());
				pstmt.setString(5, user.getSsn());
				pstmt.setString(6, user.getAddr());
				pstmt.executeUpdate();
				
				System.out.println("INSERTED.....");
			} finally {
				dataSource.close(pstmt, con);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public User findUserByUserId(String userId) {
	      String sql = "SELECT * FROM Users WHERE userId = ?"
	            + " VALUES (?)";
	      try {
	         Connection con = null;
	         PreparedStatement pstmt = null;
	         ResultSet rs = null;
	         try {
	            con = dataSource.getConnection();
	            pstmt = con.prepareStatement(sql);
	            pstmt.setString(1, userId);
	            rs = pstmt.executeQuery();
	            User user = null;
	            while(rs.next()) {
	               user.setUserName(rs.getString("userName"));
	               user.setUserId(rs.getString("userId"));
	               user.setPasswd(rs.getString("passwd"));
	               user.setSsn(rs.getString("ssn"));
	               user.setEmail(rs.getString("email"));
	               user.setAddr(rs.getString("addr"));
	               return user;
	            }
	            
	         } finally {
	            dataSource.close(rs, pstmt, con);
	         }
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      
	      return null;
	   }




}