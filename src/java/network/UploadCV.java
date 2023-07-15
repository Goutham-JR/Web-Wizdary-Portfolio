/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package network;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/UploadCV")
@MultipartConfig(maxFileSize = 1073741823)
public class UploadCV extends HttpServlet {

    private String dbURL = "jdbc:mysql://localhost:3306/portfolio";
    private String dbUser = "root";
    private String dbPass = "Duelisto";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        String fileName = "";
        HttpSession session = request.getSession(false);
        String AID = "";
        // System.out.println("User Recommend :" + gen + age + marital + edu + interest + content);
        InputStream inputStream = null;
        Part filePart = request.getPart("file");
        if (filePart != null) {
            String contentDisposition = filePart.getHeader("content-disposition");
            String[] parts = contentDisposition.split(";");

            for (String part : parts) {
                if (part.trim().startsWith("filename")) {
                    fileName = part.substring(part.indexOf('=') + 1).trim().replace("\"", "");
                    break;
                }
            }
            System.out.println(fileName);
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());


            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        String message = null;

        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
            // System.out.println("User Recommend :" + gen + age + marital + edu + interest + content);
            //Gathering AID
            String sqlAID = "Select AID from Account where username='" + session.getAttribute("SessionUser") + "'";
            PreparedStatement StatementAID = conn.prepareStatement(sqlAID);
            ResultSet rowAID = StatementAID.executeQuery(sqlAID);
            if (rowAID.next()) {
                AID = rowAID.getString("AID");
            }

            //Checking if AID is Available Already
            String sql = "";
            PreparedStatement statement;
            String sqlPAID = "Select AID from UserCV where AID='" + AID + "'";
            PreparedStatement StatementPAID = conn.prepareStatement(sqlAID);
            ResultSet rowPAID = StatementPAID.executeQuery(sqlPAID);
            if (rowPAID.next()) {
                sql = "UPDATE UserCV SET File=?, FileName=?, FileType=? where AID='" + AID + "'";
                statement = conn.prepareStatement(sql);
                statement.setString(2, fileName);
                statement.setString(3, filePart.getContentType());
                if (inputStream != null) {
                    statement.setBlob(1, inputStream);
                }
            } else {
                sql = "INSERT INTO UserCV(AID, File, FileName, FileType) values (?, ? , ? , ?)";
                statement = conn.prepareStatement(sql);
                statement.setString(1, AID);
                statement.setString(3, fileName);
                statement.setString(4, filePart.getContentType());
                if (inputStream != null) {
                    statement.setBlob(2, inputStream);
                }
            }

            //  statement.setString(1, bio);




            int row = statement.executeUpdate();
            if (row > 0) {

                System.out.println("File upload sucess");
                response.sendRedirect("Usermanage.jsp?msg=success");
            } else {
                response.sendRedirect("Usermanage.jsp?msg=Failed");

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}