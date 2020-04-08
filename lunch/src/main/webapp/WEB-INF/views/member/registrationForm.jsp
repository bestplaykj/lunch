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
    
    <title>이경준</title>
    
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
                            <div class="form-group row">
                                <div class="col-sm-10 mb-3 mb-sm-0">
                                    <input type="text" class="form-control form-control-user" id="account" placeholder="Account">
                                </div>
                                <div class="col-sm-2 mb-3 mb-sm-0" id="accountCheck">
                                    <a class="small btn btn-warning btn-user btn-block"" href="javascript:;" onclick="accountValidation()">check</a>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="password" class="form-control form-control-user password" id="password" placeholder="Password" onkeyup="passwordValidation()">
                                </div>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control form-control-user password" id="repassword" placeholder="Repeat Password" onkeyup="passwordValidation()">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="name" placeholder="Name (eg. LEE, Kyungjoon)">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control form-control-user" id="email" placeholder="Email Address">
                            </div>
                            <a href="javascript:;" class="btn btn-primary btn-user btn-block" id="registerBtn" onclick="register()" style="visibility:hidden;">Register Account</a>
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
var accountCheck = false;


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

function accountValidation() {
    var account = $("#account").val();
    if (account == null || account == "") {
        alert("아이디를 입력하세요.");
        $("#account").focus();
        return false;
    }
    
    $.ajax({
        url : "/member/signInOut/accountValidation",
        type : "post",
        data : {account:account},
        dataType : "json",
        success : function(data) {
            if (data.result) {
                if (!confirm("사용가능합니다. 이대로 사용하시겠습니까?")) { return false; }
                
                $("#account").attr("readonly", "readonly");
                $("#accountCheck").empty();
                $("#accountCheck").append("<img src='${contextPath}/resources/sbadmin/img/check.png' style='width:40px; height:40px;'>");
                accountCheck = true;
                
            } else {
                alert("이미 존재하는 아이디 입니다.");
                $("#account").val("");
            }
        },
        error : function(request, status, error){
        }
    });
    
}

function passwordValidation() {
    var pwd = $("#password").val();
    var repwd = $("#repassword").val();
    
    if (pwd != null && pwd != "" && repwd != null && repwd != "") {
        if (pwd != repwd) {
            $("#registerBtn").css("visibility", "hidden");
        }
        
        if (pwd == repwd) {
            $("#registerBtn").css("visibility", "visible");
        }
    }
    
}

function register() {
    if (!accountCheck) {
        alert("아이디 중복체크를 해주세요.");
        return false;
    }
    
    var account = $("#account").val();
    var password = $("#password").val();
    var repass = $("#repassword").val();
    var name = $("#name").val();
    var email = $("#email").val();
    
    if (!valueValidation(account, password, repass, name, email)) { return false; }
    
    $.ajax({
        url : "/member/signInOut/registration",
        type : "post",
        data : {account:account, pwd:password, memberName:name, email:email},
        dataType : "json",
        success : function(data) {
            if (data.result) {
                alert("회원가입이 완료되었습니다.");
                location.href="/member/signInOut/signInForm";
                
            } else {
                alert("회원가입에 실패했습니다.");
                location.href="/member/signInOut/registrationForm";
            }
        },
        error : function(request, status, error) {
        }
    });
    
}
</script>
</body>
</html>