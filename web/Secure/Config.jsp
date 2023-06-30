
<%@ page language="java" import="java.sql.*" %>
<%
    String jdbcDriver = "com.mysql.jdbc.Driver";
    Class.forName(jdbcDriver).newInstance();
   
    Connection con = null;
    ResultSet rst = null;
    Statement stmt = null;
    
    try {
        String url = "jdbc:mysql://localhost/portfolio?user=root&password=Duelisto";
        con = DriverManager.getConnection(url);
        stmt = con.createStatement();
    } catch(Exception e) {
        System.out.println(e.getMessage());
    }
    
    String Title = "Web Wizardry";
%>
