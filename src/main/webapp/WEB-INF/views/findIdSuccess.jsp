<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">아이디 찾기</h1>
                </div>
                <ul class="breadcrumb-nav">
                    <li><a href="/">Home</a></li>
                    <li>아이디 찾기</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->


<!-- ====== memberJoinSuccess Section Start -->
<section class="bg-white py-14 lg:py-20">
    <div class="container">
        <div class="-mx-4 flex flex-wrap">
            <div class="w-full px-4">
                <div
                        class="wow fadeInUp relative mx-auto max-w-[850px] overflow-hidden rounded-lg bg-white py-20 px-8 text-center shadow-lg sm:px-12 md:px-[60px]"
                        data-wow-delay=".2s"
                >
                    <h2
                            class="mb-8 text-3xl font-bold text-dark sm:text-4xl lg:text-[40px] xl:text-[42px]"
                    >
                        아이디 찾기가 완료되었습니다!
                    </h2>
                    <h3 class="mb-8 text-xl font-normal text-dark-700 md:text-2xl">
                        <ul>
                            <c:if test="${check == 1}">
                                <script>
                                    opener.document.mem_username = "";
                                    opener.document.mem_phone = "";
                                </script>
                                <label>일치하는 정보가 존재하지 않습니다.</label>
                            </c:if>

                            <c:if test = "${check == 0}">
                                <label>찾으시는 아이디는 ${mem_id} 입니다</label>
                            </c:if>

                        </ul>
                    </h3>
                    <ul class="flex flex-wrap justify-center">
                        <li>
                            <a
                                    href="/"
                                    class="mx-2 my-1 inline-block rounded-md bg-[#f5f8ff] py-3 px-6 text-base font-medium text-dark hover:bg-primary hover:text-white"
                            >
                                Home
                            </a>
                        </li>
                        <li>
                            <a
                                    href="findPasswordView"
                                    class="mx-2 my-1 inline-block rounded-md bg-[#f5f8ff] py-3 px-6 text-base font-medium text-dark hover:bg-primary hover:text-white"
                            >
                                비밀번호 찾으러 가기
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ====== 404 Section End -->

<%@ include file="layout/footer.jsp" %>
