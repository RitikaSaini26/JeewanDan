<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<title>Home Page</title>
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
	background-image: url('homepage.png');
	background-size: 100% 107%;
	width: 100%;
	height: 100vh;
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
	padding-left: 70px;
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
	margin-left: 80px;
}

.right-header ul li{
	display: inline-block;
	list-style: none;
	font-size: 16px;
	color: white;
	line-height: 80px;
	margin-left: 30px;
}

#firsttab{
	color: red;
}

.right-header ul li:hover{
	color:red;
}

.requestbox{
	background-color: #fff;
	width: 550px;
	margin-left:35px;
	margin-top: 15px;
	border-radius: 5px;
	height: 340px;
}
 
.requestbox header{
    padding: 20px 30px;
	font-size: 25px;
    font-weight: 600;
	border-bottom: 1px solid #bfbfbf;
	margin-bottom: 10px;
}

.name{
	position: relative;
	left: 20px;
	top:8px;
	line-height: 57px;
	padding: 0 22px;
	font-size: 16px;
	width: 190px;
	margin-bottom: 20px;
	border-radius: 5px;
	border: 1px solid #bfbfbf;

}
.name:hover
{
    border: 2px solid #6c0000;
}

.mobile{
    position: relative;
	margin-left: 50px;
	top:8px;
	line-height: 57px;
	padding: 0 22px;
	font-size: 16px;
	width: 190px;
	border-radius: 5px;
	margin-bottom: 20px;
	border: 1px solid #bfbfbf;

}
.mobile:hover
{
    border: 2px solid #6c0000;
}

.email{
	position: relative;
	left: 20px;
	top:12px;
	line-height: 57px;
	padding: 0 22px;
	font-size: 16px;
	border-radius: 5px;
	width: 190px;
	margin-bottom: 15px;
	border: 1px solid #bfbfbf;

}

.email:hover
{
    border: 2px solid #6c0000;
}

#bgroup{
	position: relative;
	left: 50px;
	top:12px;
	border-radius: 5px;
	padding: 0 22px;
	font-size: 16px;
	width: 235px;
	height: 57px;
	outline: none;
	overflow: hidden;
	border: 1px solid #bfbfbf;

}

#bgroup:hover
{
    border: 2px solid #6c0000;
}

#btn{
	position: relative;
	line-height: 47px;
	border-radius: 5px;
	border: none;
	cursor: pointer;
	font-size: 18px;
	width: 170px;
	margin-bottom: 20px;
	margin-left: 20px;
	color:white;
	background-color: #6c0000;
}


#btn1{
	position: relative;
	line-height: 45px;
	border-radius: 5px;
	border: none;
	cursor: pointer;
	font-size: 18px;
	width: 150px;
	margin-top: 28px;
	margin-left: 945px;
	color:#6c0000;
	border:2px solid #6c0000;
	background-color: #fff;
}

.h{
	margin-left: 800px;
	font-size: 35px;
	color: #fff;
}

.sh{
	margin-left: 840px;
	font-size: 23px;
	color: #fff;
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
					<li id="firsttab">Home</li>
					<a href="addNewDonor.jsp"><li>Add New Donor</li></a>
					<a href="editDeleteList.jsp"><li>Donor</li><a></a>
					<a href="stock.jsp"><li>Blood Stock</li></a>
					<a href="requestForBlood.jsp"><li>Requester's list</li></a>
					<a href="requestCompleted.jsp"><li>Requester History</li></a>
					<a href="Index.html"><li>Logout</li></a>
				</ul>
			</div>
		</div>
		<p class="h".><b>Blood Donation Timing</b></p>
		<p class="sh">9:00 AM TO 6:00 PM All Days</p>
		<div class="requestbox">
		<header>Blood Request</header>
		<form action ="homeFormAction.jsp" method="post">
		
		<input class="name" type="text" name="name"  placeholder="Enter  Name" required>
        <input class="mobile" type="text" name="mobilenumber"  placeholder="Enter Mobile Number" required><br>
        <input class="email" type="email" name="email"  placeholder="Enter Email Address" required>
        <select id="bgroup" name="bg" required>
			<option disabled="disabled" selected="selected">--Blood Group--</option>
			<option>A+</option>
			<option>O+</option>
			<option>B+</option>
			<option>AB+</option>
			<option>A-</option>
			<option>O-</option>
			<option>B-</option>
			<option>AB-</option>
		</select><br>
       <br>
		<button id="btn">SEND REQUEST</button>
		<%
		String msg= request.getParameter("msg");
		if("valid".equals(msg))
		{
			%> 
			<font color="#6c0000" size="4"><b>Form Submitted Successfully</b></font>
			<%
		}
		%>
		<%
		if("invalid".equals(msg))
		{
			%>
			<font color="#6c0000" size="3"><b>Invaild Data! Try Again!..</b></font>
			<%
		}
		%>
		</form>
	    </div>
	    <a href="addNewDonor.jsp"><button id="btn1"><b>Donate Now</b></button></a>
	</div>

</body>
</html>    

		

