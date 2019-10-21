<%--
  Created by IntelliJ IDEA.
  User: alexanderahrens
  Date: 2019-10-21
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>


<%
if (request.getParameter("username") != null && request.getParameter("password") != null) {
    if (request.getParameter("password").equalsIgnoreCase("password")
            && request.getParameter("username").equalsIgnoreCase("admin")) {
        response.sendRedirect("/profile.jsp");
    } else {
        response.sendRedirect("/login.jsp");
    }
}

%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
</head>
<body>

    <h1>${param.username} ${param.password}</h1>

<h1><strong>Login</strong></h1>

<form method="POST" action="/login.jsp">
    <label for="username">Username: </label>
    <input id="username" name="username" placeholder=" " />
    <br>
    <label for="password">Password: </label>
    <input id="password" name="password" type="password" placeholder=" ">
    <br>
    <button>Submit</button>
</form>

    <c:if test="${param.username.equalsIgnoreCase('snickerbar4040') && param.password.equals('poinsettia1')}">
        <% response.sendRedirect("profile.jsp"); %>
    </c:if>



</body>
</html>