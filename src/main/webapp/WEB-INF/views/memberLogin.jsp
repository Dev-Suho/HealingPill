<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">Sign In</h1>
                </div>
                <ul class="breadcrumb-nav">
                    <li><a href="/">Home</a></li>
                    <li>Sign In</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<!-- ====== Forms Section Start -->
<section class="bg-[#F4F7FF] py-14 lg:py-20">
    <div class="container">
        <div class="-mx-4 flex flex-wrap">
            <div class="w-full px-4">
                <div
                        class="wow fadeInUp relative mx-auto max-w-[780px] overflow-hidden rounded-lg bg-white py-14 px-8 text-center sm:px-12 md:px-[60px]"
                        data-wow-delay=".15s"
                >
                    <div class="mb-10 text-center">
                        <a
                                href="/"
                                class="mx-auto inline-block max-w-[160px]"
                        >
                            <img src="resources/assets/images/logo/healingpill_logo2.png" alt="logo" />
                        </a>
                    </div>
                    <form action = "memberLogin" method="post">
                        <input type="hidden" value="login">
                        <div class="mb-6">
                            <input
                                    type="text"
                                    placeholder="아이디"
                                    id = "mem_id"
                                    name = "mem_id"
                                    class="bordder-[#E9EDF4] w-full rounded-md border bg-[#FCFDFE] py-3 px-5 text-base text-body-color placeholder-[#ACB6BE] outline-none transition focus:border-primary focus-visible:shadow-none"
                            >
                        </div>
                        <div class="mb-6">
                            <input
                                    type="password"
                                    placeholder="비밀번호"
                                    id = "mem_password"
                                    name = "mem_password"
                                    class="bordder-[#E9EDF4] w-full rounded-md border bg-[#FCFDFE] py-3 px-5 text-base text-body-color placeholder-[#ACB6BE] outline-none transition focus:border-primary focus-visible:shadow-none"
                            >
                        </div>
                        <div class="mb-10">
                            <input
                                    type="submit"
                                    value="로그인"
                                    id = "loginButton"
                                    class="bordder-secondary w-full cursor-pointer rounded-md border bg-secondary py-3 px-5 text-base text-white transition duration-300 ease-in-out hover:shadow-md"
                            >
                        </div>
                    </form>
                    <a
                            href="/findId"
                            class="mb-2 inline-block text-base text-[#adadad] hover:text-primary"
                    >
                        아이디 찾기
                    </a> &nbsp;&nbsp; | &nbsp;&nbsp;
                    <a
                            href="/findPwd"
                            class="mb-2 inline-block text-base text-[#adadad] hover:text-primary"
                    >
                        비밀번호 찾기
                    </a>
                    <p class="text-base text-[#adadad]">
                        아직 힐링필 회원이 아니신가요?
                        <a href="Join" class="text-primary hover:underline">
                            &nbsp;회원가입
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ====== Forms Section End -->

<%@ include file="layout/footer.jsp" %>