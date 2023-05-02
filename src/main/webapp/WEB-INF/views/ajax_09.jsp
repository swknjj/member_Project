
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
<%-- ajax(Asynchronous Javascript and XML) --%>
<button onclick="ajax05()">함수호출</button>
</body>
<script>
  const ajax05 = () => {
    const memberEmail = "aa@aa.com";
    const memberPassword = "1234";
    const memberName = "member1";
    $.ajax({
      type: "post",
      url: "/ajax_09",
      data: {
        "memberEmail": memberEmail,
        "memberPassword": memberPassword,
        "memberName": memberName
      },
      success: function (res) {
        console.log("요청성공",res);
        console.log("요청성공",res.memberEmail);
        console.log("요청성공",res.memberPassword);
        console.log("요청성공",res.memberName);
      },
      error: function () {
        console.log("요청실패");
      }
    });
  }
</script>
</html>
