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
    
    <title>Lunch</title>
    
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
    
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                            </div>
                        <form class="user">
                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="account" placeholder="Account">
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="password" class="form-control form-control-user password" id="password" placeholder="Password" onkeypress="passwordValidation()">
                                </div>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control form-control-user password" id="repassword" placeholder="Repeat Password" onkeypress="passwordValidation()">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="name" placeholder="Name (eg. LEE, Kyungjoon)">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control form-control-user" id="email" placeholder="Email Address">
                            </div>
                            <a href="javascript:;" class="btn btn-primary btn-user btn-block" onclick="register()">Register Account</a>
                            <hr>
                            <a href="javascript:;" class="btn btn-google btn-user btn-block"><i class="fab fa-google fa-fw"></i> Register with Google</a>
                            <a href="javascript:;" class="btn btn-facebook btn-user btn-block"><i class="fab fa-facebook-f fa-fw"></i> Register with Facebook</a>
                        </form>
                        <hr>
                            <div class="text-center">
                                <a class="small" href="/member/signInOut/signInForm">Already have an account ? &nbsp; Sign In !</a>
                            </div>
                        </div><%-- p5 --%>
                    </div><%-- col-lg-7 --%>
                </div>
                <!-- Nested Row within Card Body -->
            </div><%-- card-body p-0 --%>
        </div><%-- card o-hidden border-0 shadow-lg my-5 --%>

    </div><%-- container --%>
    
<script type="text/javascript">
function valueValidation(account, password, repass, name, email) {
    if (account == null || account == "") {
        $("#account").focus();
        alert("아이디를 입력하세요.");
        return false;
    }
    
    if (password == null || password == "") {
        $("#password").focus();
        alert("비밀번호를 입력하세요.");
        return false;
    }
    
    if (repassword == null || repassword == "") {
        $("#repassword").focus();
        alert("비밀번호를 입력하세요.");
        return false;
    }
    
    if (name == null || name == "") {
        $("#name").focus();
        alert("이름을 입력하세요.");
        return false;
    }
    
    if (email == null || email == "") {
        $("#email").focus();
        alert("이메일을 입력하세요.");
        return false;
    }
    
    return true;
}

function passwordValidation() {
    // TODO
}

function register() {
    var account = $("#account").val();
    var password = $("#password").val();
    var repass = $("#repassword").val();
    var name = $("#name").val();
    var email = $("#email").val();
    
    if (!valueValidation(account, password, repass, name, email)) { return false; }
    
}
</script>
</body>
</html>