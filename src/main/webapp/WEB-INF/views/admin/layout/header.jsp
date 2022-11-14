<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<style>
  #adminheader{
    padding-left: 79%;
  }
</style>
<head>
  <title>HEALINGPILL 관리자</title>
  <link href ="/resources/assets/css/adminstyles.css" rel="stylesheet"/>
  <link href = "https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-light" style="background-color:#6f42c1; " >
  <!-- Navbar Brand-->
  <a class="navbar-brand ps-3" href="/" style="color:white; font-size:15pt">HealingPill</a>
  <!-- Sidebar Toggle-->
  <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
  <!-- Navbar Search-->
  <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
    <div class="input-group">
      <input class="form-control" type="text" placeholder="검색" aria-label="Search for..." aria-describedby="btnNavbarSearch" />
      <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
    </div>
  </form>
  <!-- Navbar-->
</nav>
<div id="layoutSidenav">
  <div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-light"  style="background-color:#6f42c1; " id="sidenavAccordion">
      <div class="sb-sidenav-menu">
        <div class="nav">
          <div class="sb-sidenav-menu-heading">회원관리</div>
          <a class="nav-link" href="index.html" style="color:white; font-size:12pt" >
            <div class="sb-nav-link-icon" ><i class="fas fa-tachometer-alt"></i></div>
            회원조회
          </a>
          <div class="sb-sidenav-menu-heading">주문관리</div>
          <a class="nav-link" href="/admin/order" style="color:white; font-size:12pt">
            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
            주문조회
          </a>
          <div class="sb-sidenav-menu-heading">상품관리</div>
          <a class="nav-link" href="/admin/product_add" style="color:white; font-size:12pt">
            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
            상품 등록
          </a>
          <a class="nav-link" href="/admin/product_list" style="color:white; font-size:12pt">
            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
            상품 관리
          </a>
          <div class="sb-sidenav-menu-heading">커뮤니티관리</div>
          <a class="nav-link" href="/admin/cm_magazine" style="color:white; font-size:12pt" >
            <div class="sb-nav-link-icon" ><i class="fas fa-tachometer-alt"></i></div>
            매거진 등록
          </a>
          <a class="nav-link" href="/admin/magazine_list" style="color:white; font-size:12pt" >
            <div class="sb-nav-link-icon" ><i class="fas fa-tachometer-alt"></i></div>
            매거진 관리
          </a>
          <div class="sb-sidenav-menu-heading">관리</div>
          <a class="nav-link" href="charts.html" style="color:white; font-size:12pt">
            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
            Charts
          </a>
          <a class="nav-link" href="tables.html" style="color:white; font-size:12pt">
            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
            Tables
          </a>
        </div>
      </div>
      <div class="sb-sidenav-footer">
        <div class="small">Logged in as:</div>
        HealingPill
      </div>
    </nav>
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
  <link href= "/resources/assets/js/adminscripts.js" rel="stylesheet" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>

</body>
</html>