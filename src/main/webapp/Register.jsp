<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BRIT Games: Register Page</title>
<%@include file="all_styles/allCss.jsp"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
.main{
	width: 100%;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.5) 50%,
		rgba(0, 0, 0, 0.5) 50%), url("images/gameimage.jpg");
	background-position: center;
	background-size: cover;
	height: 150vh;
}

.logo_login {
	width: 500px;
	float: left;
	height: 70px;
	color: #ff7200;
	font-size: 35px;
	font-family: Arial;
	padding-left: 20px;
	float: left;
	padding-top: 10px;
	font-weight: bold;
}
.reg_form{
	width: 600px;
	height: 1000px;
	background: linear-gradient(to top, rgba(0,0,0,0.8)50%, rgba(0,0,0,0.8)50%);
	position: absolute;
	top: 70px;
	left: 450px;
	border-radius: 10px;
	padding: 25px;
}
.btn_r{
	margin-top: 10px;
}
.reg_form h2{
	width: 550px;
	font-family: sans-serif;
	text-align: center;
	color: #000;
	font-size: 30px;
	background-color: #fff;
	border-radius: 10px;
	margin: 2px;
	padding: 8px;
	font-weight: bold;
}
#checkBox{
	width:15px;
	height: 15px;
	color: white;
}
h5{
	color: white;
	font-size: 15px;
	position: relative;
	left: 28px;
	bottom: 20px;
}
</style>
</head>
<body >

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">
		<div class="icon">
			<h2 class="logo_login">BRIT GAMES</h2>
		</div>
		<div>
			<div class="lo_re">
				<ul>
					<li><a href="login.jsp">Login</a></li>
					<li><a href="Register.jsp">Register</a></li>
				</ul>
			</div>
		</div>
		
		<form action="insert" method="post" class="reg_form" onsubmit="checkPassword()">
		
			<h2>Registration Form</h2>
			<input type="text" name = "fname" class="form-control" id="exampleInputfirstname" placeholder="firstname" required="required">
		
			<input type="text" name = "lname" class="form-control" id="exampleInputlastname" placeholder="lastname" required="required">
		
			<input type="email" name = "email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required="required">
			<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			<small id="emailHelp" class="form-text text-muted">(Format: [0-9 characters without symbols like $%^]@[email type].domain)</small>
		
			<input type="number" name = "phone" class="form-control" id="exampleInputPhone" placeholder="phone number" required="required">
		
			<input type="text" name = "userT" class="form-control" id="exampleInputusertype" placeholder="Registered user or Developer" required="required">
		
			<input type="text" name = "uid" class="form-control" id="exampleInputusername" placeholder="username" required="required">
			
			<input type="password" name = "pwd" class="form-control" id="Password" placeholder="password" required="required">
			
			<input type="password" name = "conpwd" class="form-control" id="confrm-password" placeholder="Confirm password" required="required">
			<!--  <div id="passerror"  class="alert alert-danger" role="alert" style="visibility: hidden;">Password and Confirm Password MissMatch </div>  -->

			<input type="checkbox" class="inputStyle" id="checkBox" onclick="enableButton()"><h5>Accept Privacy Policy and Terms</h5> <br>
			
			<button type="submit" name ="submit" class="btn_r" value="Register" id="submitBtn" disabled>Register</button>
		
		</form>
		
		
	</div>
	
	<!-- Check password -->
	<script type="text/javascript">
	//check password and confirm password match	
	function checkPassword(){
	    
	    var pass=document.getElementById('pwd').value;
	    var confirm=document.getElementById('conpwd').value;

	    if(pass!=confirm){
	        window.alert("Password missmatch");
	        return false;
	    }        
	    else{
	        window.alert("Success!");
	        return true;
	    }
	
	}
	</script>
	
	<!-- Alert box -->
	<script type="text/javascript">
	//alert box
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("Congrats","Account Created Successfully","success");
	}
	
	</script>
	
	<!-- enabling the register button in the form only when terms and agreed -->
	
	<script type="text/javascript">
	function enableButton(){
		if(document.getElementById("checkBox").checked){
			document.getElementById("submitBtn").disabled=false;
		}
		else{
			document.getElementById("submitBtn").disabled=true;
		}
	}
	</script>
	
	
</body>
</html>