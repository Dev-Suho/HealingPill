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
            <div class="container">
                <h3>상품 등록</h3><br/>
                <div class="row">

                    <div class="col-lg-6">

                        <!-- 상품 이미지
                        <div class="inputArea">
                            <label for="gdsImg">상품 이미지</label>
                            <input type="file" id="gdsImg" name="file"/>
                            <div class="select_img"><img src="" /></div>
                        </div>
                        -->
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label><h3>상품명</h3></label>
                            <div><span>${products.pd_name}</span></div>
                        </div>
                        <br/>
                        <div class="form-group">
                            <label><h3>상품가격</h3></label>
                            <div><span><fmt:formatNumber value="${products.pd_price}" pattern="###,###,###"/> </span></div>
                        </div>
                        <br/>
                        <div class="form-group">
                            <label><h3>상품수량</h3></label>
                            <div><span>${products.pd_stock}</span></div>
                        </div>
                        <br/>
                        <div class="form-group">
                            <label><h3>상품설명</h3></label>
                            <div><span>${products.pd_content}</span></div>
                        </div>
                        <br/>
                        <div class="form-group">
                            <label><h3>카테고리 코드</h3></label>
                            <div><span class="category">${products.ctg_code}</span></div>
                        </div>
                    </div>
                </div>
                <hr><br/>
            </div>
        </form>
    </main>
</div>

</body>
</html>