<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String contact=request.getParameter("contact");
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?)");
	
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,password);
	ps.setString(4,contact);
	ps.executeUpdate();
	response.sendRedirect("RegisterPage.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("RegisterPage.jsp?msg=invalid");

	
}

%>