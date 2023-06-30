<% 
  session.removeAttribute("SessionUser");
  session.invalidate(); // Invalidates the session
  response.sendRedirect("index.jsp"); // Redirect to the login page or any desired page
%>
