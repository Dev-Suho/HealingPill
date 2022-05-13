<%--
  Created by IntelliJ IDEA.
  User: ars81
  Date: 2022-05-12
  Time: 오후 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
    <div class = "wrapper">
        <form action = "">
            <div class = "wrap">
                <div class = "subject">
                    <span>회원가입</span>
                </div>
                <div class = "id_wrap">
                    <div class = "id_name">아이디</div>
                    <div class = "id_input_box">
                        <input class = "id_input">
                    </div>
                </div>
                <div class = "pw_wrap">
                    <div class = "pw_name">비밀번호</div>
                    <div class = "pw_input_box">
                        <input class = "pw_input">
                    </div>
                </div>
                <div class = "user_wrap">
                    <div class = "user_name">이름</div>
                    <div class = "user_input_box">
                        <input class = "user_input">
                    </div>
                </div>
                <div class = "phone_wrap">
                    <div class = "phone_name">핸드폰 번호</div>
                    <div class = "phone_input_box">
                        <input class = "phone_input">
                    </div>
                </div>
                <div class = "birth_wrap">
                    <div class = "birth_name">생년월일</div>
                    <div class = "birth_input_box">
                        <input class = "birth_year_input">
                        <input class = "birth_month_input">
                        <input class = "birth_day_input">
                    </div>
                </div>
                <div class = "address_wrap">
                    <div class = "address_name">주소</div>
                    <div class = "address_input_box">
                        <input class = "address_input">
                    </div>
                </div>
                <div class = "email_wrap">
                    <div class = "email_name">이메일</div>
                    <div class = "email_input_box">
                        <input class = "email_input">
                    </div>
                </div>
                <div class = "sex_wrap">
                    <div class = "sex_name">성별</div>
                    <div class = "sex_input_box">
                        <input type = "radio" name = "sex_input" value = "male">남자
                        <input type = "radio" name = "sex_input" value = "female">여자
                    </div>
                </div>
                <div class = "join_button_wrap">
                    <input type = "button" class = "join_button" value = "회원가입">
                </div>
            </div>
        </form>
    </div>
</body>
</html>
