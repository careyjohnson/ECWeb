package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;

import com.bean.UserBean;
import com.helper.ConnectionUtils;

public class UserDao {
	public static final String ALL_USER="select * from users";
	public List<UserBean> getAllUser(){
		try(Connection connection = ConnectionUtils.getConnection()){
			Statement ppstm=(Statement) connection.createStatement();
			
			ResultSet rs=ppstm.executeQuery(ALL_USER);
			List<UserBean> userBeans=new ArrayList<>();
			
			while(rs.next()) {
				UserBean user = new UserBean();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				userBeans.add(user);
			}
			
			return userBeans;
			
		} catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
