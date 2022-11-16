<%--
  Created by IntelliJ IDEA.
  User: FROG
  Date: 2022-11-10
  Time: 오후 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<body class="sb-nav-fixed">
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">매거진 관리</h1>
            <br>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table mr-1"></i> MAGAZINE
                </div>
                <div class="memberManager">
                    <div class="card-body">
                        <table class="table table-hover" id="productList">
                            <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>내용</th>
                                <th>등록일</th>
                                <th>관리</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${magazine}" var="magazine">
                                <form role="form" method="post" autocomplete="off">
                                    <tr>
                                        <td>${magazine.mg_no}</td>
                                        <td>${magazine.mg_title}</td>
                                        <td>${magazine.mg_content}</td>
                                        <td>${magazine.mg_datetime}</td>
                                        <td><a href="/magazine/delete?mg_no=${magazine.mg_no}" onclick="return confirm('삭제하시겠습니까?');">삭제</a></td>
                                    </tr>
                                </form>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>
