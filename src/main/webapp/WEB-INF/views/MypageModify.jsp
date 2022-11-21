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
                    <h3 class="wow zoomIn" data-wow-delay=".2s">MODIFYING MEMBER INFORMATION</h3><br>
                </div>
                <div class="section-title">
                    <form role="form" action="/MypageModify" method="post" autocomplete="off">
                        <input type="hidden" name="mem_num" value="${member.mem_num}">
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <span><b>아이디</b></span>
                                <input type="text" class="form-control form-control-user" id="mem_id" name="mem_id" style="text-align:center;" value="${member.mem_id}"
                                       placeholder="아이디" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <span><b>비밀번호</b></span>
                                <input type="password" class="form-control form-control-user" id="mem_password" name="mem_password" style="text-align:center;" value="${member.mem_password}"
                                       placeholder="비밀번호">
                            </div>
                        </div>
                        <%--<div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user"  style="text-align:center;"
                                       placeholder="등급" readonly="readonly">
                            </div>
                        </div>--%>
                        <div class="form-group row">
                            <span><b>이름</b></span>
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user"  style="text-align:center;" value="${member.mem_username}"
                                       placeholder="이름" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group row">
                            <span><b>성별</b></span>
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user"  style="text-align:center;" value="${member.mem_sex}"
                                       placeholder="성별" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <span><b>생년월일</b></span>
                                <input type="text" class="form-control form-control-user"  style="text-align:center;" value="${member.mem_birth_year}.${member.mem_birth_month}.${member.mem_birth_day}"
                                       placeholder="생년월일" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <span><b>전화번호</b></span>
                                <input type="text" class="form-control form-control-user" id="mem_phone" name="mem_phone" style="text-align:center;" value="${member.mem_phone}"
                                       placeholder="전화번호">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <span><b>주소</b></span>
                                <input type="text" class="form-control form-control-user" id="mem_address" name="mem_address" style="text-align:center;" value="${member.mem_address}"
                                       placeholder="주소">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <span><b>이메일</b></span>
                                <input type="text" class="form-control form-control-user" id="mem_email" name="mem_email" style="text-align:center;" value="${member.mem_email}"
                                       placeholder="이메일 주소">
                            </div>
                        </div>
                        <%--<div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user"  style="text-align:center;" value=""
                                       placeholder="누적 주문 횟수" readonly="readonly">
                            </div>
                        </div>--%>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <span><b>가입일</b></span>
                                <input type="text" class="form-control form-control-user"  style="text-align:center;" value="${member.mem_register_datetime}"
                                       placeholder="가입일" readonly="readonly">
                            </div>
                        </div><br>
                        <div class="button" align="center">
                            <button class="btn"
                                    type="submit"
                                    id = "update_btn">수정 완료</button>
                            <button
                                    class="btn btn-alt"
                                    type="button" class="btn center"
                                    onclick="location.href='/Mypage'"> 수정 취소
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/ End Shopping Cart -->

<%@ include file="layout/footer.jsp" %>
