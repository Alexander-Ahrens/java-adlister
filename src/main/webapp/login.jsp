<%--
  Created by IntelliJ IDEA.
  User: alexanderahrens
  Date: 2019-10-21
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>

<%
    request.setAttribute("username", "snickerbar4040");
    request.setAttribute("password", "poinsettia1");

//    if () {
//
//    }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>

<h1>Login</h1>
<form method="POST" action="/login.jsp">
    <label for="username">Username: </label>
    <input id="username" name="username" placeholder=" " />
    <label for="password">Password: </label>
    <input id="password" type="text" placeholder=" ">
</form>

</body>
</html>
