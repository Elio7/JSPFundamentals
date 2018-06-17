<%--
  Created by IntelliJ IDEA.
  User: Tony
  Date: 13-Jun-18
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<html>
    <head>
        <title>Error Page</title>
    </head>
    <body>
        <header><%@include file="header.jsp"%></header>
        <h2>This is the Error Page</h2>
        <div class="alert alert-danger">
            <%
//                String errorMsg = request.getParameter("errorMessage");
//                System.out.println("<h1>Oops!...<br>" + errorMsg +"</h1>");
            %>
        </div>
        <footer><%@include file="footer.jsp"%></footer>
    </body>
</html>
