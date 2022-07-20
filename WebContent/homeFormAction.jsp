<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name= request.getParameter("name");
String mobilenumber= request.getParameter("mobilenumber");
String email= request.getParameter("email");
String bg= request.getParameter("bg");
String status ="pending";
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into bloodrequest values(?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, mobilenumber);
	ps.setString(3,email);
	ps.setString(4, bg);
	ps.setString(5, status);
	ps.executeUpdate();
	response.sendRedirect("home.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("home.jsp?msg=invalid");

}

%>

