<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/style.css">
    <title>index</title>
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<div id="section">
    <form action="/login" method="post" onsubmit="return Check()">
        <label for="member-email">email</label><br>
        <input type="text" id="member-email" name="memberEmail" placeholder="필수입력"><br>

        <label for="member-password">password</label><br>
        <input type="text" id="member-password" name="memberPassword" placeholder="필수입력"><br>

        <input type="submit" value="로그인">
        <input type="button" onclick="fun1()" value="취소">
    </form>
</div>
<%@include file="component/footer.jsp"%>

</body>
<script>
    const fun1 = () => {
        location.href="/";
    }
    const Check = () => {
        email = document.getElementById("member-email");
        password = document.getElementById("member-password");
        if(email.value.length == 0) {
            alert("이메일을 입력해주세요");
            email.focus();
            return false;
        }else if(password.value.length == 0) {
            alert("비밀번호를 입력해주세요");
            password.focus();
            return false;
        }else {
            return true;
        }
    }
</script>
</html>
