
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
<%-- ajax(Asynchronous Javascript and XML) --%>
<button onclick="ajax01()">함수호출</button>
</body>
<script>
  const ajax01 = () => {
    $.ajax({
      type: "get",
      url: "/ajax_01",
      success: function (res) {
        console.log("요청성공",res);
      },
      error: function () {
        console.log("요청실패");
      }
    });
  }
</script>
</html>
