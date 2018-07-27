<%--
  Created by IntelliJ IDEA.
  User: Tony
  Date: 06-Jun-18
  Time: 9:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
  <head>
    <title>Registration Form - Learning JSP</title>
  </head>
  <body>
    <div class="container">
        <%--Header Section--%>
        <header class="text-center">
            <%@include file="header.jsp"%>
        </header>
        <%--Main Content Of The Page--%>
        <article class="text-center">
            <h1 class="page-header">Registration Form</h1>
            <form name="registrationForm" class="form-horizontal" action="RegisterUser.jsp" method="post">
                <div class="form-group">
                    <label class="col-md-5 control-label">Username: </label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="username" required="required">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-5 control-label">Password: </label>
                    <div class="col-md-3">
                        <input type="password" class="form-control" name="password" required="required">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-5 col-md-offset-4">
                        <input type="submit" name="btnRegister" value="Register" class="btn btn-primary">
                        <%--<jsp:forward page="login.jsp"/>--%>
                    </div>
                </div>
            </form>
        </article>
        <%--Footer Section--%>
        <footer>
            <%@include file="footer.jsp"%>
        </footer>
    </div>
  </body>
</html>
