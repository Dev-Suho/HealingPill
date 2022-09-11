<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">결제하기</h1>
                </div>
                <ul class="breadcrumb-nav">
                    <li><a href="/">Home</a></li>
                    <li>결제하기</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<!--====== Checkout Form Steps Part Start ======-->
<section class="checkout-wrapper section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="checkout-steps-form-style-1">
                    <ul id="accordionExample">
                        <li>
                            <h6 class="title" data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                aria-expanded="true" aria-controls="collapseThree">주문자 정보 </h6>
                            <section class="checkout-steps-form-content collapse show" id="collapseThree"
                                     aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>이름</label>
                                            <div class="row">
                                                <div class="col-md-6 form-input form">
                                                    <input type="text" placeholder="이름">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="single-form form-default">
                                            <label>전화번호</label>
                                            <div class="form-input form">
                                                <input type="text" placeholder="전화번호">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>이메일</label>
                                            <div class="form-input form">
                                                <input type="text" placeholder="이메일">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="single-form form-default">
                                            <label>우편번호</label>
                                            <div class="form-input form">
                                                <input type="text" placeholder="우편번호">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>주소</label>
                                            <div class="form-input form">
                                                <input type="text" placeholder="주소">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>상세주소</label>
                                            <div class="form-input form">
                                                <input type="text" placeholder="상세주소">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-checkbox checkbox-style-3">
                                            <input type="checkbox" id="checkbox-3">
                                            <label for="checkbox-3"><span></span></label>
                                            <p>주문자 정보와 배송 정보가 일치합니다.</p>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form button">
                                            <button class="btn" data-bs-toggle="collapse"
                                                    data-bs-target="#collapseFour" aria-expanded="false"
                                                    aria-controls="collapseFour">다음</button>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </li>
                        <li>
                            <h6 class="title collapsed" data-bs-toggle="collapse" data-bs-target="#collapseFour"
                                aria-expanded="false" aria-controls="collapseFour">배송 정보</h6>
                            <section class="checkout-steps-form-content collapse" id="collapseFour"
                                     aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>이름</label>
                                            <div class="row">
                                                <div class="col-md-6 form-input form">
                                                    <input type="text" placeholder="이름">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="single-form form-default">
                                            <label>전화번호</label>
                                            <div class="form-input form">
                                                <input type="text" placeholder="전화번호">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>이메일</label>
                                            <div class="form-input form">
                                                <input type="text" placeholder="이메일">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>주소</label>
                                            <div class="form-input form">
                                                <input type="text" placeholder="주소">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="single-form form-default">
                                            <label>배송 메모</label>
                                            <div class="select-items">
                                                <select class="form-control">
                                                    <option value="0">배송 메모를 선택해주세요</option>
                                                    <option value="1">배송 전에 미리 연락 바랍니다.</option>
                                                    <option value="2">집 앞에 놔주세요.</option>
                                                    <option value="3">경비실에 맡겨주세요.</option>
                                                    <option value="4">부재 시 핸드폰으로 연락주세요.</option>
                                                    <option value="5">부재 시 집 앞에 놔주세요.</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="checkout-payment-option">
                                            <h6 class="heading-6 font-weight-400 payment-title">결제 수단</h6>
                                            <div class="payment-option-wrapper">

                                                <div class="single-payment-option">
                                                    <input type="radio" name="shipping" id="shipping-4">
                                                    <label for="shipping-4">
                                                        <img src="resources/shops/images/payment/card.png" alt="card">
                                                        <p>카드</p>
                                                        <p>결제</p>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="steps-form-btn button">
                                            <button class="btn" data-bs-toggle="collapse"
                                                    data-bs-target="#collapseThree" aria-expanded="false"
                                                    aria-controls="collapseThree">이전</button>

                                            <button class="btn btn-alt" data-bs-toggle="collapse"
                                                        data-bs-target="#collapsefive" aria-expanded="false"
                                                        aria-controls="collapsefive">다음</button>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </li>
                        <li>
                            <h6 class="title collapsed" data-bs-toggle="collapse" data-bs-target="#collapsefive"
                                aria-expanded="false" aria-controls="collapsefive">결제 정보</h6>
                            <section class="checkout-steps-form-content collapse" id="collapsefive"
                                     aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="checkout-payment-form">
                                            <div class="single-form form-default">
                                                <label>카드 번호</label>
                                                <div class="form-input form">
                                                    <input id="credit-input" type="text"
                                                           placeholder="0000-0000-0000-0000">
                                                </div>
                                            </div>
                                            <div class="payment-card-info">
                                                <div class="single-form form-default mm-yy">
                                                    <label>만료일</label>
                                                    <div class="expiration d-flex">
                                                        <div class="form-input form">
                                                            <input type="text" placeholder="MM">
                                                        </div>
                                                        <div class="form-input form">
                                                            <input type="text" placeholder="YYYY">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="single-form form-default">
                                                    <label>CVC/CVV <span><i
                                                            class="mdi mdi-alert-circle"></i></span></label>
                                                    <div class="form-input form">
                                                        <input type="text" placeholder="***">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="checkout-sidebar">
                    <div class="checkout-sidebar-price-table">
                        <h5 class="title">최종 결제 금액</h5>

                        <div class="sub-total-price">
                            <div class="total-price">
                                <p class="value">상품 가격 1 :</p>
                                <p class="price">$144.00</p>
                            </div>
                            <div class="total-price shipping">
                                <p class="value">상품 가격 2 :</p>
                                <p class="price">$10.50</p>
                            </div>
                            <div class="total-price discount">
                                <p class="value">상품 가격 3 :</p>
                                <p class="price">$10.00</p>
                            </div>
                        </div>

                        <div class="total-payable">
                            <div class="payable-price">
                                <p class="value">총 결제 금액 :</p>
                                <p class="price">$164.50</p>
                            </div>
                        </div>
                        <div class="price-table-btn button">
                            <a href="/checkoutComplete" class="btn btn-alt">결제하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--====== Checkout Form Steps Part Ends ======-->

<%@ include file="layout/footer.jsp" %>