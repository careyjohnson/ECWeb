package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.LoginBean;
import com.bean.UserBean;
import com.helper.ConnectionUtils;

public class LoginDao {
	public static final String IS_VALID_CREDENTIAL="select * from users where username=? and password=?;";
	public UserBean isValidLogin(LoginBean loginCredential) {
		
		try(Connection connection = ConnectionUtils.getConnection()){
		
			PreparedStatement ppstm=connection.prepareStatement(IS_VALID_CREDENTIAL);
			ppstm.setString(1, loginCredential.getUsername());
			ppstm.setString(2, loginCredential.getPassword());
			
			ResultSet rs=ppstm.executeQuery();
			
			while(rs.next()){
				if(loginCredential.getUsername().equals(rs.getString("username"))&&loginCredential.getPassword().equals(rs.getString("password"))){

					UserBean user=new UserBean();
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
					
					return user;
				}
			}
			return null;
		}
		catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
