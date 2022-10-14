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
        <form role="form" method="post" action="/write" id="magazineForm" name="magazineForm">
            <div class="container">
                <h3>매거진 등록</h3><br/>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for = "mz_title">제목</label><input type="text" class="form-control" id="mz_title" name="mz_title" placeholder="매거진 제목">
                        </div>
                        <div class="form-group">
                            <label for = "mz_content">컨텐츠</label><input type="text" class="form-control" id="mz_content" name="mz_content" placeholder="내용">
                        </div> <br><br/>
                    </div>
                </div>
                <hr><br/>
                <div style="float:left">
                    <button type="submit" style="border-color:#e6e6fa; background-color:#e6e6fa; color:black;" class="btn btn-success modBtn" >추가</button>
                    <button type="button" style="border-color:black; background-color:black; color:white;" class="btn btn-secondary" >취소</button></div>
            </div>
        </form>
    </main>
</div>
</body>
</html>