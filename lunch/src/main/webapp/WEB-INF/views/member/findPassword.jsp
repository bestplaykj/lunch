<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>hello</title>
    
    <%-- favicon --%>
    <link rel="shortcut icon" href="${contextPath}/resources/hi.gif" type="image/x-icon">
    
    <!-- Custom fonts for this template-->
    <link href="${contextPath}/resources/sbadmin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    
    <!-- Custom styles for this template-->
    <link href="${contextPath}/resources/sbadmin/css/sb-admin-2.min.css" rel="stylesheet">
    
    <!-- Bootstrap core JavaScript-->
    <script src="${contextPath}/resources/sbadmin/vendor/jquery/jquery.min.js"></script>
    <script src="${contextPath}/resources/sbadmin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    <!-- Core plugin JavaScript-->
    <script src="${contextPath}/resources/sbadmin/vendor/jquery-easing/jquery.easing.min.js"></script>
    
    <!-- Custom scripts for all pages-->
    <script src="${contextPath}/resources/sbadmin/js/sb-admin-2.min.js"></script>
</head>

<body class="bg-gradient-primary">

    <div class="container">
    
        <!-- Outer Row -->
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-12 col-md-9">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">Forgot Your Password ?</h1>
                                        <p class="mb-4">We get it, stuff happens.<br>Just enter your email address below and we'll send you a link to reset your password !</p>
                                    </div>
                                <form class="user">
                                    <div class="form-group">
                                        <input type="email" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Email Address...">
                                    </div>
                                    <a href="javascript:;" class="btn btn-primary btn-user btn-block">Reset Password</a>
                                </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="/member/signInOut/registrationForm">Create an Account !</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="/member/signInOut/signInForm">Already have an account ? &nbsp; Sign In !</a>
                                    </div>
                                </div><%-- p-5 --%>
                            </div><%-- col-lg-6 --%>
                        </div>
                        <!-- /Nested Row within Card Body -->
                    </div><%-- card-body p-0 --%>
                </div><%-- card o-hidden border-0 shadow-lg my-5 --%>
            </div><%-- col-xl-10 col-lg-12 col-md-9 --%>
        </div>
        <!-- /Outer Row -->
        
    </div>
    
</body>
</html>