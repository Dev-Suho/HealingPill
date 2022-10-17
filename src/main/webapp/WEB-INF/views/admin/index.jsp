<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="layout/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body class="sb-nav-fixed">
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">회원 목록</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">회원관리</li>
            </ol>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table me-1"></i>
                    회원차트
                </div>
                <div class="card-body">
                    <table class="table table-hover" id="datatablesSimple">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>이름</th>
                            <th>생년월일</th>
                            <th>번호</th>
                            <th>주문횟수</th>
                            <th>등급</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>이름</th>
                            <th>생년월일</th>
                            <th>번호</th>
                            <th>주문횟수</th>
                            <th>등급</th>
                        </tr>
                        </tfoot>
                        <tbody>
                        <c:forEach items="${memberList}" var="memberList" >
                            <tr>
                                <td>${memberList.mem_id}</td>
                                <td><a href="/admin/member_detail?mem=${memberList.mem_num}">${memberList.mem_username}</a></td>
                                <td>${memberList.mem_birth_year}.${memberList.mem_birth_month}.${memberList.mem_birth_day}</td>
                                <td>${memberList.mem_phone}</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                        </c:forEach>
                        <tr>

                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>
    <footer class="py-4 bg-light mt-auto">
        <div class="container-fluid px-4">
            <div class="d-flex align-items-center justify-content-between small">
                <div class="text-muted">Copyright &copy; Your Website 2022</div>
                <div>
                    <a href="#">Privacy Policy</a>
                    &middot;
                    <a href="#">Terms &amp; Conditions</a>
                </div>
            </div>
        </div>
    </footer>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
