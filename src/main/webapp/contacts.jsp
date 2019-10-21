<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: alexanderahrens
  Date: 2019-10-21
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>

<%
    List<Contact> contacts = Arrays.asList(
            new Contact("Mr. Badperson", "2179232154"),
            new Contact("Mr. Badperson", "2179232154"),
            new Contact("Mr. Badperson", "2179232154")
    );

    request.getAttribute("Contacts", contacts);
    request.setAttribute("logedInUser", new User("Borky McBorker"));
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jst/jstl/core"%>

<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Contacts</h1>

    <c:forEach var="contact" items="${contacts}">

        <div>
            <h3>${contact.name}</h3>
            <h3>Phone number: ${contact.number}</h3>

            <c:if test="${contact.name.equalsIgnoreCase(loggedInUser.name) }">
                <a href="">Edit Contact</a>
            </c:if>


        </div>


</body>
</html>
