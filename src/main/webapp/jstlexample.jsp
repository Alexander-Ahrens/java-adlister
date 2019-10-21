<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: alexanderahrens
  Date: 2019-10-21
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>

<%
    List<String> favFoods = Arrays.asList("Pizza", "Pho", "Fried Pies");

    request.setAttribute("favFoods", favFoods);
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>JSTL Examples</h1>

    <c:if test="${2>3}">
        <h2>Will display</h2>
    </c:if>

    <ol>
        <c:forEach var="favFood" items="${favFoods}">
            <li>${favFood}</li>®
        </c:forEach>

<%--        list of contacts that display all of the contacts in HTML. Use a div for each contact.
Only current user can change contact if their name corresponds to that specific contact.--%>

    </ol>
</body>
</html>
