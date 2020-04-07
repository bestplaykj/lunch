<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
    
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="icon_profile"></i> Profile</h3>
        </div>
    </div>
    
    <div class="row">
        <!-- profile-widget -->
        <div class="col-lg-12">
            <div class="profile-widget profile-widget-info">
                <div class="panel-body">
                    <div class="col-lg-2 col-sm-2">
                        <h4>${profile.memberName}</h4>
                        <h6>
                            <c:if test="${profile.accountType eq 'admin'}">Administrator</c:if>
                            <c:if test="${profile.accountType eq 'customer'}">Customer</c:if>
                        </h6>
                    </div>
                    <div class="col-lg-4 col-sm-4 follow-info">
                        <p>${profile.account}</p>
                        <p>${profile.email}</p>
                        <p><i class="fa fa-twitter"> tweet${profile.account}</i></p>
                        <h6>
                            <span><i class="icon_calendar"></i>${profile.registrationDate}</span>
                        </h6>
                    </div>
                <c:if test="${profile.accountType eq 'customer'}">
                    <div class="col-lg-2 col-sm-6 follow-info weather-category" id="makeAdmin" onclick="makeAdmin('${profile.account}')" >
                        <ul>
                            <li class="active"><i class="icon_info_alt"></i><br>Change "Account Type"<br>to "Administrator"</li>
                        </ul>
                    </div>
                </c:if>
                </div>
            </div><%-- profile-widget profile-widget-info --%>
        </div>
    </div>
    
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading tab-bg-info">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a data-toggle="tab" href="#recent-activity">History</a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#profile">Profile</a>
                        </li>
                    </ul>
                </header>
                
                <div class="panel-body">
                    <div class="tab-content">
                    
                        <div id="recent-activity" class="tab-pane active">
                            <div class="profile-activity">
                                
                                <%-- <c:forEach> --%>
                                <div class="act-time">
                                    <div class="activity-body act-in">
                                        <span class="arrow"></span>
                                        <div class="text">
                                            <p class="attribution"><a href="javascript:;">bestplaykj / LEE, Kyungjoon {account or memberName}</a> at 4:25pm{orderTime}, 30th Octmber 2014{orderDate}</p>
                                            <p>note for Order {orderNote}</p>
                                        </div>
                                    </div>
                                </div><%-- act-time --%>
                                <%-- </c:forEach> --%>
                                
                                <div class="act-time">
                                    <div class="activity-body">
                                        <a href="javascript:;"><i class="icon_plus_alt2"></i></a>
                                    </div>
                                </div><%-- act-time --%>
                                
                            </div>
                        </div><%-- recent-activity --%>
                        
                        <!-- profile -->
                        <div id="profile" class="tab-pane">
                            <section class="panel">
                                <div class="bio-graph-heading"></div>
                                <div class="panel-body bio-graph-info">
                                    <div class="row">
                                        <div class="bio-row">
                                            <c:if test="${profile.useYn eq 'Y' }"><p><span>Status</span>: <span style="color:blue;">${profile.useYn}</span></p></c:if>
                                            <c:if test="${profile.useYn eq 'N' }"><p><span>Status</span>: <span style="color:red;">${profile.useYn}</span></p></c:if>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="bio-row">
                                            <p><span>Account</span>: ${profile.account}</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="bio-row">
                                            <p><span>Account Type</span>: ${profile.accountType}</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="bio-row">
                                            <p><span>Name</span>: ${profile.memberName}</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="bio-row">
                                            <p><span>email</span>: ${profile.email}</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="bio-row">
                                            <p><span>Enroll</span>: ${profile.registrationDate}</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="bio-row">
                                            <c:if test="${profile.useYn eq 'Y'}"><p><span>Withdraw</span>: -</p></c:if>
                                            <c:if test="${profile.useYn eq 'N'}"><p><span>Withdraw</span>: <span style="color:red;">${profile.unregistrationDate}</span></p></c:if>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            
                            <section>
                                <div class="row"></div>
                            </section>
                            
                        </div><%-- profile --%>
                        
                    </div><%-- tab-content --%>
                </div><%-- panel-body --%>
                
            </section><%-- panel --%>
        </div><%-- col-lg-12 --%>
    </div>
    
<script type="text/javascript">
$(document).ready(function() {
    $("#makeAdmin").hover().css("cursor", "pointer");
});

function makeAdmin(account) {
    if (!confirm("'" + account + "' 이 사용자를 관리자로 지정합니다.\r\n맞습니까?")) { return false; }
    
    $.ajax({
        url : "/admin/changeAccountType",
        type : "post",
        dataType : "json",
        data : {account:account}
    
    }).done(function(data){
        if (data.result) {
            alert("관리자로 지정되었습니다.");
            
        } else {
            alert("응 실패");
        }
        
        location.reload(true);
        
    }).fail(function(request, status, error) {
        
    });
}
</script>
</body>