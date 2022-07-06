<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
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
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from pre_reg where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
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
        <div class="options"><a href="userhome.jsp"><img src="Dashboard.png" class="sidebar-images">Dashboard</a></div>
        <div class="options"><a href="userVisitor.jsp"><img src="visitor.png" class="sidebar-images">Visitors</a></div>
        <div class="options"><a href="userPreRegister.jsp"><img src="pre.png" class="sidebar-images">Pre-Registrations</a></div>
    </div>
	<div class="body-text">
        <div class="row">
            <div class="col-sm-8">
                <div class="card text-center">
                    <div class="card-heading">
                        <h4 class="heading" text-align="center">Update the personal details of the visitor</h4>
                    </div>                        
                    <div class="card-body">
                        <form name="form" action="updateUserPreRegisterProcess.jsp" method="post"">
                            <label for="id">ID:</label>
                            <input type="text" id="id" name="id" value="<%=resultSet.getString("id") %>"><br>
                            <label for="name">Name:</label>
                            <input type="text" id="name" name="name" value="<%=resultSet.getString("name") %>"><br>
                            <label for="phone">Phone Number</label>
                            <input type="number" id="phone" name="phone" value="<%=resultSet.getString("phone") %>"><br>
                            <label for="meeting">Meeting Person</label>
                            <input type="text" id="meeting" name="meeting" value="<%=resultSet.getString("meeting") %>"><br>
                            <label for="exp_date">Expected Date of Visit</label>
                            <input type="date" id="exp_date" name="exp_date" value="<%=resultSet.getString("exp_date") %>"><br>
                            <label for="exp_time">Expected Time of Visit</label>
                            <input type="time" id="exp_time" name="exp_time" value="<%=resultSet.getString("exp_time") %>"><br>
                            <label for="reason">Reason of Visit</label>
                            <input type="text" id="reson" name="reason" value="<%=resultSet.getString("reason") %>"><br><br>
                            <input type="submit" class="btn btn-outline-warning" value="Update"></input>
                        </form>
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
    .body-text{
        position: absolute;
        display: inline-table;
        margin-left: 10%;
        margin-top: 3%;
        width: 100%;
    }
    label{
        padding: 10px 15px;
        margin: 5px 0px;
        width: 40%
    }
    input, textarea{
        width: 40%;
        vertical-align: middle;
    }
</style>
</html>