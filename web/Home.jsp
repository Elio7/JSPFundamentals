<%--
  Created by IntelliJ IDEA.
  User: Tony
  Date: 06-Jun-18
  Time: 9:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <title>Learning JSP</title>
    </head>
    <body>
    <div class="container">
        <header class="text-center">
            <%@ include file="header.jsp"%>
        </header>

        <article>
            <div class="row"> <!--This is used to make the content division in a row format-->
                <div class="jumbotron"> <!--This is used to make the content division that is used to show case the
                key content areas-->
                    <h1 class="text-center">On Demand Programming Skills</h1> <!--"text-center" This is used to place
                    the content at the center of the screen-->
                    <p class="text-center">Sign Up To Learn The Skills That Will Set You Apart From Your Competitors</p>
                </div>
            </div>

            <div class="row"> <!--This is used to make the content division in a row format-->
                <center> <!--This is used to display it at the center-->
                    <form class="form-inline" action="Registration.jsp"> <!--This is used to make a form to be filled and
                    submitted and redirect the page to Registration.jsp-->
                        <div class="form-group"> <!--This is used to group the form elements together-->
                            <label class="control-label">Search Course</label> <!--This is used to display a
                            TextView/jLabel for what it does-->
                            <input type="search" class="form-control" name="courseName"
                                   placeholder="Enter Course Title ">
                            <!--btn-primary = displays button in blue color-->
                            <input type="submit" class="btn btn-primary" value="Search">
                        </div>
                    </form>
                </center>
            </div>
            <div>
                <br>
                <!--btn = button, btn-lg = displays a large button, btn-success = displays button in green color-->
                <p class="text-center"><a href="Registration.jsp" class="btn btn-lg btn-success">View all Courses</a></p>
            </div>

            <div class="row">
                <p>New User: <a href="Registration.jsp">Register Here</a></p>
            </div>

            <div class="row">
                <p>Existing User: <a href="login.jsp">Login Here</a> </p>
            </div>
        </article>

        <footer>
            <%@ include file="footer.jsp"%>
        </footer>
    </div>
    </body>
</html>
