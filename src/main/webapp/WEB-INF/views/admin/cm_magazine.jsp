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
                            <label for = "mg_title">제목</label><input type="text" class="form-control" id="mg_title" name="mg_title" placeholder="매거진 제목">
                        </div>
                        <div class="form-group">
                            <label for = "mg_title">소제목</label><input type="text" class="form-control" id="mg_title" name="mg_title" placeholder="매거진 제목">
                        </div>
                        <div class="form-group">
                            <label for = "mg_content">본문내용</label><input type="text" class="form-control" id="mg_content" name="mg_content" placeholder="내용">
                        </div>
                        <input type="submit" value="추가">
                    </div>
                        <br><br/>
                </div>
            </div>
            <hr><br/>
        </form>
    </main>
</div>
</body>
</html>