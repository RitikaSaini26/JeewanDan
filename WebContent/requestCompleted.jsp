<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RequestCompleted</title>
<link rel="stylesheet" href="https://fonts.gooleapis.com/icon?family=material+Icons">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');
*{
    margin: 0px;
    padding: 0px;
    font-family: "Poppins",sans-serif;
}

.bgimg{
    background-image: url('bg.png');
    background-size: 100% 150vh;
	width:100%;
	height: 150vh;
}

.header{
	width: 100%;
	height: 70px;
	background-color:rgba(0,0,0,0.4);
}

.left-header{
	width: 20%;
	line-height: 80px;
	float:left;
}

.left-header h1{
	padding-left: 60px;
	font-weight: bold ;
	color: white;
	font-size: 25px;
}

.right-header{
	width: 75%;
   height: 100px;
   float:right;
}

.right-header ul{
	margin-left: 120px;
}

.right-header ul li{
	display: inline-block;
	list-style: none;
	font-size: 16px;
	color: white;
	line-height: 80px;
	margin-left: 30px;
}
#sixthtab{
	color: red;
}

.right-header ul li:hover{
	color:red;
}
#customers {
  font-family: "Poppins", sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #B22222;
  color: white;
}
</style>


</head>
<body>
<div class=" bgimg">
		<div class="header">
			<div class="left-header">
				<h1>JeewanDan</h1>
			</div>
			<div class="right-header">
				<ul>
					<a href="home.jsp"><li>Home</li></a>
					<a href="addNewDonor.jsp"><li >Add New Donor</li></a>
					<a href="editDeleteList.jsp"><li>Donor</li></a>
					<a href="stock.jsp"><li>Blood Stock</li></a>
					<a href="requestForBlood.jsp"><li>Requester's list</li></a>
					<li id="sixthtab">Requester History</li>
					<a href="Index.html"><li>Logout</li></a>
				</ul>
			</div>
		</div>
<br>
<center>
<table id="customers">
<tr>
<th>Name</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Blood Group</th>
</tr>
<tr>
<%
try{
	Connection con= ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select *from bloodrequest where status='completed'");
	while(rs.next()){
%>
<td><%=rs.getString(1) %></td>	
<td><%=rs.getString(2) %></td>		
<td><%=rs.getString(3) %></td>	
<td><%=rs.getString(4) %></td>	
</tr>
<%
}
}
catch(Exception e){
	System.out.println(e);
}
%>	
</table>		
</center>		
		
</div>
</body>
</html>