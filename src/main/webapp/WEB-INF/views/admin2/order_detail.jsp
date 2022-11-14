<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                    <i class="mdi mdi-account-location icon-md text-primary"></i>  Order Details
                </h3>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">주문 정보</li>
                        <li class="breadcrumb-item active" aria-current="page">주문 조회</li>
                    </ol>
                </nav>
            </div>
            <div class="row">
                <div class="col-lg-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">주문 정보</h4>
                            <p class="card-description">
                                주문 상세 정보
                            </p>
                            <table class="table">
                                <tr>
                                    <th>주문번호</th>
                                    <td class="data_td">${member_detail.mem_id}</td>
                                </tr>
                                <tr>
                                    <th>주문일</th>
                                    <td class="data_td">${member_detail.mem_username}</td>
                                </tr>
                                <tr>
                                    <th>주문상태</th>
                                    <td class="data_td">${member_detail.mem_email}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">주문 상품 정보</h4>
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>상품 이미지</th>
                                    <th>상품명</th>
                                    <th>수량</th>
                                    <th>판매가</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>상품 이미지</td>
                                    <td>오메가</td>
                                    <td>1</td>
                                    <td>23,000</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">총 결제 금액</h4>
                            <p class="card-description">
                                주문 건 결제 금액 + 배송비 = 총 결제 금액
                            </p>
                            <div class="col-md-4 d-flex align-items-center">
                                <div class="d-flex flex-row align-items-center">
                                    <i class="mdi mdi-coin icon-lg text-warning"></i>
                                    <p class="mb-0 ml-1">
                                    <h3>100,000</h3>
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
<%@ include file="layout/footer.jsp" %>