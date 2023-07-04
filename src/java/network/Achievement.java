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

@WebServlet("/Achievement")
@MultipartConfig(maxFileSize = 16177215)
public class Achievement extends HttpServlet {

    private String dbURL = "jdbc:mysql://localhost:3306/portfolio";
    private String dbUser = "root";
    private String dbPass = "Duelisto";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        String AID = "";
        String title = request.getParameter("achievementTitle");
        InputStream inputStream = null;
        Part filePart = request.getPart("achievementImage");
        if (filePart != null) {

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
            sql = "INSERT INTO Achievements(AID, AImage, Title) values (?, ?, ?)";
            statement = conn.prepareStatement(sql);
            statement.setString(1, AID);
            statement.setString(3, title);
            if (inputStream != null) {
                statement.setBlob(2, inputStream);
            }


            //  statement.setString(1, bio);




            int row = statement.executeUpdate();
            if (row > 0) {

                System.out.println("image upload sucess");
                response.sendRedirect("Usermanage.jsp?msg=success,");
            } else {
                response.sendRedirect("Usermanage.jsp?msg=Failed");

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}