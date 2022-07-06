<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/project";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String meeting=request.getParameter("meeting");
String exp_date=request.getParameter("exp_date");
String exp_time=request.getParameter("exp_time");
String reason=request.getParameter("reason");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update pre_reg set id=?,name=?,phone=?,exp_date=?,exp_time=?,meeting=?,reason=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, id);
ps.setString(2, name);
ps.setString(3, phone);
ps.setString(4, exp_date);
ps.setString(5, exp_time);
ps.setString(6, meeting);
ps.setString(7, reason);
int i = ps.executeUpdate();
if(i > 0)
{
request.getRequestDispatcher("/userhome.jsp").forward(request, response);
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>