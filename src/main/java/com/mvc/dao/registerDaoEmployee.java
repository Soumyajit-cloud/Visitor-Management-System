package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.registerBeanEmployee;

import com.mvc.util.connection;

public class registerDaoEmployee {
	
	public String registerEmployee(registerBeanEmployee registerBean) {
		String id=registerBean.getid();
		String name=registerBean.getname();
		String gender=registerBean.getgender();
		String phone=registerBean.getphone();
		String department=registerBean.getdepartment();
		String designation=registerBean.getdesignation();
		String mail=registerBean.getmail();
		String username=registerBean.getusername();
		String password=registerBean.getpassword();
		
		Connection con=null;
		PreparedStatement preparedStatement=null;
		try {
			con=connection.createConnection();
			String query="insert into employee(id,name,gender,phone,department,designation,mail,username,password) values (?,?,?,?,?,?,?,?,?)";
			preparedStatement=con.prepareStatement(query);
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, gender);
			preparedStatement.setString(4, phone);
			preparedStatement.setString(5, department);
			preparedStatement.setString(6, designation);
			preparedStatement.setString(7, mail);
			preparedStatement.setString(8, username);
			preparedStatement.setString(9, password);
			
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
