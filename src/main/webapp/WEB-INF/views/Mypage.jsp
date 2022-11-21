<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>

<style>
    th, td {
        text-align: center;
    }
</style>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">마이페이지</h1><br>
                    <div class="button wow fadeInUp" data-wow-delay=".8s">
                        <a href="/Mypage" class="btn">회원 정보 수정</a>
                        <a href="/Mypage_order?id=${member.mem_id}" class="btn">주문 내역</a>
                        <a href="/Mypage_survey" class="btn">나만의 영양제 결과보기</a>
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
                    <h3 class="wow zoomIn" data-wow-delay=".2s">MY PAGE</h3><br>
                </div>
                <form role="form" method="post" autocomplete="off">
                <table class="table table-bordered">
                    <tr>
                        <th class="table-primary"><b>ID</b></th>
                        <td>${member.mem_id}</td>
                    </tr>
                    <tr>
                        <th class="table-primary"><b>비밀번호</b></th>
                        <td>${member.mem_password}</td>
                    </tr>
                    <tr>
                        <th class="table-primary"><b>이름</b></th>
                        <td>${member.mem_username}</td>
                    </tr>
                    <tr>
                        <th class="table-primary"><b>성별</b></th>
                        <td>${member.mem_sex}</td>
                    </tr>
                    <%--<tr>
                        <th class="table-primary"><b>등급</b></th>
                        <td></td>
                    </tr>--%>
                    <tr>
                        <th class="table-primary"><b>이메일</b></th>
                        <td>${member.mem_email}</td>
                    </tr>
                    <tr>
                        <th class="table-primary"><b>생년월일</b></th>
                        <td>${member.mem_birth_year}년 ${member.mem_birth_month}월 ${member.mem_birth_day}일</td>
                    </tr>
                    <tr>
                        <th class="table-primary"><b>전화번호</b></th>
                        <td>${member.mem_phone}</td>
                    </tr>
                    <tr>
                        <th class="table-primary"><b>주소</b></th>
                        <td>${member.mem_address}</td>
                    </tr>
                    <%--<tr>
                        <th class="table-primary"><b>누적 주문 횟수</b></th>
                        <td></td>
                    </tr>--%>
                    <tr>
                        <th class="table-primary"><b>가입일</b></th>
                        <td><fmt:formatDate value="${member.mem_register_datetime}" pattern="yyyy-MM-dd"/></td>
                    </tr>
                </table>
                <br>
                <div class="button" align="center">
                    <a href="MypageModify?num=${member.mem_num}" class="btn">회원 정보 수정</a>
                    <a href="/Mypage/delete?mem_num=${member.mem_num}" onclick="return confirm('탈퇴하시겠습니까?');" class="btn btn-alt">회원 탈퇴</a>
                </div>
                </form>
            </div>
        </div>
    </div>
</section>

<!--/ End Shopping Cart -->
<%@ include file="layout/footer.jsp" %>