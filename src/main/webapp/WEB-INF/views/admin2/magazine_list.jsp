<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2022-11-14
  Time: 오후 3:03
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<!-- partial -->
<div class="main-panel">
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">
                <b>매거진 목록</b>
            </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">매거진 조회</a></li>
                    <li class="breadcrumb-item active" aria-current="page">매거진 관리</li>
                </ol>
            </nav>
        </div>
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Magazine Chart</h4>
                        <p class="card-description">
                            매거진 차트
                        </p>
                        <table class="table" id="magazineList">
                            <thead>
                            <tr>
                                <th><h5><b>매거진 번호</b></h5></th>
                                <th><h5><b>제목</b></h5></th>
                                <th><h5><b>소제목</b></h5></th>
                                <th><h5><b>등록일</b></h5></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${magazine}" var="magazine">
                                <form role="form" method="post" autocomplete="off">
                                    <tr>
                                    <tr onclick="location.href='/admin2/magazineView?n=${magazine.mg_no}'">
                                        <td>${magazine.mg_no}</td>
                                        <td>${magazine.mg_title}</td>
                                        <td>${magazine.mg_sum}</td>
                                        <td><fmt:formatDate value="${magazine.mg_datetime}" pattern="yyyy-MM-dd"/></td>
                                    </tr>
                                </form>
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