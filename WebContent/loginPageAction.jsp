<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%

String email=request.getParameter("email");
String password=request.getParameter("password");


	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs= st.executeQuery("select * from register where email='"+email+"' and password='"+password+"'");
    try{
        rs.next();
		if(rs.getString("email").equals(email) && rs.getString("password").equals(password)){
			response.sendRedirect("home.jsp");
		}
		
	}

catch(Exception e){
	
		response.sendRedirect("loginPage.jsp?msg=invalid");

}
%>