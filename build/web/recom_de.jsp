<%-- 
    Document   : recom_de
    Created on : Dec 13, 2016, 5:58:53 PM
    Author     : java4
--%>
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page  language="java" import="java.sql.*" errorPage="" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8" />
    <title>Connecting Social Media to E-Commerce</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/theme.css" />
    <link rel="stylesheet" href="assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="assets/plugins/Font-Awesome/css/font-awesome.css" />
    <link href="assets/css/layout2.css" rel="stylesheet" />
    <link href="assets/plugins/flot/examples/examples.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/plugins/timeline/timeline.css" />
    
    <style> 
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 2.5in;
}

div.gallery:hover {
  border: 1px solid #777;
  
}

div.gallery img {
  width: 2.5in;
  height: 2in;
}
div.gallery img:hover {
  width: 2.5in;
  height: 2in;
  
}
div.desc {
  padding: 15px;
  text-align: center;
}
body{
    background-color: #006666;
    
}
</style>
</head>
<body>
  
        
                
           <!---@1 part Start--->
         <center><h2 style="font-size: 26px; color: deepskyblue; font-family: cursive">Image Details</h2></center>
                   
                     <div class="gallery"> 
                   
                     
                            <%
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                    try {
                                    con = DbConnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from content1");
                                    while (rs.next()) {%>
                           
                                    
                         <img src="view3.jsp?name=<%=rs.getString("name")%>"/><div class="desc" style="font-size: 26px; color: white;"><%=rs.getString("name")%></div> 
                     

                         
                        <%


                                }
                                    
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                 
                     </div>
                       
        


