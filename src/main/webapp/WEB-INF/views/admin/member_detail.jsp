<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>회원 상세 정보창</title>
</head>
<body>
<h1>회원 상세정보 불러오면 됩니둥</h1>

<form role="form" method="post" autocomplete="off">
<input type="hidden" name="mem" value="${member_detail.mem_num}"/>
<table class="table">
    <tr>
        <td><b>ID</b></td>
        <td class="data_td">${member_detail.mem_id}</td>
        <span>${member_detail.mem_id}</span>
        <td></td>
    <tr>
    <tr>
        <td><b>이름</b></td>
        <td class="data_td">${member_detail.mem_username}</td>
    <tr>
        <td><b>이메일</b></td>
        <td class="data_td">${member_detail.mem_email}</td>
    <tr>
    <tr>
        <td><b>성별</b></td>
        <td class="data_td">${member_detail.mem_sex}</td>
    <tr>
    <tr>
        <td><b>생년월일</b></td>
        <td class="data_td">${member_detail.mem_birth_year}.${member_detail.mem_birth_month}.${member_detail.mem_birth_day}</td>
    <tr>
    <tr>
        <td><b>전화번호</b></td>
        <td class="data_td">${member_detail.mem_phone}</td>
    <tr>
    <tr>
        <td><b>주소</b></td>
        <td class="data_td">${member_detail.mem_address}</td>
    <tr>
    <tr>
        <td><b>누적 주문 횟수</b></td>
        <td class="data_td"> order db 생기면 주문 횟수 넣기</td>
    <tr>
    <tr>
        <td><b>가입일</b></td>
        <td class="data_td">${ member_detail.mem_register_datetime}</td>
    <tr>
</table>

<br>
<h2>주문한 상품</h2>
<div class="memberManager">
    <table class="t1" id="memberList" style="width: 730px">
        <colgroup>
            <col style="width: 25%;">
            <col style="width: 25%;">
            <col style="width: 25%;">
            <col style="width: 25%;">
        </colgroup>
        <thead>
        <tr>
            <th>주문일자</th>
            <th>주문번호</th>
            <th>결제금액</th>
            <th>처리현황</th>

        </tr>
        </thead>
        <tbody> 주문 내역 들어가기
        </tbody>
    </table>
</div>
<br>
<h2>총 구매 금액</h2>
<h4>구매 금액 영역 </h4>
<br>
<h2>메모</h2>
<h4>메모 영역 </h4>
<br>
</form>
</body>
</html>
