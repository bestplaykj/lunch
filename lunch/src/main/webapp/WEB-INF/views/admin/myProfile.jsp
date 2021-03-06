<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10 portlets">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="pull-left">My Profile</div>
                    <div class="widget-icons pull-right">
                        <a href="javascript:;" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                        <a href="javascript:;" class="wclose"><i class="fa fa-times"></i></a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="panel-body">
                    <div class="padd">
                        <div class="form quick-post">
                            <!-- Edit profile form (not working)-->
                            <form class="form-horizontal">
                                <!-- account -->
                                <div class="form-group">
                                    <label class="control-label col-lg-2" for="account">아이디</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" id="account" readonly="readonly" value="${member.account}">
                                    </div>
                                </div>
                                <!-- password -->
                                <div class="form-group">
                                    <label class="control-label col-lg-2" for="password">비밀번호</label>
                                    <div class="col-lg-10">
                                        <button type="button" class="btn btn-primary" onclick="changePwd('${member.account}')">비밀번호 변경</button>
                                    </div>
                                </div>
                                <!-- accountType -->
                                <div class="form-group">
                                    <label class="control-label col-lg-2" for="accountType">회원분류</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" id="accountType" readonly="readonly" value="${member.accountType}">
                                    </div>
                                </div>
                                <!-- name -->
                                <div class="form-group">
                                    <label class="control-label col-lg-2" for="name">이름</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" id="name" readonly="readonly" value="${member.memberName}">
                                    </div>
                                </div>
                                <!-- email -->
                                <div class="form-group">
                                    <label class="control-label col-lg-2" for="email">이메일</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" id="email" readonly="readonly" value="${member.email}">
                                    </div>
                                </div>
                                <!-- registration date -->
                                <div class="form-group">
                                    <label class="control-label col-lg-2" for="registrationDate">가입일</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" id="registrationDate" readonly="readonly" value="${member.registrationDate}">
                                    </div>
                                </div>
                                <!-- Buttons -->
                                <div class="form-group">
                                    <!-- Buttons -->
                                    <div class="col-lg-offset-2 col-lg-9">
                                        <button type="button" class="btn btn-danger" onclick="unregister('${member.account}')">아이디 삭제</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div><%-- col-md-10 portlets --%>
        <div class="col-md-1"></div>
    </div>
    
<script type="text/javascript">
function changePwd(account) {
    var pwd = prompt("현재 비밀번호를 입력하세요");
    if (pwd == null || pwd == "") { return false; }
    
    $.ajax({
        url : "/admin/myProfile/pwdCheck",
        type : "post",
        data : {account:account, pwd:pwd},
        dataType : "json"
        
    }).done(function(data) {
        if (data.result) {
            var newPwd = prompt("새로운 비밀번호를 입력하세요");
            if (newPwd == null || newPwd == "") { return false; }
            
            updatePwd(account, newPwd);
            
        } else {
            alert("비밀번호가 틀렸습니다.");
            return false;
        }
        
    }).fail(function(request, status, error) {
    });
}

function updatePwd(account, newPwd) {
    $.ajax({
        url : "/admin/myProfile/updatePwd",
        type : "post",
        data : {account:account, pwd:newPwd},
        dataType : "json"
        
    }).done(function(data) {
        if (data.result) {
            alert("비밀번호가 변경되었습니다.");
            
        } else {
            alert("비밀번호 변경에 실패했습니다.");
        }
        
    }).fail(function(request, status, error) {
    });
}

function unregister(account) {
    if (!confirm("정말로 탈퇴하시겠습니까?")) { return false; }
    
    var pwd = prompt("비밀번호를 입력하세요.");
    if (pwd == null || pwd == "") { return false; }
    
    $.ajax({
        url : "/admin/myProfile/pwdCheck",
        type : "post",
        data : {account:account, pwd:pwd},
        dataType : "json"
        
    }).done(function(data) {
        if (data.result) {
            unregisterAccount(account);
            
        } else {
            alert("비밀번호가 틀렸습니다.");
            return false;
        }
        
    }).fail(function(request, status, error) {
    });
    
}

function unregisterAccount(account) {
    $.ajax({
        url : "/admin/myProfile/unregisterAccount",
        type : "post",
        data : {account:account},
        dataType : "json"
        
    }).done(function(data) {
        if (data.result) {
            alert("凸");
            location.href="/member/signInOut/signOut";
            
        } else {
            alert("회원탈퇴에 실패했습니다.");
            return false;
        }
        
    }).fail(function(request, status, error) {
    });
}
</script>
</body>