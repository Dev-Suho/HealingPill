<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="layout/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
<div id="Header"></div>
<div id="layoutSidenav_content">
    <main>
        <br>
        <form role="form" id="pdaddForm" name="pdaddForm">
            <div class="container">
                <h3>상품 등록</h3><br/>
                <div class="row">

                    <div class="col-lg-6">
                        <!-- 상품 이미지 -->
                        <div class="inputArea">
                            <label for="gdsImg">상품 이미지</label>
                            <input type="file" id="gdsImg" name="file"/>
                            <div class="select_img"><img src="" /></div>
                        </div>

                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <input type="text" class="form-control" id="pd_name" name="pd_name" placeholder="상품명">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="pd_simplecontent" name="pd_simplecontent" placeholder="한줄 설명">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="pd_price" name="pd_price" placeholder="가격">
                        </div>
                        <select id="pd_category" name="pd_category" size="1">
                            <option value="">카테고리</option>
                            <option value="비타민">비타민</option>
                            <option value="오메가">오메가</option>
                            <option value="유산균">유산균</option>
                            <option value="칼슘">칼슘</option>
                            <option value="마그네슘">마그네슘</option>
                        </select> <br><br/>

                    </div>
                </div>
                <hr><br/>
                <div style="float:left">
                    <button type="button" style="border-color:#e6e6fa; background-color:#e6e6fa; color:black;" class="btn btn-success modBtn" onclick="jebal();" >추가</button>
                    <button type="button" style="border-color:black; background-color:black; color:white;" class="btn btn-secondary" >취소</button></div>
            </div>
        </form>
    </main>


</body>
</html>