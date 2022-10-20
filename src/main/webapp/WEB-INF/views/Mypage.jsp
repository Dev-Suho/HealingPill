<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>

    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">마이페이지</h1><br>
                        <div class="button wow fadeInUp" data-wow-delay=".8s">
                            <a href="/Mypage" class="btn">회원 정보 수정</a>
                            <a href="/Mypage_order" class="btn">주문 내역</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->
<section class="features section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h3 class="wow zoomIn" data-wow-delay=".2s">MYPAGE</h3><br>
                </div>
                <div class="section-title">
                    <form id="mypage_information" name="mypage_information"  method="post" action="mypage_information">

                        <table class="table" >
                                <tr>
                                    <td style="background-color:#c7a8ff" ><b>ID</b></td>
                                    <td>${member_detail.mem_id}</td>
                                <tr>
                                <tr>
                                    <td style="background-color:#c7a8ff" ><b>비밀번호</b></td>
                                    <td>${member_detail.mem_password}</td>
                                <tr>
                                <tr>
                                    <td style="background-color:#c7a8ff" ><b>이름</b></td>
                                    <td>이름</td>
                                    <td style="background-color:#c7a8ff" ><b>성별</b></td>
                                    <td>성별</td>
                                    <td style="background-color:#c7a8ff"><b>등급 </b></td>
                                    <td> 등급란</td>
                                <tr>
                                    <td style="background-color:#c7a8ff"><b>이메일</b></td>
                                    <td>${member_detail.mem_email}</td>
                                <tr>
                                <tr>
                                    <td style="background-color:#c7a8ff"><b>생년월일</b></td>
                                    <td></td>
                                <tr>
                                <tr>
                                    <td style="background-color:#c7a8ff"><b>전화번호</b></td>
                                    <td>${member_detail.mem_phone}</td>
                                <tr>
                                <tr>
                                    <td style="background-color:#c7a8ff"><b>주소</b></td>
                                    <td>${member_detail.mem_address}</td>
                                <tr>
                                <tr>
                                    <td style="background-color:#c7a8ff"><b>누적 주문 횟수 </b></td>
                                    <td> </td>
                                <tr>
                                <tr>
                                    <td style="background-color:#c7a8ff"><b>가입일</b></td>
                                    <td>${member_detail.mem_register_datetime}</td>
                                <tr>
                        </table>
                        <br>
                            <div>
                                <button
                                        style="border-color: #c7a8ff; background-color: #c7a8ff; color: black; WIDTH: 100pt; HEIGHT: 30pt"
                                        type="button" class="btn" id="information_update_Btn"
                                        onclick="information_update();">회원정보 수정</button>
                                <button
                                        style="border-color: white; background-color: black; color: white; WIDTH: 80pt; HEIGHT: 30pt"
                                        type="button" class="btn center"
                                        onclick="location.href='joinout_check'">회원 탈퇴</button>
                            </div>
                            <br />
                    </form>
                </div>
            </div>
        </div>

        <div class="row">

        </div>
    </div>
</section>
<!--/ End Shopping Cart -->
<%@ include file="layout/footer.jsp" %>
