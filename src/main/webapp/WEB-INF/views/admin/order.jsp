<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="layout/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body class="sb-nav-fixed">
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">주문 목록</h1><br>
            <div class="container-fluid">
                <form method="get" action="orderSearch" class="form-inline"
                      style="font-size: 15pt">
                    <select id="searchType" name="searchType" size="1">
                        <option value="mem_id">주문자</option>
                        <option value="or_id">주문번호</option>
                        <option value="all">전체</option>
                    </select>
                    <input
                        id="keyword" name="keyword" style="width: 500px; height: 30px;"
                        type="text" placeholder="검색창">&nbsp;
                    <button class="btn btn-secondary" type="submit">
                        <span style="font-size: 12pt">검색</span>
                    </button>
                </form>
                <br>
            </div>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table me-1"></i>
                    주문목록
                </div>
                <div class="card-body">
                    <table class="table table-hover" id="datatablesSimple">
                        <thead>
                        <tr>
                            <th>주문일자</th>
                            <th>주문번호</th>
                            <th>주문자</th>
                            <th>결제금액</th>
                            <th>배송지</th>
                            <th>휴대폰 번호</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>주문일자</th>
                            <th>주문번호</th>
                            <th>주문자</th>
                            <th>결제금액</th>
                            <th>배송지</th>
                            <th>휴대폰 번호</th>
                        </tr>
                        </tfoot>
                        <tbody>
                        <tr>
                            <td>2022-09-28</td>
                            <td>20220928_000001</td>
                            <td>정유진</td>
                            <td>121,500</td>
                            <td>(21529) 옥련동 쌍용아파트</td>
                            <td>010-5054-6393</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>
    <footer class="py-4 bg-light mt-auto">
        <div class="container-fluid px-4">
            <div class="d-flex align-items-center justify-content-between small">
                <div class="text-muted">Copyright &copy; Your Website 2022</div>
                <div>
                    <a href="#">Privacy Policy</a>
                    &middot;
                    <a href="#">Terms &amp; Conditions</a>
                </div>
            </div>
        </div>
    </footer>
</div>
</div>
</body>
</html>
