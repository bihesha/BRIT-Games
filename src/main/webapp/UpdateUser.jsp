<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BRIT Games: Update Page</title>
<%@include file="all_styles/allCss.jsp"%>
<style type="text/css">
header {
	background-color: rgb(46, 46, 46);
	height: 28vh;
	background-image: url("images/header.jpg");
	background-size: 50%;
}

.foot {
	background-color: rgb(0, 0, 0);
	padding-bottom: 6cm;
	background-image: url("images/header.jpg");
	background-size: 100%;
	background-repeat: no-repeat;
}
/*body{
	background-color: #0c1429;

}*/
.update_form{
	width: 100%;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.5) 50%,
		rgba(0, 0, 0, 0.5) 50%), url("images/gameimage4.png");
	background-position: center;
	background-size: cover;
	height: 120vh;
}
</style>
</head>
<body>
	<%@include file="includes/header.jsp"%>


	<%
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userT = request.getParameter("userT");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pwd");
		
	%>
	<div class="update_form">
		<div class="container p-5">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="card">
						<div class="card-body">
							<h3 class="text-center"><strong>Update User Details</strong></h3>
							<form action="update" method="post">

								<div class="form-group">
									<label for="exampleInputFirstname">User ID</label> <input
										type="text" name="userid" class="form-control"
										value="<%=id %>" readonly>
								</div>
								<div class="form-group">
									<label for="exampleInputFirstname">First Name</label> <input
										type="text" name="fname" class="form-control"
										value="<%=fname %>">
								</div>
								<div class="form-group">
									<label for="exampleInputLastname">Last Name</label> <input
										type="text" name="lname" class="form-control"
										value="<%=lname %>">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">E-mail</label> <input
										type="email" name="email" class="form-control"
										value="<%=email %>">
								</div>
								<div class="form-group">
									<label for="exampleInputPhonenumber">Phone Number</label> <input
										type="number" name="phone" class="form-control"
										value="<%=phone %>">
								</div>
								<div class="form-group">
									<label for="exampleInputUsertype">User Type</label> <input
										type="text" name="userT" class="form-control"
										value="<%=userT %>">
								</div>
								<div class="form-group">
									<label for="exampleInputUsername">User Name</label> <input
										type="text" name="uname" class="form-control"
										value="<%=userName %>">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input
										type="password" name="pwd" class="form-control"
										value="<%=password %>">
								</div>

								<div class="text-center">
									<button type="submit" name="submit " class="btn btn-primary "
										value="Submit">Submit</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>