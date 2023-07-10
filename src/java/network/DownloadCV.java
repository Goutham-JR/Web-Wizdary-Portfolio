package network;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DownloadCV")
public class DownloadCV extends HttpServlet {

    private String dbURL = "jdbc:mysql://localhost:3306/portfolio";
    private String dbUser = "root";
    private String dbPass = "Duelisto";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String AID = request.getParameter("AID");

        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        InputStream inputStream = null;

        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            // Retrieve the file from the database based on the AID
            String sql = "SELECT File, FileName FROM UserCV WHERE AID=?";
            statement = conn.prepareStatement(sql);
            statement.setString(1, AID);
            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // Retrieve the file and file name from the result set
                inputStream = resultSet.getBinaryStream("File");
                String fileName = resultSet.getString("FileName");

                // Set the response headers
                String contentType = getServletContext().getMimeType(fileName);
                response.setContentType(contentType);
                response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");

                // Copy the file's input stream to the response output stream
                byte[] buffer = new byte[4096];
                int bytesRead;
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    response.getOutputStream().write(buffer, 0, bytesRead);
                }
            } else {
                // File not found in the database
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            // Close resources
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException ex) {
                    ex.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
    }
}
