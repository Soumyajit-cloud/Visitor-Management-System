<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Home Page</title>
</head>
<body>
    <nav class="navbar navbar-light bg-light" width="70%">
        <div class="container-fluid">
        	<img src="itt.png" class="ittimage">
            <a class="navbar-brand" href="land.jsp" ></a>
            <form class="d-flex">
                <a href="userlogin.jsp" type="button" class="btn btn-outline-secondary" aria-current="page">User Login</a>
                <a href="AdminLogin.jsp" type="button" class="btn btn-outline-secondary" aria-current="page">Admin Login</a>
            </form>
        </div>
    </nav>
    <div class="row row-no-gutters">
        <div class="col-md-6">
            <div class="content">
                <h2>ITT "Visitor Management System"</h2><br>
                <h5>An innovative and modern solution for </h5><br>
                <h5>managing and keeping a record of all the visitors.</h5><br>
            </div>
        </div>
        <div class="col-md-6">
            <div>
                <img src="intro.jpg" class="introimage">
            </div>
        </div>
    </div>
    <footer>
        <h6>Replacing your traditional way of recording each and every visitor and using </h6>
    </footer>

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
    .content{
        position: center;
        margin-top: 25%;
        width: 100%;
        text-align: center;
        font-size: 18px;
    }
    .introimage{
        margin-top: 20%;
        margin-left: 2%;
        width: 85%;
        height: 10%;
        
    }
    footer{
        text-align: center;
        margin-top: 6.5%;
        color: darkgray;
    }
</style>
</html>