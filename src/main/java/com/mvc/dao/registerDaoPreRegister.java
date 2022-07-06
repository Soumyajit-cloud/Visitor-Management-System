package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.registerBeanPreRegister;

import com.mvc.util.connection;

public class registerDaoPreRegister {
	public String registerUser(registerBeanPreRegister registerBean) {
		String id=registerBean.getid();
		String name=registerBean.getname();
		String phone=registerBean.getphone();
		String address=registerBean.getaddress();
		String exp_date=registerBean.getexpdate();
		String exp_time=registerBean.getexptime();
		String meeting=registerBean.getmeeting();
		String reason=registerBean.getreason();
		
		Connection con=null;
		PreparedStatement preparedStatement=null;
		try {
			con=connection.createConnection();
			String query="insert into pre_reg(id,name,phone,address,exp_date,exp_time,meeting,reason) values (?,?,?,?,?,?,?,?)";
			preparedStatement=con.prepareStatement(query);
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, phone);
			preparedStatement.setString(4, address);
			preparedStatement.setString(5, exp_date);
			preparedStatement.setString(6, exp_time);
			preparedStatement.setString(7, meeting);
			preparedStatement.setString(8, reason);
			
			int i=preparedStatement.executeUpdate();
			
			if(i!=0)
				return "SUCCESS";
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return "Failed";
	}
}
