<%--
  Created by IntelliJ IDEA.
  User: Tony
  Date: 07-Jun-18
  Time: 7:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*,java.util.*" errorPage="error.jsp" %>
<%!
    private Connection con = null;
    private boolean createUser(String username, String Password) {
        try {
            String sql = "INSERT INTO Users VALUES(?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,Password);
            int rs = ps.executeUpdate();
            if (rs > 0)
                return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
%>

<%
    String userName = request.getParameter("username");
    String Password = request.getParameter("password");

    String driverClass = "com.mysql.cj.jdbc.Driver";
    String driverUrl =  "jdbc:mysql://localhost:3306/JSP?useSSL=false";
    String dbuser = "root";
    String dbpassword =  "tonnyeliokyomo7";

    try {
        Class.forName(driverClass);
        con = DriverManager.getConnection(driverUrl, dbuser, dbpassword);
    } catch (Exception ex) {
        ex.printStackTrace();
    }

    application.setAttribute("connection",con);

    boolean flag = createUser(userName,Password);

    if (flag) {
        response.sendRedirect("login.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>
