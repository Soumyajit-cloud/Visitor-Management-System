<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "project";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Home Page</title>
    <link rel="stylesheet" href="ext.css">
</head>
<body>
    <nav class="navbar navbar-light bg-light" width="70%">
        <div class="container-fluid">
            <img src="itt.png" class="ittimage">
            <a class="navbar-brand" href="land.jsp" ></a>
            <form class="d-flex">
                <a href="land.jsp" type="button" class="btn btn-outline-secondary" aria-current="page">Logout</a>
            </form>
        </div>
    </nav>
    <div class="sidebar-menu">
        <div class="options"><a href="adminhome.jsp"><img src="Dashboard.png" class="sidebar-images">Dashboard</a></div>
        <div class="options"><a href="adminVisitor.jsp"><img src="visitor.png" class="sidebar-images">Visitors</a></div>
        <div class="options"><a href="adminPreRegister.jsp"><img src="pre.png" class="sidebar-images">Pre-Registrations</a></div>
        <div class="options"><a href="employees.jsp"><img src="emp.png" class="sidebar-images">Employees</a></div>
    </div>
    <div class="body-text">
        <div class="row">
            <div class="col-sm-4">
                <div class="card">
                <%
				try{
				String sql ="select count(*) from visitor";
				resultSet = statement.executeQuery(sql);
				String Countrow="";
				while(resultSet.next()){
				%>
                    <div class="card-body">
                        <h6 class="card-title" align="center">
                            Number of Visitors: 
                        </h6>
                        <h4 class="card-text" align="center">
                            <% 
                            Countrow=resultSet.getString(1);
                            out.println(Countrow);
                            %>
                        </h4>
                    </div>
                     <%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card">
                <%
				try{
				String sql ="select count(*) from pre_reg";
				resultSet = statement.executeQuery(sql);
				String Countrow="";
				while(resultSet.next()){
				%>
                    <div class="card-body">
                        <h6 class="card-title" align="center">
                            Number of Pre-Registrations:
                        </h6>
                        <h4 class="card-text" align="center">
                            <% 
                            Countrow=resultSet.getString(1);
                            out.println(Countrow);
                            %>
                        </h4>
                    </div>
                    <%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card">
                <%
				try{
				String sql ="select count(*) from employee";
				resultSet = statement.executeQuery(sql);
				String Countrow="";
				while(resultSet.next()){
				%>
                    <div class="card-body">
                        <h6 class="card-title" align="center">
                            Number of Employees:
                        </h6>
                        <h4 class="card-text" align="center">
                            <% 
                            Countrow=resultSet.getString(1);
                            out.println(Countrow);
                            %>
                        </h4>
                    </div>
                    <%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
                </div>
            </div>
        </div>
        <div class="col-sm-10">
            <div class="card">
                <div class="card-body">
                <caption><b>List of Visitors</b></caption>
                <%
				try{
				String sql ="select * from visitor";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
				%>
                    <div class="table"> 
                        <table class="table table-striped table-hover">
                            <thead class="table-light">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Phone Number</th>
                                    <th>Date</th>
                                    <th>Checkin Time</th>
                                    <th>Person Meeting</th>
                                    <th>Reason</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th><%=resultSet.getString("id") %></th>
                                    <th><%=resultSet.getString("name") %></th>
                                    <th><%=resultSet.getString("phone") %></th>
                                    <th><%=resultSet.getString("date") %></th>
                                    <th><%=resultSet.getString("time") %></th>
                                    <th><%=resultSet.getString("meeting") %></th>
                                    <th><%=resultSet.getString("reason") %></th>
                                    <th><a href="updateVisitorAdmin.jsp?id=<%=resultSet.getString("id")%>">Update</a></th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
					<caption  class="table-heading"><b>List of Visitors that are Pre-Scheduled</b></caption>
					<%
					try{
					String sql ="select * from pre_reg";
					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
                    <div class="table">  
                        <table class="table table-striped table-hover">
                            <thead class="table-light">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Phone Number</th>
                                    <th>Expected Date</th>
                                    <th>Expected Time</th>
                                    <th>Person Meeting</th>
                                    <th>Reason</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th><%=resultSet.getString("id") %></th>
                                    <th><%=resultSet.getString("name") %></th>
                                    <th><%=resultSet.getString("phone") %></th>
                                    <th><%=resultSet.getString("exp_date") %></th>
                                    <th><%=resultSet.getString("exp_time") %></th>
                                    <th><%=resultSet.getString("meeting") %></th>
                                    <th><%=resultSet.getString("reason") %></th>
                                    <th><a href="updatePreRegisterAdmin.jsp?id=<%=resultSet.getString("id")%>">Update</a></th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
					<caption  class="table-heading"><b>List of Employees</b></caption>
					<%
					try{
					String sql ="select * from employee";
					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
                    <div class="table">
                        <table class="table table-striped table-hover">
                            <thead class="table-light">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Phone Number</th>
                                    <th>Department</th>
                                    <th>Designation</th>
                                    <th>Mail</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th><%=resultSet.getString("id") %></th>
                                    <th><%=resultSet.getString("name") %></th>
                                    <th><%=resultSet.getString("phone") %></th>
                                    <th><%=resultSet.getString("department") %></th>
                                    <th><%=resultSet.getString("designation") %></th>
                                    <th><%=resultSet.getString("mail") %></th>
                                    <th><a href="updateEmployeeAdmin.jsp?id=<%=resultSet.getString("id")%>">Update</a></th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <%
					}
					connection.close();
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">

</script>

<style>
    body{
        background: #f5f6fa;
    }
    .ittimage{
        display: block;
        margin-left: 2%;
        width: 19%;
        height: 100%;
    }
    .d-flex{
        margin-right: 2%;
    }
    div.sidebar-menu {
        margin-right: 0%;
        padding: 0;
        max-width: 250px;
        height: 100vh;
        background-color: #ffae00;
        display: inline-table;

    }
    .sidebar-menu div a span {
        margin-right: 20px;
        color: black;
        
    }
    .sidebar-menu div a  {
        background-color: #ffae00;
        padding: 20px 30px;
        display: block;
        text-decoration: none;
        color: rgb(0, 0, 0);
    }
    .sidebar-menu div a:hover  {
        background-color: #ec6f09;
        padding: 20px 30px;
        display: block;
        text-decoration: none;
        color: #fff;
    }
    .sidebar-images{
        width: 35px;
        margin-right: 3px;
    }
    .row{
    	width: 85%;
    }
    .body-text{
        position: absolute;
        margin-left: 0px;
        margin-top: 0px;
        width: fit-content;
        display: inline-table;
        
    }
    .body-table{
        position: relative;
        display: inline-table;
        margin-left: 5px;
        margin-top: 5px;
        width: fit-content;
    }
    .card{
        margin: 10px;
        display: flex;
        justify-content: center;
        flex-direction: row;
    }
    .table{
        position: relative;
        margin-top: 10px;
        display: inline-table;
    }
    caption{
        text-align: center;
    }
</style>
</html>