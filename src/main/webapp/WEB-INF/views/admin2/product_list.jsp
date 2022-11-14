<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2022-11-03
  Time: 오후 1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<style>
    .jb-th-1 {
        width: 250px;
    }
</style>
<!-- partial -->
<div class="main-panel">
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">
                <b>상품 목록</b>
            </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">상품 조회</a></li>
                    <li class="breadcrumb-item active" aria-current="page">상품 관리</li>
                </ol>
            </nav>
        </div>
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Product Chart</h4>
                        <p class="card-description">
                            상품 차트
                        </p>
                        <table class="table" id="productList">
                            <thead>
                            <tr>
                                <th><h5><b>상품 번호</b></h5></th>
                                <th><h5><b>이름</b></h5></th>
                                <th><h5><b>카테고리</b></h5></th>
                                <th><h5><b>가격</b></h5></th>
                                <th><h5><b>수량</b></h5></th>
                                <th><h5><b>등록일</b></h5></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${list}" var="list">
                                <tr onClick="location.href='/admin2/productView?n=${list.pd_num}'">
                                    <td class="jb-th-1">${list.pd_num}</td>
                                    <td>${list.pd_name}</td>
                                    <td>${list.ctg_code}</td>
                                    <td><fmt:formatNumber value="${list.pd_price}" pattern="###,###,###"/></td>
                                    <td>${list.pd_stock}</td>
                                    <td><fmt:formatDate value="${list.pd_register_datetime}" pattern="yyyy-MM-dd"/></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    </div>

    <!-- content-wrapper ends -->
<%@ include file="layout/footer.jsp" %>