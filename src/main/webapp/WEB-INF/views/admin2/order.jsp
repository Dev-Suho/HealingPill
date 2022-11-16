<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2022-11-03
  Time: 오후 1:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<!-- partial -->
<div class="main-panel">
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">
                <b>주문 목록</b>
            </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">주문 조회</a></li>
                    <li class="breadcrumb-item active" aria-current="page">주문 관리</li>
                </ol>
            </nav>
        </div>
        <div class="col-md-12 form-group">
            <form method="get" action="orderSearch" class="form-inline" style="font-size: 15pt">
            <div class="input-group">
                <div class="input-group-prepend">
                    <select class="btn btn-sm btn-outline-primary dropdown-toggle" id="searchType" name="searchType" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <option value="all">전체</option>
                        <option value="mem_id">주문자</option>
                        <option value="or_id">주문번호</option>
                    </select>
                </div>
                <input type="text" class="form-control form-control-lg" id="keyword" name="keyword" placeholder="검색어를 입력하세요." aria-label="Text input with dropdown button">
                <button class="btn btn-sm btn-gradient-primary" type="button">검색</button>
            </div>
            </form>
        </div>
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Order Chart</h4>
                        <p class="card-description">
                            주문 차트
                        </p>
                        <table class="table" id="datatablesSimple">
                            <thead>
                            <tr>
                                <th><h5><b>주문 일자</b></h5></th>
                                <th><h5><b>주문 번호</b></h5></th>
                                <th><h5><b>주문자</b></h5></th>
                                <th><h5><b>결제 금액</b></h5></th>
                                <th><h5><b>배송지</b></h5></th>
                                <th><h5><b>휴대폰 번호</b></h5></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${orderList}" var="orderList">
                                <tr>
                                    <td><fmt:formatDate value="${orderList.order_register_datetime}" pattern="yyyy-MM-dd"/></td>
                                    <td>${orderList.order_id}</td>
                                    <td>${orderList.order_name}</td>
                                    <td>결제 금액</td>
                                    <td>${orderList.mem_address1},${orderList.mem_address2},${orderList.mem_address3}</td>
                                    <td>${orderList.order_phone}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- content-wrapper ends -->
    <%@ include file="layout/footer.jsp" %>
