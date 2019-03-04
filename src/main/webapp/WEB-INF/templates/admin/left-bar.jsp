<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="/templates/taglib.jsp"%>
<ul class="nav">
    <!-- Main menu -->
    <li class="current"><a href="${pageContext.request.contextPath}/admin"><i class="glyphicon glyphicon-home"></i> Trang chủ</a></li>
    <c:set var="tintuc" value="tintuc"></c:set>
    <li><a href="${pageContext.request.contextPath}/admin/news"><i class="glyphicon glyphicon-list"></i>Tin tức</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/cat"><i class="glyphicon glyphicon-list"></i>Danh muc</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/user"><i class="glyphicon glyphicon-list"></i>nguoi dung</a></li>
    <li class="submenu">
         <a href="#">
            <i class="glyphicon glyphicon-list"></i> Pages
            <span class="caret pull-right"></span>
         </a>
         <!-- Sub menu -->
         <ul>
            <li><a href="login.php">Login</a></li>
            <li><a href="javascript:void(0)">Signup</a></li>
        </ul>
    </li>
</ul>