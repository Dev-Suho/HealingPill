<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>HealingPill Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../resources/admin/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../resources/admin/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../resources/admin/css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../resources/assets/images/favicon.svg" />
    <style>
        th, td {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container-scroller">
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="page-header">
                    <h3 class="page-title">
                        <i class="mdi mdi-account-location icon-md text-primary"></i>  Member Details
                    </h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">회원 상세 정보</li>
                            <li class="breadcrumb-item active" aria-current="page">회원 조회</li>
                        </ol>
                    </nav>
                </div>
                <div class="row">
                    <div class="col-lg-6 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">회원 정보</h4>
                                <p class="card-description">
                                    회원 상세 정보
                                </p>
                                <table class="table">
                                    <tr>
                                        <th>ID</th>
                                        <td class="data_td">${member_detail.mem_id}</td>
                                    </tr>
                                    <tr>
                                        <th>이름</th>
                                        <td class="data_td">${member_detail.mem_username}</td>
                                    </tr>
                                    <tr>
                                        <th>이메일</th>
                                        <td class="data_td">${member_detail.mem_email}</td>
                                    </tr>
                                    <tr>
                                        <th>성별</th>
                                        <td class="data_td">${member_detail.mem_sex}</td>
                                    </tr>
                                    <tr>
                                        <th>생년월일</th>
                                        <td class="data_td">${member_detail.mem_birth_year}.${member_detail.mem_birth_month}.${member_detail.mem_birth_day}</td>
                                    </tr>
                                    <tr>
                                        <th>전화번호</th>
                                        <td class="data_td">${member_detail.mem_phone}</td>
                                    </tr>
                                    <tr>
                                        <th>주소</th>
                                        <td class="data_td">${member_detail.mem_address}</td>
                                    </tr>
                                    <tr>
                                        <th>가입일</th>
                                        <td class="data_td"><fmt:formatDate value="${member_detail.mem_register_datetime}" pattern="yyyy-MM-dd"/></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">주문 상품</h4>
                                <p class="card-description">
                                    회원 별 주문 상품
                                </p>
                                <table class="table table-striped"  id="order">
                                    <thead>
                                    <tr>
                                        <th>주문 일자</th>
                                        <th>주문 번호</th>
                                        <th>결제 금액</th>
                                        <th>처리 현황</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:set var="sum"  value="0" />
                                    <c:forEach var="order" items="${order}">
                                        <tr  onclick="location.href='/admin2/order_detail?order=${order.order_id}'">
                                            <td class="data_td"><fmt:formatDate value="${order.order_register_datetime}" pattern="yyyy-MM-dd"/></td>
                                            <td class="data_td">${order.order_id}</td>
                                            <td><fmt:formatNumber value="${order.totalPrice}" pattern="###,###,###"/></td>
                                            <td class="data_td">${order.order_State}</td>
                                        </tr>
                                        <c:set var="sum" value="${sum + order.totalPrice}" />
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">총 구매 금액</h4>
                                <p class="card-description">
                                    지금까지 주문한 총 구매 금액
                                </p>
                                <div class="col-md-4 d-flex align-items-center">
                                    <div class="d-flex flex-row align-items-center">
                                        <i class="mdi mdi-coin icon-lg text-warning"></i>
                                        <p class="mb-0 ml-1">
                                            <h3><fmt:formatNumber value="${sum}" pattern="###,###,###"/></h3>
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">메모</h4>
                                <p class="card-description">
                                    회원에 관한 정보 메모
                                </p>
                                <div class="col-md-4 d-flex align-items-center">
                                    <div class="form-group">
                                        <textarea class="form-control" id="exampleTextarea1" cols="500" rows="10" placeholder="내용을 입력하세요."></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            <!-- content-wrapper ends -->
<%@ include file="layout/footer.jsp" %>