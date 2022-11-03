<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2022-11-03
  Time: 오후 1:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<!-- partial -->
<div class="main-panel">
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">
                <b>주문 목록</b>
            </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">주문 조회</a></li>
                    <li class="breadcrumb-item active" aria-current="page">주문 관리</li>
                </ol>
            </nav>
        </div>
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Order Chart</h4>
                        <p class="card-description">
                            주문 차트
                        </p>
                        <table class="table">
                            <thead>
                            <tr>
                                <th><h5><b>주문 일자</b></h5></th>
                                <th><h5><b>주문 번호</b></h5></th>
                                <th><h5><b>주문자</b></h5></th>
                                <th><h5><b>결제 금액</b></h5></th>
                                <th><h5><b>배송지</b></h5></th>
                                <th><h5><b>휴대폰 번호</b></h5></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${memberList}" var="memberList" >
                                <tr onclick = "window.open('/admin2/member_detail?mem=${memberList.mem_num}','member_detail','width=800, height=750');">
                                    <td>${memberList.mem_id}</td>
                                    <td>${memberList.mem_username}</td>
                                    <td>${memberList.mem_birth_year}.${memberList.mem_birth_month}.${memberList.mem_birth_day}</td>
                                    <td>${memberList.mem_phone}</td>
                                    <td>-</td>
                                    <td>-</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- content-wrapper ends -->
    <%@ include file="layout/footer.jsp" %>
