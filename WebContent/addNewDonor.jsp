<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>AddNewDonor Page</title>
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
    background-image: url('Donor.png');
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
#secondtab{
	color: red;
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
	margin-left:5%;
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
	margin-left:5%;
}

h2{
    font-family: generic-name,sans-serif;
	margin-left:6%;
	margin-top:15px;
	margin-bottom:5px;
	color:black;
}

hr{ 
	margin-left:6%;
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
    margin-left: 25%;;
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
				<h1>JeewanDan</h1>
			</div>
			<div class="right-header">
				<ul>
				    <a href="home.jsp"><li>Home</li></a>
					<li id="secondtab">Add New Donor</li>
					<a href="editDeleteList.jsp"><li>Donor</li><a></a>
					<a href="stock.jsp"><li>Blood Stock</li></a>
					<a href="requestForBlood.jsp"><li>Requester's list</li></a>
					<a href="requestCompleted.jsp"><li>Requester History</li></a>
					<a href="Index.html"><li>Logout</li></a>
				</ul>
			</div>
		</div>

<%
String msg= request.getParameter("msg");
if("valid".equals(msg))
{
	%>
	<center><font color="yellow" size="5">Successfully Updated!..</font></center>
	<%
}
%>
<%
if("invalid".equals(msg))
{
	%>

	<center><font color="yellow" size="5">Invalid Detail!...</font></center>
	<%
}
%>



 <div class="container">
            <form action="addNewDonorAction.jsp" method="post">
            
            <h2>Name</h2>
            <input type="text" placeholder="Enter Name" name="name" required>
            <hr>
            <h2>Father Name</h2>
            <input type="text" placeholder="Enter Father Name" name="father" required>
            <hr>
            <h2>Mother Name</h2>
            <input type="text" placeholder="Enter Mother Name" name="mother" required>
            <hr>
            <h2>Mobile Number</h2>
            <input type="number" placeholder="Enter Mobile Number" name="mobilenumber" required>
            <hr>
            <h2>Gender</h2>
            <select name="gender" required>
            <option disabled="disabled" selected="selected">--Select Gender-- </option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Others">Others</option>
            </select>
            <hr>
            <h2>Email</h2>
            <input type="email" placeholder="Enter Email" name="email" required>
            <hr>
            <h2>Blood Group</h2>
            <select name="bloodgroup" required>
            <option disabled="disabled" selected="selected">--Select Blood Group--</option>
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
            </select>
            <hr>
            <h2>Address</h2>
            <input type="text" placeholder="Enter Address" name="address" required>
            <br>
            <button type="Submit" class="button"><b>Save</b></button>
            </form>
        </div>
</div>
</body>
</html>