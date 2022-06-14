<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<style>
  #adminheader{
    padding-left: 79%;
  }
</style>
<head>
  <title>HEALINGPILL 관리자</title>
  <link href ="/resources/assets/css/styles.css" rel="stylesheet"/>
  <link href = "https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-light" style="background-color:#E6E6FA; " >
  <a class="navbar-brand" href="index.html">HealingPill</a>
</nav>

<div id="layoutSidenav">
  <div id="layoutSidenav_nav">
    <nav class="sb-sidenav sb-sidenav-light" style="background-color:#E6E6FA;">
      <div class="sb-sidenav-menu">
        <div class="nav">
          <div class="sb-sidenav-menu-heading">회원관리
            <span style="color:black; font-size:15pt"/>
          </div>
          <a class="nav-link" href="/admin/index">
            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
            회원조회
          </a>
          <div class="sb-sidenav-menu-heading">주문관리</div>
          <a class="nav-link" href="order_index">
            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
            주문조회
          </a>
          <a class="nav-link" href="order_cancel_index">
            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
            주문취소조회
          </a>
          <div class="sb-sidenav-menu-heading">제품관리</div>
          <a class="nav-link" href="admin/product_add">
            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
            상품추가
          </a>
          <a class="nav-link" href="product_index">
            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
            상품관리
          </a>
          <div class="sb-sidenav-menu-heading">커뮤니티</div>
          <a class="nav-link" href="cm_qna">
            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
            Q&A
          </a>
          <a class="nav-link" href="/admin/cm_magazine">
            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
            매거진
          </a>
          <div class="sb-sidenav-menu-heading">통계</div>
          <a class="nav-link" href="Product_statistics">
            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
            상품별 현황
          </a>
        </div>
      </div>
      <div class="sb-sidenav-footer">
        <div class="small">Logged in as:</div>
        힐링필
      </div>
    </nav>
  </div>
</div>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
  <link href= "/resources/assets/js/scripts.js" rel="stylesheet" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>

</body>
</html>
