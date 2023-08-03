<%@ page language="java" contentType="application/json; charset=UTF-8" %>
<%@ page import="java.sql.*, org.json.JSONArray, org.json.JSONObject" %>

<%
    // Assuming you have established a database connection
    String url = "jdbc:mysql://localhost:3306/Portfolio";
    String username = "root";
    String password = "Duelisto";
    
    String searchTerm = request.getParameter("search");

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");
        
        // Establish the database connection
        Connection conn = DriverManager.getConnection(url, username, password);
        
        // Create a prepared statement to prevent SQL injection
        String sql = "SELECT Username FROM account WHERE Username LIKE ? AND Username <> '"+session.getAttribute("SessionUser").toString() +"' LIMIT 10;";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, "%" + searchTerm + "%");
        
        // Execute the query and retrieve the results
        ResultSet rs = stmt.executeQuery();
        
        // Create a JSON array to store the usernames
        JSONArray jsonArray = new JSONArray();
        while (rs.next()) {
            jsonArray.put(rs.getString("Username"));
        }
        
        // Close the result set, statement, and connection
        rs.close();
        stmt.close();
        conn.close();
        
        // Set the response content type to JSON
        response.setContentType("application/json");
        
        // Write the JSON array to the response
        response.getWriter().write(jsonArray.toString());
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
