<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>HealingPill - 나만의 영양제 찾기</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="resources/assets/image/x-icon" href="resources/assets/images/favicon.svg" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">


    <!-- ========================= CSS here ========================= -->
    <link rel="stylesheet" href="resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="resources/assets/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="resources/assets/css/LineIcons.3.0.css" />
    <link rel="stylesheet" href="resources/assets/css/animate.css" />
    <link rel="stylesheet" href="resources/assets/css/tiny-slider.css" />
    <link rel="stylesheet" href="resources/assets/css/glightbox.min.css" />
    <link rel="stylesheet" href="resources/assets/css/main.css" />

    <!-- 추가 -->
    <link rel="stylesheet" href="resources/assets/css_login/animate.css" />
    <link rel="stylesheet" href="resources/assets/css_login/tailwind.css" />

    <!-- ==== WOW JS ==== -->
    <script src="resources/assets/js_login/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>

</head>

<body>

<!-- Preloader -->
<div class="preloader">
    <div class="preloader-inner">
        <div class="preloader-icon">
            <span></span>
            <span></span>
        </div>
    </div>
</div>
<!-- /End Preloader -->

<!-- Start Header Area -->
<header class="header navbar-area">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <div class="nav-inner">
                    <!-- Start Navbar -->
                    <nav class="navbar navbar-expand-lg">
                        <a class="navbar-brand" href="/">
                            <img src="resources/assets/images/logo/healingpill_logo.png" alt="Logo">
                        </a>
                        <button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="toggler-icon"></span>
                            <span class="toggler-icon"></span>
                            <span class="toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                            <ul id="nav" class="navbar-nav ms-auto">
                                <li class="nav-item">
                                    <a href="/" class="active" aria-label="Toggle navigation">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a href="/allProducts" class="active" aria-label="Toggle navigation">전 제품 보기</a>
                                </li>
                                <li class="nav-item">
                                    <a class="dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse"
                                       data-bs-target="#submenu-1-2" aria-controls="navbarSupportedContent"
                                       aria-expanded="false" aria-label="Toggle navigation">나만의 영양제 찾기</a>
                                </li>
                                <li class="nav-item">
                                    <a class="dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse"
                                       data-bs-target="#submenu-1-3" aria-controls="navbarSupportedContent"
                                       aria-expanded="false" aria-label="Toggle navigation">커뮤니티</a>
                                    <ul class="sub-menu collapse" id="submenu-1-3">
                                        <li class="nav-item"><a href="/faq">FAQ</a></li>
                                        <li class="nav-item"><a href="/magazine">매거진</a></li>
                                        <li class="nav-item"><a href="/event">이벤트 정보 안내</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div> <!-- navbar collapse -->
                        <div class="button">
                            <a href="/cart" class="btn"><i class="bi bi-cart4"></i></a>
                            <a href="/Login" class="btn">로그인하기</a>
                        </div>
                    </nav>
                    <!-- End Navbar -->
                </div>
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</header>
<!-- End Header Area -->