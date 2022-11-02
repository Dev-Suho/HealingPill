<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
              <b>회원 목록</b>
            </h3>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">회원 조회</a></li>
                <li class="breadcrumb-item active" aria-current="page">회원 관리</li>
              </ol>
            </nav>
          </div>
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Customer Chart</h4>
                  <p class="card-description">
                    회원 차트
                  </p>
                  <table class="table">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>이름</th>
                        <th>생년월일</th>
                        <th>번호</th>
                        <th>주문횟수</th>
                        <th>등급</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${memberList}" var="memberList" >
                        <tr onclick = "window.open('/admin2/member_detail?mem=${memberList.mem_num}','member_detail','width=800, height=750');">
                          <td>${memberList.mem_id}</td>
                          <td>${memberList.mem_username}</td>
                          <td>${memberList.mem_birth_year}.${memberList.mem_birth_month}.${memberList.mem_birth_day}</td>
                          <td>${memberList.mem_phone}</td>
                          <td>-</td>
                          <td>-</td>
                        </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>


            <%--<div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Customer Chart</h4>
                  <p class="card-description">
                    회원 차트
                  </p>
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>이름</th>
                        <th>생년월일</th>
                        <th>번호</th>
                        <th>주문횟수</th>
                        <th>등급</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${memberList}" var="memberList" >
                        <tr>
                          <td>${memberList.mem_id}</td>
                          <td><a href="/admin/member_detail?mem=${memberList.mem_num}">${memberList.mem_username}</a></td>
                          <td>${memberList.mem_birth_year}.${memberList.mem_birth_month}.${memberList.mem_birth_day}</td>
                          <td>${memberList.mem_phone}</td>
                          <td>-</td>
                          <td>-</td>
                        </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>--%>
          </div>
        </div>
        <!-- content-wrapper ends -->
<%@ include file="layout/footer.jsp" %>