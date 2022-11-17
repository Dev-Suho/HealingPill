<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
           <%-- <a class="navbar-brand brand-logo" href="/admin2/index"><img src="../resources/admin/images/s.jpg" alt="logo"/></a>
            <a class="navbar-brand brand-logo-mini" href="/admin2/index"><img src="../resources/admin/images/logo-mini.svg" alt="logo"/></a>--%>
               <a class="navbar-brand brand-logo" href="/admin2/customer"><h3>HealingPill</h3></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
            <ul class="navbar-nav navbar-nav-right">
                <li class="nav-item nav-profile">
                    <a class="nav-link" id="profile" href="#" aria-expanded="false">
                        <div class="nav-profile-img">
                            <img src="../resources/admin/images/faces/face1.jpg" alt="image">
                            <span class="availability-status online"></span>
                        </div>
                        <div class="nav-profile-text">
                            <p class="mb-1 text-black">관리자 이름</p>
                        </div>
                    </a>
                </li>
                <li class="nav-item nav-logout d-none d-lg-block">
                    <a class="nav-link" href="/">
                        <i class="mdi mdi-power"></i>
                    </a>
                </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                <span class="mdi mdi-menu"></span>
            </button>
        </div>
    </nav>

    <!-- Sidebar Section -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <li class="nav-item nav-profile">
                    <a href="#" class="nav-link">
                        <div class="nav-profile-image">
                            <img src="../resources/admin/images/faces/personal-security.png" alt="profile">
                            <span class="login-status online"></span> <!--change to offline or busy as needed-->
                        </div>
                        <div class="nav-profile-text d-flex flex-column">
                            <span class="font-weight-bold mb-2">관리자 이름</span>
                            <span class="text-secondary text-small">Project Manager</span>
                        </div>
                        <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic1" aria-expanded="false" aria-controls="ui-basic">
                        <span class="menu-title">회원 관리</span>
                        <i class="menu-arrow"></i>
                        <i class="mdi mdi-account-circle menu-icon"></i>
                    </a>
                    <div class="collapse" id="ui-basic1">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="/admin2/customer">회원 조회</a></li>
                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic2" aria-expanded="false" aria-controls="ui-basic">
                        <span class="menu-title">주문 관리</span>
                        <i class="menu-arrow"></i>
                        <i class="mdi mdi-account-circle menu-icon"></i>
                    </a>
                    <div class="collapse" id="ui-basic2">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="/admin2/order">주문 조회</a></li>
                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic3" aria-expanded="false" aria-controls="ui-basic">
                        <span class="menu-title">상품 관리</span>
                        <i class="menu-arrow"></i>
                        <i class="mdi mdi-account-circle menu-icon"></i>
                    </a>
                    <div class="collapse" id="ui-basic3">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="/admin2/product_add">상품 등록</a></li>
                            <li class="nav-item"> <a class="nav-link" href="/admin2/product_list">상품 조회</a></li>
                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic4" aria-expanded="false" aria-controls="ui-basic">
                        <span class="menu-title">매거진 관리</span>
                        <i class="menu-arrow"></i>
                        <i class="mdi mdi-account-circle menu-icon"></i>
                    </a>
                    <div class="collapse" id="ui-basic4">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="/admin2/customer">매거진 등록</a></li>
                            <li class="nav-item"> <a class="nav-link" href="/admin2/customer">매거진 관리</a></li>
                        </ul>
                    </div>
                </li>

                <%--<li class="nav-item">
                  <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                    <span class="menu-title">UI Elements</span>
                    <i class="menu-arrow"></i>
                    <i class="mdi mdi-crosshairs-gps menu-icon"></i>
                  </a>
                  <div class="collapse" id="ui-basic">
                    <ul class="nav flex-column sub-menu">
                      <li class="nav-item"> <a class="nav-link" href="../resources/admin/pages/ui-features/buttons.html">Buttons</a></li>
                      <li class="nav-item"> <a class="nav-link" href="../resources/admin/pages/ui-features/typography.html">Typography</a></li>
                    </ul>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../resources/admin/pages/icons/mdi.html">
                    <span class="menu-title">Icons</span>
                    <i class="mdi mdi-contacts menu-icon"></i>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../resources/admin/pages/forms/basic_elements.html">
                    <span class="menu-title">Forms</span>
                    <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../resources/admin/pages/charts/chartjs.html">
                    <span class="menu-title">Charts</span>
                    <i class="mdi mdi-chart-bar menu-icon"></i>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../resources/admin/pages/tables/basic-table.html">
                    <span class="menu-title">Tables</span>
                    <i class="mdi mdi-table-large menu-icon"></i>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" data-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
                    <span class="menu-title">Sample Pages</span>
                    <i class="menu-arrow"></i>
                    <i class="mdi mdi-medical-bag menu-icon"></i>
                  </a>
                  <div class="collapse" id="general-pages">
                    <ul class="nav flex-column sub-menu">
                      <li class="nav-item"> <a class="nav-link" href="../resources/admin/pages/samples/blank-page.html"> Blank Page </a></li>
                      <li class="nav-item"> <a class="nav-link" href="../resources/admin/pages/samples/login.html"> Login </a></li>
                      <li class="nav-item"> <a class="nav-link" href="../resources/admin/pages/samples/register.html"> Register </a></li>
                      <li class="nav-item"> <a class="nav-link" href="../resources/admin/pages/samples/error-404.html"> 404 </a></li>
                      <li class="nav-item"> <a class="nav-link" href="../resources/admin/pages/samples/error-500.html"> 500 </a></li>
                    </ul>
                  </div>
                </li>
                <li class="nav-item sidebar-actions">
                    <span class="nav-link">
                      <div class="border-bottom">
                        <h6 class="font-weight-normal mb-3">Projects</h6>
                      </div>
                      <button class="btn btn-block btn-lg btn-gradient-primary mt-4">+ Add a project</button>
                      <div class="mt-4">
                        <div class="border-bottom">
                          <p class="text-secondary">Categories</p>
                        </div>
                        <ul class="gradient-bullet-list mt-4">
                          <li>Free</li>
                          <li>Pro</li>
                        </ul>
                      </div>
                    </span>
                </li>--%>
            </ul>
        </nav>