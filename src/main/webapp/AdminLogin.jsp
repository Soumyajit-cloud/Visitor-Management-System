<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Login Page</title>
    <link rel="stylesheet" href="ext.css">
</head>
<body>
    <nav class="navbar navbar-light bg-light" width="70%">
        <div class="container-fluid">
            <img src="itt.png" class="ittimage">
            <a class="navbar-brand" href="land.html" ></a>
            <form class="d-flex">
                <a href="userlogin.jsp" type="button" class="btn btn-outline-secondary" aria-current="page">User Login</a>
                <a href="adminlogin.jsp" type="button" class="btn btn-outline-secondary" aria-current="page">Admin Login</a>
            </form>
        </div>
    </nav>
    <div class="row">
        <div class=" col-md-offset-6">
            <h1>Welcome to the portal</h1>
            <div class="container">
            	<form action="AdminLogin" method="post">
	                <label for="uname"><b>Username</b></label>
	                <input type="text" placeholder="Enter Username" name="username" required><br>
	                <label for="psw"><b>Password</b></label>
	                <input type="password" placeholder="Enter Password" name="password" required><br>
	                <input type="submit" class="btn btn-outline-warning" value="Login"></input>
	            </form>
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
    input[type=text], input[type=password] {
        width: 50%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }
    button {
        background-color: darkorange;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 20%;
    }
    button:hover {
        opacity: 0.8;
    }
    .container {
        padding: 16px;
    }
    .row{
        text-align: center;
        margin-top: 5%;
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
</style>
</html>