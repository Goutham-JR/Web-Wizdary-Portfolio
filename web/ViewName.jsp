<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
    String AName = null;
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    String name = request.getParameter("AID");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Portfolio", "root", "Duelisto");
        stmt = con.createStatement();
        rs = stmt.executeQuery("select Name from Account where AID = '" + name + "' ");
        if (rs.next()) {
            AName = rs.getString(1);
        } else {
            out.println("Name not found for the given AID : "+name);
            return;
        }
        // display the name
        out.println(AName);
    } catch (Exception e) {
        out.println("Unable to display the name");
        out.println("Name Display Error: " + e.getMessage());
        return;
    } finally {
        try {
            rs.close();
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
