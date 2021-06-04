package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.UserBean;
import com.helper.ConnectionUtils;

public class RegisterDao {
	public static final String CREATE_NEW_USER="insert into Users (username,password,email) value(?,?,?)";
	public UserBean createNewUser(UserBean user) {
		
		try(Connection connection = ConnectionUtils.getConnection()){
		
			PreparedStatement ppstm=connection.prepareStatement(CREATE_NEW_USER);
			ppstm.setString(1, user.getUsername());
			ppstm.setString(2, user.getPassword());
			ppstm.setString(3, user.getEmail());
			
			int numberRecordCreated=ppstm.executeUpdate();
			if(numberRecordCreated==1) {
				return user;
			} else {
				return null;
			}
			
		}
		catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
