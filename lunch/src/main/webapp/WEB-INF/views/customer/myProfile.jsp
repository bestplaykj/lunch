<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
    
    <div class="col-md-4"><%-- col-md-push-2 --%>
        <ul class="about-data">
            <li>
                <div class="inner-abcoin"><i class="fa fa-info"></i></div>
                <label>아이디</label>
                <span class="value text-primary">${member.account}</span>
                <div class="clear"></div>
                <hr>
            </li>
            <li>
                <div class="inner-abcoin"><i class="fa fa-user"></i></div>
                <label>고객명</label>
                <span class="value text-primary">${member.memberName}</span>
                <div class="clear"></div>
                <hr>
            </li>
            <li>
                <div class="inner-abcoin"><i class="fa fa-envelope"></i></div>
                <label>이메일</label>
                <span class="value text-primary">${member.email}</span>
                <div class="clear"></div>
                <hr>
            </li>
            <li>
                <div class="inner-abcoin"><i class="fa fa-calendar"></i></div>
                <label>가입일</label>
                <span class="value text-primary">${member.registrationDate}</span>
                <div class="clear"></div>
                <hr>
            </li>
            <li>
                <div>
                    <button class="btn btn-success" onclick="changePwd('${member.account}')">비밀번호 변경</button>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="btn btn-danger" onclick="unregister('${member.account}')">탈퇴하기</button>
                </div>
                <div class="clear"></div>
                <hr>
            </li>
        </ul>
    </div>
    
    <div class="col-md-4 col-md-push-2">
        <ul class="about-data">
            <li>{list}</li>
        </ul>
    </div>
    
<script type="text/javascript">
function changePwd(account) {
    var pwd = prompt("현재 비밀번호를 입력하세요.");
    if (pwd == null || pwd == "") { return false; }
    
    $.ajax({
        url: "/customer/myProfile/pwdCheck",
        type: "post",
        data: {account:account, pwd:pwd},
        dataType: "json"
        
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
        url : "/customer/myProfile/updatePwd",
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
        url : "/customer/myProfile/pwdCheck",
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
        url : "/customer/myProfile/unregisterAccount",
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