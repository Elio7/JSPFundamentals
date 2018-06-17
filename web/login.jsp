<%--
  Created by IntelliJ IDEA.
  User: Tony
  Date: 07-Jun-18
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <title>Login - Learning JSP</title>
    </head>
    <body>
        <div class="container">
            <header class="text-center"> <%@include file="header.jsp"%> </header>

            <article class="text-center">
                <br>
                <h1 class="page-header">Login Form</h1>
                <div class="row">
                  <form name="loginForm" class="form-inline" action="authenticUser.jsp" method="post">
                      <div class="form-group">
                          <label class="control-label">Username </label>
                          <input type="Login" class="form-control" name="userLogin" placeholder="Enter Username:">
                      </div>
                      <br>
                      <br>
                      <div class="form-group">
                          <label class="control-label">Password </label>
                          <input type="password" class="form-control" name="userPassword" placeholder="Password">
                          <br>
                          <br>
                          <input type="Submit" class="btn btn-primary" value="Login">
                      </div>
                  </form>
                </div>

                <%--<div class="row">--%>
                    <%--<form class="form-inline">--%>
                        <%----%>
                    <%--</form>--%>
                <%--</div>--%>
            </article>
        </div>
    </body>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</html>
