package com.mvc.visitor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.registerBeanEmployee;
import com.mvc.bean.registerBeanPreRegister;
import com.mvc.dao.registerDaoEmployee;
import com.mvc.dao.registerDaoPreRegister;

public class registerEmployee extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String phone=request.getParameter("phone");
		String department=request.getParameter("department");
		String designation=request.getParameter("designation");
		String mail=request.getParameter("mail");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		registerBeanEmployee registerBean=new registerBeanEmployee();
		registerBean.setid(id);
		registerBean.setname(name);
		registerBean.setgender(gender);
		registerBean.setphone(phone);
		registerBean.setdepartment(department);
		registerBean.setdesignation(designation);
		registerBean.setmail(mail);
		registerBean.setusername(username);
		registerBean.setpassword(password);
		
		registerDaoEmployee registerDao=new registerDaoEmployee();
		
		String userRegistered = registerDao.registerEmployee(registerBean);
        
        if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
        {
           request.getRequestDispatcher("/addEmployee.jsp").forward(request, response);
        }
        else   //On Failure, display a meaningful message to the User.
        {
           request.setAttribute("errMessage", userRegistered);
           request.getRequestDispatcher("").forward(request, response);
        }
	}
}
