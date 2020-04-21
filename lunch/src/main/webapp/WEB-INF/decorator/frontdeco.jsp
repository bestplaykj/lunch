<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title><c:if test="${empty member}">Guest</c:if><c:if test="${!empty member}">${member.memberName}</c:if></title>
    
    <%-- favicon --%>
    <link rel="shortcut icon" href="${contextPath}/resources/hi.gif" type="image/x-icon">
    
    <!-- Bootstrap -->
    <link href="${contextPath}/resources/front/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/front/css/font-awesome.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/front/css/overwrite.css" rel="stylesheet">
    <link href="${contextPath}/resources/front/css/style.css" rel="stylesheet">
    
    <link href="${contextPath}/resources/admin/css/bootstrap-theme.css" rel="stylesheet">
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="${contextPath}/resources/front/js/fliplightbox.min.js"></script>
    
    <!-- bootstrap -->
    <script src="${contextPath}/resources/admin/js/bootstrap.min.js"></script>
</head>

<body>

<div class="">

    <%-- Header --%>
    <div class="row">
        <%-- Main Logo --%>
        <div class="col-md-2">
            <div class="logo text-center">
                <a href="/"><h1>hello</h1></a>
            </div>
        </div>

        <%-- Main Header --%>
        <div class="col-md-10">
            <div class="col-md-10"></div>
            <div class="col-md-2">
            
                <div class="top-nav notification-row">
                    <!-- notificatoin dropdown start-->
                    <ul class="nav pull-right top-menu">
                        <!-- user login dropdown start-->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="username">
                                    <c:if test="${empty member}">GUEST</c:if>
                                    <c:if test="${!empty member}">${member.memberName} 님</c:if>
                                </span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu extended logout">
                                <div class="log-arrow-up"></div>
                            <c:if test="${empty member}">
                                <li><a href="/member/signInOut/signInForm"><i class="icon_key_alt"></i>로그인</a></li>
                            </c:if>
                            <c:if test="${!empty member}">
                                <li class="eborder-top"><a href="/customer/myProfile"><i class="icon_profile"></i>내 정보</a></li>
                                <li><a href="/member/signInOut/signOut"><i class="icon_key_alt"></i>로그아웃</a></li>
                            </c:if>
                            </ul>
                        </li>
                        <!-- user login dropdown end -->
                    </ul>
                    <!-- notificatoin dropdown end-->
                </div>
                
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
                        <li role="presentation"><a href="/">about</a></li>
                        <li role="presentation"><a href="/">menu</a></li>
                        <li role="presentation"><a href="/">D.I.Y</a></li>
                        <li role="presentation"><a href="/">contact</a></li>
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
            <br>&copy; All Right Reserved Designed by <a href="javascript:;">BESTPLAYKJ</a><br><br>
        </div>
    </div>
    
</div>

</body>
</html>