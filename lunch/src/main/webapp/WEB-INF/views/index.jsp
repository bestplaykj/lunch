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
    <link href="${contextPath}/resources/personal/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/personal/css/font-awesome.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/personal/css/overwrite.css" rel="stylesheet">
    <link href="${contextPath}/resources/personal/css/style.css" rel="stylesheet">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="${contextPath}/resources/personal/js/fliplightbox.min.js"></script>
</head>

<body>

<div class="">

    <%-- Header --%>
    <div class="row">
        <jsp:include page="../includes/header.jsp" />
    </div>

    <div class="row"><br></div>

    <div class="row">
        <%-- Side Menu Page --%>
        <div class="col-md-2">
            <jsp:include page="../includes/sideMenu.jsp" />
        </div>

        <%-- Main Page --%>
        <div class="col-md-10">
            <div class="images">
                <img src="${contextPath}/resources/personal/img/mainlunch.jpg" alt="" />
            </div>
        </div>
        <%-- /Main Page --%>
    </div>
    
    <%-- Footer --%>
    <div class="row">
        <jsp:include page="../includes/footer.jsp" />
    </div>
    
</div>

</body>
</html>