package com.mvc.visitor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.registerBeanVisitor;
import com.mvc.dao.registerDaoVisitor;

public class registerUserVisitor extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		String meeting=request.getParameter("meeting");
		String reason=request.getParameter("reason");
		
		registerBeanVisitor registerBean=new registerBeanVisitor();
		registerBean.setid(id);
		registerBean.setname(name);
		registerBean.setphone(phone);
		registerBean.setaddress(address);
		registerBean.setdate(date);
		registerBean.settime(time);
		registerBean.setmeeting(meeting);
		registerBean.setreason(reason);
		
		registerDaoVisitor registerDao=new registerDaoVisitor();
		
		String userRegistered = registerDao.registerUser(registerBean);
        
        if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
        {
           request.getRequestDispatcher("/userVisitor.jsp").forward(request, response);
        }
        else   //On Failure, display a meaningful message to the User.
        {
           request.setAttribute("errMessage", userRegistered);
           request.getRequestDispatcher("").forward(request, response);
        }
	}
}
