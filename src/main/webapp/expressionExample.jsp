<%--
  Created by IntelliJ IDEA.
  User: alexanderahrens
  Date: 2019-10-21
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>

<%
    request.setAttribute("number", 10);
    request.setAttribute("username", "aleeka");
    request.setAttribute("password", "*************");
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h1>The number is <%=   request.getAttribute("number")%></h1>
    <h1>The number is ${number}</h1>
    <h6>${2 + 2 / 2 + 2 + 2 * 2 - 2}</h6>
    <h1>Username: ${username}, Password: ${password}</h1>

<%--    able to do ".jsp?name= whatever you want 'name' to be"--%>
    <h3>${param.name}</h3>

</body>
</html>
