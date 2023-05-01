<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="nav">
  <ul>
    <li>
      <a href="/save">회원가입</a>
    </li>
    <li>
      <a href="/memberLogin">로그인</a>
    </li>
    <li>
      <a href="/members">회원목록</a>
    </li>
    <li>
      <a href="/">홈으로</a>
    </li>
    <li class="login-name">
      <c:choose>
        <c:when test="${sessionScope.loginEmail !=null}">
        <a href="/mypage" id="login-name-if" style="color:black;">${sessionScope.loginEmail}님 환영합니다</a>
        <a href="/logout">logout</a>
        </c:when>
        <c:otherwise>
          <a href="/login">login</a>
        </c:otherwise>
      </c:choose>
    </li>
  </ul>
</div>