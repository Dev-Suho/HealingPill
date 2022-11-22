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
                        <a href="/myOrder?id=${member.mem_id}" class="btn">주문 내역</a>
                        <a href="/myPageSurvey?id=${member.mem_id}" class="btn">나만의 영양제 결과보기</a>
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
                    <h3 class="wow zoomIn" data-wow-delay=".2s">SURVEY RESULT</h3><br>
                </div>

                <form role="form" method="post" autocomplete="off">
                    <table class="table table-bordered">
                        <thead>
                        <tr class="table-primary">
                            <th> 설문 일자 </th>
                            <th> 카테고리 코드 </th>
                            <th> 카테고리 이름 </th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${survey}" var="survey">
                        <tr>
                            <td> <fmt:formatDate value="${survey.rc_register_datetime}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                            <td> ${survey.ctg_code} </td>
                            <td> ${survey.ctg_name} </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
</section>

<!--/ End Shopping Cart -->
<%@ include file="layout/footer.jsp" %>