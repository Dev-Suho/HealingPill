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
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <span> 아이디 </span>
                                <input type="text" class="form-control form-control-user" id="me_id" name="me_id" style="text-align:center;" value="${ member.mem_id }"
                                       placeholder="아이디" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="password" class="form-control form-control-user" id="me_pwd" name="me_pwd" style="text-align:center;"
                                       placeholder="비밀번호">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="password" class="form-control form-control-user" id="me_pwd2" style="text-align:center;"
                                       placeholder="비밀번호 확인">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user" id="mem_level" name="mem_level" style="text-align:center;" value="${ member.mem_sex }"
                                       placeholder="등급" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user" id="me_name" name="me_name" style="text-align:center;" value="${ member.mem_username }"
                                       placeholder="이름" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user" id="mem_sex" name="mem_sex" style="text-align:center;" value="${ member.mem_sex }"
                                       placeholder="성별" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user" id="mem_birth" name="mem_sex" style="text-align:center;" value="${member.mem_birth_year}.${member.mem_birth_month}.${member.mem_birth_day}"
                                       placeholder="생년월일" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user" id="me_tel" name="me_tel" style="text-align:center;" value="${member.mem_phone}"
                                       placeholder="전화번호">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user" id="me_email" name="me_email" style="text-align:center;" value="${member.mem_address}"
                                       placeholder="주소">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user" id="me_email" name="me_email" style="text-align:center;" value="${member.mem_email}"
                                       placeholder="이메일 주소">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user" id="me_email" name="me_email" style="text-align:center;" value=""
                                       placeholder="누적 주문 횟수" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user" id="me_email" name="me_email" style="text-align:center;" value="${member.mem_register_datetime}"
                                       placeholder="가입일" readonly="readonly">
                            </div>
                        </div>
                        <div>
                            <button
                                    style="border-color: #c7a8ff; background-color: #c7a8ff; color: black; WIDTH: 100pt; HEIGHT: 30pt"
                                    type="button" class="btn" id="information_update_Btn"
                                    onclick="information_update();">수정 완료</button>
                            <button
                                    style="border-color: white; background-color: black; color: white; WIDTH: 80pt; HEIGHT: 30pt"
                                    type="button" class="btn center"
                                    onclick="location.href='joinout_check'">취소</button>
                        </div>
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
