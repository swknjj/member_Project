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
  <form action="/update2" method="post" name="updateForm" onsubmit="return Check()">
    <label for="password-check">기존 비밀번호 입력</label><br>
    <input type="text" id="password-check" name="password_check" onblur="fun5('${memberDTO.memberPassword}')" placeholder="기존 비밀번호 입력"><br>

    <label for="member-id">memberId</label><br>
    <input type="text" id="member-id" name="Id" value="${memberDTO.id}" readonly><br>

    <label for="member-Name">memberName</label><br>
    <input type="text" id="member-Name" name="memberName" value="${memberDTO.memberName}" placeholder="필수입력"><br>

    <label for="member-Mobile">memberMobile</label><br>
    <input type="text" id="member-Mobile" name="memberMobile" value="${memberDTO.memberMobile}" placeholder="필수입력 -는생략"><br>

    <input type="submit" onclick="Check()" value="정보수정">
    <input type="button" onclick="fun1()" value="취소">
  </form>
</div>
<%@include file="component/footer.jsp"%>
</body>
<script>
  const fun1 = () => {
    alert("홈으로 돌아갑니다");
    location.href = "/";
  }
  const fun5 = (memberPassword) => {
    const truePassword = memberPassword;
    const typingPassword = document.getElementById("password-check");
    const Password = document.getElementById("member-Password");
    const Name = document.getElementById("member-Name")
    const Mobile = document.getElementById("member-Mobile");
    console.log(truePassword);
    if(truePassword == typingPassword.value) {
      alert("비밀번혹 맞습니다");
    }else {
      alert("비밀번호가 다릅니다");
    }
  }

  const Check = () => {
    const Name = document.getElementById("member-Name")
    const Mobile = document.getElementById("member-Mobile");
    if(Name.value.length == 0) {
      alert("이름을 작성해주세요");
      Name.focus();
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
