<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lunch</title>

    <!-- Bootstrap -->
    <link href="${contextPath}/resources/front/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/front/css/font-awesome.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/front/css/overwrite.css" rel="stylesheet">
    <link href="${contextPath}/resources/front/css/style.css" rel="stylesheet">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="${contextPath}/resources/front/js/fliplightbox.min.js"></script>
</head>

<body>

<div class="">

    <%-- Header --%>
    <div class="row">
        <%-- Main Logo --%>
        <div class="col-md-2">
            <div class="logo text-center">
                <a href="/"><h1>LUNCH</h1></a>
            </div>
        </div>

        <%-- Main Header --%>
        <div class="col-md-10">
            <div class="images">
                <%-- <img src="${contextPath}/resources/front/img/2.jpg" alt="" width="100%;" height="150px;"/> --%>
            </div>
        </div>
    </div>
    <%-- /Header --%>

    <div class="row"><br></div>

    <div class="row">
        <%-- Side Menu Page --%>
        <div class="col-md-2">
            <div class="menu">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                    <ul class="nav nav-pills nav-stacked">
                        <li role="presentation"><a href="/">Home</a></li>
                        <li role="presentation"><a href="/">About</a></li>
                        <li role="presentation"><a href="/">Graphics</a></li>
                        <li role="presentation"><a href="/">Experience</a></li>
                        <li role="presentation"><a href="/">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <%-- Main Page --%>
        <div class="col-md-10">
            <sitemesh:write property='body'/><%-- sitemesh body --%>
        </div>
        <%-- /Main Page --%>
        
    </div><%-- row --%>
    
    <%-- Footer --%>
    <div class="row">
        <div class="text-center">
            <br>&copy; All Right Reserved Designed by <a href="#">BESTPLAYKJ</a><br><br>
        </div>
    </div>
    
</div>

</body>
</html>