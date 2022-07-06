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
String department=request.getParameter("department");
String designation=request.getParameter("designation");
String mail=request.getParameter("mail");
String username=request.getParameter("username");
String password=request.getParameter("password");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update employee set id=?,name=?,phone=?,department=?,designation=?,mail=?,username=?,password=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, id);
ps.setString(2, name);
ps.setString(3, phone);
ps.setString(4, department);
ps.setString(5, designation);
ps.setString(6, mail);
ps.setString(7, username);
ps.setString(8, password);
int i = ps.executeUpdate();
if(i > 0)
{
request.getRequestDispatcher("/adminhome.jsp").forward(request, response);
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