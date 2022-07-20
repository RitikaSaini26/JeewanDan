<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>updateDonor</title>
    <link rel="stylesheet" href="https://fonts.gooleapis.com/icon?family=material+Icons">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');
*{
    margin: 0px;
    padding: 0px;
    font-family: "Poppins",sans-serif;

}

.bgimg{
    background-image: url('bg.png');
    background-size: 100% 130vh;
	width:100%;
	height: 130vh;
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


.right-header ul li:hover{
	color:red;
}

input[type="text"],input[type="email"],input[type="number"]{
	border:none;
	background:#e5b6be;
	height:10px;
	font-size:16px;
	padding:15px;
	width:50%;
	border-radius:25px;
	margin-left:25%;
}

select{
	font-family: generic-name,sans-serif;
	border:none;
	background:#e5b6be;
	height:44px;
	font-size:14px;
	padding:15px;
	width:52%;
	border-radius:25px;
	margin-left:27%;
}

h2{
    font-family: generic-name,sans-serif;
	margin-left:27%;
	margin-top:15px;
	margin-bottom:5px;
	color:black;
}

hr{ 
	margin-left:26%;
	margin-top:3px;
	width:50%;
}

.button{
    font-size: 22px;
    border: none;
    padding: 11px 22px;
    background: #6c0000;
    color: White;
    border-radius: 5px;
    cursor: pointer;
    margin-top:15px;
    margin-left: 5%;
    margin-bottom:7%;
    width:10%;
}

.button:hover{
    background:rgb(68, 4, 4);
    color: white;
}
</style>
</head>
<body>
<div class=" bgimg">
		<div class="header">
			<div class="left-header">
				<h1>BLOOD BANK</h1>
			</div>
			<div class="right-header">
				<ul>
				    <a href="home.jsp"><li>Home</li></a>
					<li id="addNewDonor.jsp">Add New Donor</li>
					<a href="editDeleteList.jsp"><li>Donor</li><a></a>
					<a href="stock.jsp"><li>Blood Stock</li></a>
					<a href="requestForBlood.jsp"><li>Requester's list</li></a>
					<a href="requestCompleted.jsp"><li>Requester History</li></a>
					<a href="Index.html"><li>Logout</li></a>
				</ul>
			</div>
		</div>

<%
String id=request.getParameter("id");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs= st.executeQuery("select *from donor where id='"+id+"'");
	while(rs.next()){
%>
<div class="container">
<form action="updateDonorAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.println(id); %>">
<h2>Name</h2>
<input type="text" value="<%=rs.getString(2)%>" name="name">
<hr>
<h2>Father Name</h2>
<input type="text"  value="<%=rs.getString(3)%>"  name="father">
<hr>
<h2>Mother Name</h2>
<input type="text"  value="<%=rs.getString(4)%>"  name="mother">
<hr>
<h2>Mobile Number</h2>
<input type="number"  value="<%=rs.getString(5)%>"  name="mobilenumber">
<hr>
<h2>Email</h2>
<input type="email"  value="<%=rs.getString(7)%>"  name="email">
<hr>
<h2>Address</h2>
<input type="text"  value="<%=rs.getString(9)%>"  name="address">
<br>
<center><button type="Submit" class="button">Save</button></center>

</form>
</div>
</div>
<%
}	
}
catch(Exception e){
	System.out.println(e);
}
%>

</body>
</html>