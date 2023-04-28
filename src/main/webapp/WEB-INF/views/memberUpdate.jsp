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

</style>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<div id="section">
    <form action="/update" method="post" onsubmit="return Check()">
        <label for="member-id">memberId</label><br>
        <input type="text" id="member-id" name="Id" value="${memberDTO.id}" readonly><br>

        <label for="member-Email">memberEmail</label><br>
        <input type="text" id="member-Email" name="memberEmail" onblur="fun2()" value="${memberDTO.memberEmail}" placeholder="필수입력"><br>

        <label for="member-Password">memberPassword</label><br>
        <input type="text" id="member-Password" name="memberPassword" value="${memberDTO.memberPassword}" placeholder="필수입력"><br>

        <label for="member-Name">memberName</label><br>
        <input type="text" id="member-Name" name="memberName" value="${memberDTO.memberName}" placeholder="필수입력"><br>

        <label for="member-Birth">memberBirth</label><br>
        <input type="text" id="member-Birth" name="memberBirth" value="${memberDTO.memberBirth}" placeholder="필수입력 YYYY-MM-DD"><br>

        <label for="member-Mobile">memberMobile</label><br>
        <input type="text" id="member-Mobile" name="memberMobile" value="${memberDTO.memberMobile}" placeholder="필수입력 -는생략"><br>

        <input type="submit" value="정보수정">
        <input type="button" onclick="fun1()" value="취소">
    </form>
</div>
<%@include file="component/footer.jsp"%>
</body>
<script>
    const fun1 = () => {
        alert("홈으로 돌아갑니다");
        location.href("/");
    }

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
            alert("수정 완료")
            return true;
        }
    }
</script>
</html>
