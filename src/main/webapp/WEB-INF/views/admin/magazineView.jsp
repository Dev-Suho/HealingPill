<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<body>
<div id="Header"></div>
<div id="layoutSidenav_content">
    <main>
        <br>
        <form role="form" method="post" autocomplete="off">

            <input type="hidden" name="num" value="${products.pd_num}"/>
            <div class="container">
                <h3>매거진 조회</h3><br/>
                <div class="row">

                    <div class="col-lg-6">

                        <!-- 매거진 이미지 -->
                        <div class="inputArea">
                            <label><h3>매거진 메인 이미지</h3></label>
                            <h5>원본 이미지</h5>
                            <img src = "${products.pd_mainImage}" style="width: 500px; height: auto;"/>

                            <h5>썸네일</h5>
                            <img src = "${products.pd_subImage}"/>
                        </div>

                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label><h3>매거진 제목</h3></label>
                            <div><span>${products.pd_name}</span></div>
                        </div>
                        <br/>
                        <div class="form-group">
                            <label><h3>소제목</h3></label>
                            <div><span>소제목란</span></div>
                        </div>
                        <br/>
                        <div class="form-group">
                            <label><h3>본문</h3></label>
                            <div><span>내용</span></div>
                        </div>
                        <br/>
                        <br/>
                        <div style="float:left">
                            <button type="button" style="border-color:#e6e6fa; background-color:#e6e6fa; color:black;" class="btn btn-success modBtn" id = "modify_btn">수정</button>
                            <button type="button" style="border-color:black; background-color:black; color:white;" class="btn btn-secondary" id = "delete_btn">삭제</button></div>
                    </div>
                </div>

            </div>
            <hr><br/>
        </form>
    </main>
</div>

</body>
</html>