<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BRIT Games: Login</title>
<%@include file="all_styles/allCss.jsp"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
.main {
	width: 100%;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.5) 50%,
		rgba(0, 0, 0, 0.5) 50%), url("images/gameimage.jpg");
	background-position: center;
	background-size: cover;
	height: 100vh;
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

.login_form{
	width: 500px;
	height: 420px;
	background: linear-gradient(to top, rgba(0,0,0,0.8)50%, rgba(0,0,0,0.8)50%);
	position: absolute;
	top: -20px;
	left: 700px;
	border-radius: 10px;
	padding: 25px;
}
.login_form .link{
	font-family: Arial;
	font-size: 17px;
	padding-top: 20px;
	text-align: center;
	color: #fff;

}
.login_form .link a{
	text-decoration: none;
	color: #ff7200;
}
.liw{
	padding-top: 15px;
	padding-bottom: 10px;
	text-align: center;
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
		<br><br>
		<div class="cont">
			<h1>
				Welcome to <br>
				BRIT Games
			</h1>
			<p class="para">
				with new games,new updates and new ways to<br> play, join one
				of the biggest communities in gaming.
			</p>

			<form action="log" method="post" class="login_form">
				
					<h2>Login Here</h2>
					<input type="text" name="uid" class="form-control"
						id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder="Enter username" required="required"> 
						
					<input type="password" name="pass" class="form-control"
						id="exampleInputPassword1" placeholder="Enter Password"
						required="required">
						
					<button type="submit" name="submit" class="btn_lo">Login</button>
					
					
					<p class="link">Don't have an account<br>
					<a href="Register.jsp">Sign up</a> here</p>
			
			</form>

		</div>

	</div>


	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "failed") {
			swal("Sorry", "Worng username or password", "error");
		}
	</script>

</body>
</html>