<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>HealingPill Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="/resources/admin/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="/resources/admin/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="/resources/admin/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="/resources/assets/images/favicon.svg" />
  <style>
    th, td {
      text-align: center;
    }
  </style>
</head>

<style>
  th, td {
    text-align: center;
  }
</style>

<!-- End Breadcrumbs -->
<section class="features section">
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
          <div class="col-lg-6 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">주문 상품 정보</h4>
                <table class="table table-striped">
                  <thead>
                  <tr>
                    <th><b>상품명</b></th>
                    <th><b>수량</b></th>
                    <th><b>판매가</b></th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="myPageorderDetail" items="${myPageorderDetail}">
                    <tr >
                      <td class="data_td" onclick="location.href='/allProductsDetail?itemId=${myPageorderDetail.pd_num}'">${myPageorderDetail.pd_num}</td>
                      <td class="data_td">${myPageorderDetail.order_stock}</td>
                      <td class="data_td"><fmt:formatNumber value="${myPageorderDetail.pd_price}" pattern="###,###,###"/></td>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

</section>
<!--/ End Shopping Cart -->
