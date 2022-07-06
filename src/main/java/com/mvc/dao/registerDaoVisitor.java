package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.registerBeanVisitor;
import com.mvc.util.connection;

public class registerDaoVisitor {
	public String registerUser(registerBeanVisitor registerBean) {
		String id=registerBean.getid();
		String name=registerBean.getname();
		String phone=registerBean.getphone();
		String address=registerBean.getaddress();
		String date=registerBean.getdate();
		String time=registerBean.gettime();
		String meeting=registerBean.getmeeting();
		String reason=registerBean.getreason();
		
		Connection con=null;
		PreparedStatement preparedStatement=null;
		try {
			con=connection.createConnection();
			String query="insert into visitor(id,name,phone,address,date,time,meeting,reason) values (?,?,?,?,?,?,?,?)";
			preparedStatement=con.prepareStatement(query);
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, phone);
			preparedStatement.setString(4, address);
			preparedStatement.setString(5, date);
			preparedStatement.setString(6, time);
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
