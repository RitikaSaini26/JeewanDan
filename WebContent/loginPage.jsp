<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>LoginPage</title>

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
    background-image:url('login1.png');
    background-size: 100% 100%;
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
	background-color:red;
    border: 2px solid white;
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
}

#btntwo:hover{
	color: white;
	border: 2px solid white;
    background: transparent;

}



.wrapper header{
    font-size:27px;
    font-weight: 600;
    margin-top: 10%;
    margin-left: 53%;
    margin-bottom: 5%;
}

.register-form{
    margin-top: -3%;

}
.field{
    margin-left: 53%;
}

form .field input::placeholder{
    color: #bfbfbf;
}

hr{
	margin-top:7px;
	margin-left:1px;
	width:450px;
	color:#bfbfbf;
}

#email{
    border: none;
    padding: 0px 18px 0px 48px;
    font-size: 18px;
    width:390px;
}

#password{
    border: none;
    padding: 0px 18px 0px 48px;
    font-size: 18px;
    width:390px;
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
    margin-left: 53%;
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
    margin-left: 200px;
    margin-top: 65px;
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
				<a href="RegisterPage.jsp">
			    <button id="btntwo"><i class="fas fa-edit"></i>
					Register</button></a>
				
			</div>
		</div>
<%

String msg= request.getParameter("msg");
if("invalid".equals(msg))
{
	%><br><br>
	<center><font color="blue" size="5">Invalid Detail</font></center>
	<%
}
%>

		
        <div class="wrapper">
            <header>Login</header>
                <form class="register-form" action="loginPageAction.jsp" method="post">
                    <div class="field">
                        <label for="email"><i class="fas fa-envelope"></i></label> 
                        <input type="email" name="email" id="email" placeholder="Your Email" required><hr><br>
            
                         <label for="password"><i class="fas fa-lock"></i></label>
                        <input type="password" name="password" id="password" placeholder="Password" required><hr><br>
                        
                      
                        </div>            
                        
                            <button class="btn" >Login</button>
                    </form>
           
                </div>        
                <div class="abc">
                    Don't have an accoung?<a href="RegisterPage.jsp" class="login"> Register</a>
                </div>
        
        </div>
        
        </body>
        </html>    