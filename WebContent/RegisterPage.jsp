<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>RegisterPage</title>

<link rel="stylesheet" href="https://fonts.gooleapis.com/icon?family=material+Icons">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');
*{
    margin: 0px;
    padding: 0px;
    font-family: "Poppins",sans-serif;
}

body{
    display: flex;
    align-items: left;
    min-height: 100vh;
}

.bgimg{
    background-image:url('register1.png');
    background-size: 100% 107%;
	width:100%;
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
	color: White;
	font-size: 30px;
	}
	
.right-header{
	width: 75%;
   height: 100px;
   float:right;
}	
	


#btntwo{
    background-color: red;
	text-transform: uppercase;
	font-weight: 300px;
	 width: 150px;
    height: 40px;
    font-family: generic-name,sans-serif;
    font-size: 18px;
    color:white;
    border-radius: 3px;
    margin-left: 80%;
    margin-top: 17px;
    border: 2px solid white;
}

#btntwo:hover{
	color: white;
	border: 2px solid white;
    background:transparent;
}


.wrapper header{
    font-size:25px;
    font-weight: 600;
    margin-top: 5%;
    margin-left: 10%;
    margin-bottom: 5%;
}

.register-form{
    margin-top: -3%;

}
.field{
    margin-left: 10%;
}

form .field input::placeholder{
    color: #bfbfbf;
}

hr{
	margin-top:5px;
	width:500px;
	color:#bfbfbf;
}


#name{
    border: none;
    padding: 0px 18px 0px 48px;
    font-size: 18px;
    width:433px;
}

#email{
    border: none;
    padding: 0px 18px 0px 48px;
    font-size: 18px;
     width:433px;
}

#password{
    border: none;
    padding: 0px 18px 0px 48px;
    font-size: 18px;
     width:433px;
}

#re_password{
    border: none;
    padding: 0px 18px 0px 48px;
    font-size: 18px;
     width:433px;
}

#contact{
    border: none;
    padding: 0px 18px 0px 48px;
    font-size: 18px;
     width:433px;
}
.field i{
    font-size: 20px;
    color: #bfbfbf;
    position: absolute;
    margin-top:10px;
    transform: translateY(-50%);
    pointer-events: none;
}

.btn{
    font-size: 20px;
    border: none;
    padding: 13px 25px;
    background:#ff4f5B ;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 2%;
    margin-left: 10%;
    width: 15%;
}

.btn:hover{
    background-color: #375A65;
    color: white;
}

.login{
    text-decoration: none;
    font-size: 16px;
    line-height: 20px;
    color: #303F9F ;
}

span{
    margin-left: 5px;
    font-size: 16px;
}

.abc{
    margin-left: 950px;
    margin-top: -30px;
}

.login:hover{
    color: red;
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
				<a href="loginPage.jsp">
			    <button id="btntwo"><i class="fas fa-user"></i>
					Login</button></a>
				
			</div>
		</div>
<%
String msg= request.getParameter("msg");
if("valid".equals(msg))
{
	%>
	<script type="text/javascript">
	alert("Sucessfully Register!..")</script>
	<%
}
%>
<%
if("invalid".equals(msg))
{
	%>
	<script type="text/javascript">
	confirm("Something went wrong! TRY AGAIN!..")</script>
	<%
}
%>

    <div class="wrapper">
        <header>Register Here</header>
            <form class="register-form" action="RegisterPageAction.jsp" method="post">
                <div class="field">
                    <label ><i class="fas fa-user"></i></label>
                    <input type="text" name="name" id="name" placeholder="Your Name" required><hr><br>
                     
                <label for="email"><i class="fas fa-envelope"></i></label> 
                <input type="email" name="email" id="email" placeholder="Your Email" required><hr><br>
            
                <label for="password"><i class="fas fa-lock"></i></label>
                 <input type="password" name="password" id="password" placeholder="Password" required><hr><br>
        
                <label for="re-password"><i class="fas fa-lock"></i></label>
                <input type="password" name="re_password" id="re_password" placeholder="Confirm password" required><hr><br>
                          
                <label for="contact"><i class="fas fa-phone-alt"></i></label>
                <input type="text" name="contact" id="contact" placeholder="Contact no" required><hr><br>
                           
                <input type="checkbox" name="agree-term" class="agree-term" required> 
                <label for="agree-term" class="label-agree-term"><span><span><nbsp><nbsp>
                I agree all statements in Terms of service</span></span></label><br>
                </div>            
                
                <a href="loginPage.jsp">
					<button class="btn" >Register</button></a>
            </form>
   
        </div>        
        <div class="abc">
           Already have an account? <a href="loginPage.jsp" class="login"> Login</a>
        </div>

</div>

</body>
</html>