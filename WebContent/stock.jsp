<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock</title>

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
    background-size: 100% 120vh;
	width:100%;
	height: 120vh;
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

#fourthtab{
	color: red;
}

.first{
	margin-left:5%;
	margin-top:30px;
	margin-bottom:10px;
}

h3{
	margin-left:5%;
	margin-top:15px;
	margin-bottom:10px;
}

.units{
    border: none;
    background:silver;
    height: 20px;
    font-size: 16px;
    margin-left:5%;
    padding:15px;
    width:33%;    
    border-radius: 25px;
}

select{
    border: none;
    background:silver;
    height: 10%;
    font-size: 16px;
    margin-left:5%;
    padding:15px;
    width:35%;    
    border-radius: 25px;
}

#customers {
  font-family:"Poppins",sans-serif;
  border-collapse: collapse;
  width: 42%;
  margin-top:-25%;
  margin-left:40%;
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


.button{
    font-size: 22px;
    border: none;
    padding: 10px;
    background: white ;
    color: red;
    border-radius: 40px;
    cursor: pointer;
    margin-top:20px;
    margin-left:20%;
    width:100px;
    height:45px;
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
					<li id="fourthtab">Blood Stock</li>
					<a href="requestForBlood.jsp"><li>Requester's list</li></a>
					<a href="requestCompleted.jsp"><li>Requester History</li></a>
					<a href="Index.html"><li>Logout</li></a>
				</ul>
			</div>
		</div>
<div class="container">
<br>
<br>
<%
String msg= request.getParameter("msg");
if("valid".equals(msg))
{
	%>
	<font color="white" size="5">Successfully Updated!...</font>
	<%
}
%>
<%
if("invalid".equals(msg))
{
	%>
	<center><font color="white" size="5">Some thing Went Wrong!Try Again!..</font></center>
	<%
}
%>
<form action="stockAction.jsp" method="post">
<div class="form-group">
<h3 class="first">Select Blood Group</h3>
<select name="bloodgroup">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
</select>

<h3>Select Increase/Decrease</h3>
<select name="incdec">
<option value="inc">Increase</option>
<option value="dec">Decrease</option>
</select>
<h3>Units</h3>
<input class="units" type="text" placeholder="Enter Units" name="units">
<br>
<button type="Submit" class="button">Save</button>

</div>
</form>

<center>
<table id="customers">
<tr>
<th>Blood Group</th>
<th>Units</th>
</tr>
<tr>
<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs= st.executeQuery("select *from stock");
	while(rs.next()){
%>
<td><%=rs.getString(1) %>
<td><%=rs.getString(2) %>
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
<br>
<br>
</div>
</body>
</html>
































