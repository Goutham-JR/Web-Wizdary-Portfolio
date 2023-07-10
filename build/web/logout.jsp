<% 
  session.removeAttribute("SessionUser");
  session.removeAttribute("SessionAID");
  session.removeAttribute("SessionGrade");
  session.invalidate(); // Invalidates the session
  response.sendRedirect("index.jsp"); // Redirect to the login page or any desired page
%>
