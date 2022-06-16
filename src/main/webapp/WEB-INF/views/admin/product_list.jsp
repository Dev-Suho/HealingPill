<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<body>
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">
            <h1 class="mt-4">상품관리</h1>
        </div>
        <br>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table mr-1"></i> 상품차트
            </div>
            <div class="memberManager">
                <table class="table table-hover" id="productList">
                    <thead>
                    <tr>
                        <th>공백</th>
                        <th>번호</th>
                        <th>이름</th>
                        <th>카테고리</th>
                        <th>가격</th>
                        <th>수량</th>
                        <th>등록일</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="list">
                            <tr>
                                <td>공백</td>
                                <td>${list.pd_num}</td>
                                <td><a href="/admin/productView?n=${list.pd_num}">${list.pd_name}</a> </td>
                                <td>${list.ctg_code}</td>
                                <td><fmt:formatNumber value="${list.pd_price}" pattern="###,###,###"/></td>
                                <td>${list.pd_stock}</td>
                                <td><fmt:formatDate value="${list.pd_register_datetime}" pattern="yyyy-MM-dd"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
            </div>
        </div>
</main>
</div>
</body>
</html>