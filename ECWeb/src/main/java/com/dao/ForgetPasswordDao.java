package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.UserBean;
import com.helper.ConnectionUtils;

public class ForgetPasswordDao {
	public static final String UPDATE_PASSWORD="update Users set password = ? where username = ? and email = ? ;";
	public UserBean updatePassword(UserBean user) {
		
		try(Connection connection = ConnectionUtils.getConnection()){
		
			PreparedStatement ppstm=connection.prepareStatement(UPDATE_PASSWORD);
			
			ppstm.setString(1, user.getPassword());
			ppstm.setString(2, user.getUsername());
			ppstm.setString(3, user.getEmail());
			
			int numberRecordUpdated=ppstm.executeUpdate();
			if(numberRecordUpdated==1) {
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
