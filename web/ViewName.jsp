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
        rs = stmt.executeQuery("select Name, AccountType from Account where AID = '" + name + "' ");
        if (rs.next()) {
            if (rs.getString(2).equals("Banned")) {
                AName = "<s><font color='Gray'>" + rs.getString(1) + "</font></s> <i class='fa-solid fa-ban'style='color: red;'></i>";
            } else if(rs.getString(2).equals("Verified")) {
                AName = rs.getString(1)+" <i class='uil uil-comment-verify' style='color: yellow;'></i>";
            }else {
                AName = rs.getString(1);
            }
            
        } else {
            out.println("Name not found for the given AID : " + name);
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
