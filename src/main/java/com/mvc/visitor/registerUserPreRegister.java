package com.mvc.visitor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.registerBeanPreRegister;
import com.mvc.dao.registerDaoPreRegister;

public class registerUserPreRegister extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String exp_date=request.getParameter("exp_date");
		String exp_time=request.getParameter("exp_time");
		String meeting=request.getParameter("meeting");
		String reason=request.getParameter("reason");
		
		registerBeanPreRegister registerBean=new registerBeanPreRegister();
		registerBean.setid(id);
		registerBean.setname(name);
		registerBean.setphone(phone);
		registerBean.setaddress(address);
		registerBean.setexpdate(exp_date);
		registerBean.setexptime(exp_time);
		registerBean.setmeeting(meeting);
		registerBean.setreason(reason);
		
		registerDaoPreRegister registerDao=new registerDaoPreRegister();
		
		String userRegistered = registerDao.registerUser(registerBean);
        
        if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
        {
           request.getRequestDispatcher("/userPreRegister.jsp").forward(request, response);
        }
        else   //On Failure, display a meaningful message to the User.
        {
           request.setAttribute("errMessage", userRegistered);
           request.getRequestDispatcher("").forward(request, response);
        }
	}
}
