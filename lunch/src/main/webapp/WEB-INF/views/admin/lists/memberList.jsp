<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
    
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    <c:if test="${account eq 'admin'}">관리자 리스트</c:if>
                    <c:if test="${account eq 'customer'}">일반회원 리스트</c:if>
                </header>
                <table class="table table-striped table-advance table-hover">
                    <tbody>
                        <tr>
                            <th><i class="icon_key_alt"></i> 아이디</th>
                            <th><i class="icon_info_alt"></i> 회원분류</th>
                            <th><i class="icon_profile"></i> 이름</th>
                            <th><i class="icon_mail_alt"></i> 이메일</th>
                            <th><i class="icon_calendar"></i> 가입일</th>
                            <th><i class="icon_cogs"></i> 상태</th>
                        </tr>
                <c:choose>
                    <c:when test="${!empty list}">
                        <c:forEach items="${list}" var="mem">
                        <tr>
                            <td>
                                <a href="/admin/getUserMemberProfile?account=${mem.account}">${mem.account}</a>
                            </td>
                            <td>${mem.accountType}</td>
                            <td>${mem.memberName}</td>
                            <td>${mem.email}</td>
                            <td>${mem.registrationDate}</td>
                            <td>
                                <div class="btn-group">
                                    <!-- <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a> -->
                                    <c:if test="${mem.useYn eq 'Y'}"><a class="btn btn-success" href="javascript:;" ><i class="icon_check_alt2"></i></a></c:if>
                                    <c:if test="${mem.useYn eq 'N'}"><a class="btn btn-danger" href="javascript:;" ><i class="icon_close_alt2"></i></a></c:if>
                                </div>
                            </td>
                        </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td colspan="6">리스트가 없습니다.</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
                    </tbody>
                </table>
            </section>
        </div><%-- col-lg-12 --%>
    </div><%-- row --%>
    
    <div class="row">
        <div class="col-lg-12 text-center">
            <div class="btn-group">
            <c:choose>
                <c:when test="${!empty paging}">
                    <c:forEach var="pages" begin="1" end="${paging.totalPages}" step="1">
                        <c:if test="${paging.currPage eq pages}">
                        <a class="btn btn-muted" href="javascript:;">${pages}</a>
                        </c:if>
                        <c:if test="${paging.currPage ne pages}">
                            <c:if test="${account eq 'admin'}"><a class="btn btn-primary" href="/admin/getAdminMemberList?currPage=${pages}" >${pages}</a></c:if>
                            <c:if test="${account eq 'customer'}"><a class="btn btn-primary" href="/admin/getUserMemberList?currPage=${pages}" >${pages}</a></c:if>
                        </c:if>
                    </c:forEach>
                </c:when>
            </c:choose>
                
            </div>
        </div>
    </div>
    
</body>