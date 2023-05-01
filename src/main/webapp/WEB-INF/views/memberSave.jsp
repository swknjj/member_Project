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
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<style>
    input {
        height: 40px;
    }
</style>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>

<div id="section" style="text-align: center; margin: auto; font-size: xx-large";>
<form action="/save" method="post" onsubmit="return Check()">
    <label for="member-Email">memberEmail</label><br>
    <input type="text" id="member-Email" name="memberEmail" onblur="fun2()" placeholder="필수입력" size="40"><br>

    <label for="member-Password">memberPassword</label><br>
    <input type="text" id="member-Password" name="memberPassword" placeholder="필수입력" size="40"><br>

    <label for="member-Name">memberName</label><br>
    <input type="text" id="member-Name" name="memberName" placeholder="필수입력" size="40"><br>

    <label for="member-Birth">memberBirth</label><br>
    <input type="text" id="member-Birth" name="memberBirth" placeholder="필수입력 YYYY-MM-DD" size="40"><br>

    <label for="member-Mobile">memberMobile</label><br>
    <input type="text" id="member-Mobile" name="memberMobile" placeholder="필수입력 -는생략" size="40"><br>

    <input type="submit" value="회원가입" size="40">
    <input type="button" onclick="fun1()" value="취소" size="40">
</form>
</div>
<%@include file="component/footer.jsp"%>
</body>
<script>
    const fun1 = () => {
        alert("홈으로 돌아갑니다");
        location.href("/");
    }
    // const fun2 = () => {
    //     const memberEmail = document.getElementById("member-email");
    //     location.href="duplicate-check?email="+memberEmail;
    // }

    const Check = () => {
        const Email = document.getElementById("member-Email");
        const Password = document.getElementById("member-Password");
        const Name = document.getElementById("member-Name")
        const Birth = document.getElementById("member-Birth");
        const Mobile = document.getElementById("member-Mobile");
        const exp = /^(?=.*[a-z])(?=.*\d)(?=.*[!#$%])[a-z\d!#$%]{8,16}$/;
        if(Email.value.length == 0 ) {
            alert("이메일을 작성해주세요");
            Email.focus();
            return false;
        }else if(Password.value.length == 0 ) {
            alert("비밀번호를 작성해주세요");
            Password.focus();
            return false;
        }else if(!(Password.value.match(exp))) {
            alert("영문소문자, 숫자, 특수문자(!#$%) 하나 이상 입력하고 8~16자로 입력해주세요");
            Password.focus();
            return false;
        }else if(Name.value.length == 0) {
            alert("이름을 작성해주세요");
            Name.focus();
            return false;
        }else if(Birth.value.length == 0 ) {
            alert("생년월일을 작성해주세요");
            Birth.focus();
            return false;
        }else if(Mobile.value.length == 0 ) {
            alert("전화번호를 작성해주세요");
            Mobile.focus();
            return false;
        }else {
            location.href="/";
            return true;
        }
    }
</script>
</html>
