<%--
  Created by IntelliJ IDEA.
  User: Tony
  Date: 07-Jun-18
  Time: 7:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*,java.util.*" errorPage="error.jsp" %>
<%!
    private Connection con;
    private boolean isValidUser(String username, String Password) {
        try {
            String sql = ("SELECT * FROM Users WHERE UserName = ? AND UserPassword = ?");
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,Password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
%>

<%
    String userName = request.getParameter("userLogin");
    String Password = request.getParameter("userPassword");

    String driverClass = "com.mysql.cj.jdbc.Driver";
    String driverUrl = "jdbc:mysql://localhost:3306/JSP?useSSL=false";
    String dbuser = "root";
    String dbpassword = "tonnyeliokyomo7";

    try {
        Class.forName(driverClass);
    } catch (Exception ex) {
        ex.printStackTrace();
    }

    con = DriverManager.getConnection(driverUrl,dbuser,dbpassword);

    application.setAttribute("connection",con);

    boolean flag = isValidUser(userName,Password);

    if (flag) {
        session.setAttribute("User",userName);
        response.sendRedirect("courses.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>