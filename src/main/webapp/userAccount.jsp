<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BRIT Games: Account Page</title>
<%@include file="all_styles/allCss.jsp"%>

<style type="text/css">
/*body {
	font-family: Hind SemiBold;
	font-size: 24px;
}

table, th, td {
	border: 1px black;
}
*/
header {
	background-color: rgb(46, 46, 46);
	height: 28vh;
	background-image: url("images/header.jpg");
	background-size: 50%;
}

.foot {
	background-color: rgb(0, 0, 0);
	/*padding-bottom: 3cm;*/
	background-image: url("images/header.jpg");
	background-size: 100%;
	background-repeat: no-repeat;
}
.card-body .acc{
	border: #eee;
}
.account_form{
	width: 100%;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.5) 50%,
		rgba(0, 0, 0, 0.5) 50%), url("images/gameimage4.png");
	background-position: center;
	background-size: cover;
	height: 75vh;
}
</style>
</head>
<body>
	<%@include file="includes/header.jsp"%>


	<section style="background-color: #fff" class="account_form">
		<div class="container py-5">
			<c:forEach var="user1" items="${UserDetails}">


				<c:set var="user_id" value="${user1.user_id}" />
				<c:set var="first_name" value="${user1.first_name}" />
				<c:set var="last_name" value="${user1.last_name}" />
				<c:set var="email" value="${user1.email}" />
				<c:set var="phone_no" value="${user1.phone_no}" />
				<c:set var="user_type" value="${user1.user_type}" />
				<c:set var="user_name" value="${user1.user_name}" />
				<c:set var="password" value="${user1.password}" />



				<div class="row">
					<div class="col-lg-4">
						<div class="card mb-10">
							<div class="card-body text-center" style="background-color: #eee;">
								<img alt="user" src="images/usericon.jpg"
									class="rounded-circle img-fluid" style="width: 150px; height: 150px; border:2px solid #000;">
								<h5 class="my-3"><strong>${user1.first_name} ${user1.last_name}</strong></h5>
								<p class="text-muted mb-1">${user1.user_type}</p>

							</div>
						</div>
					</div>

					<div class="col-lg-7">
						<div class="card mb-4">
							<div class="card-body" style="background-color: #eee; ">
								<div class="row">
									<div class="col-sm-3">
										<p class="mb-0">User ID</p>
									</div>
									<div class="col-sm-9">
										<p class="text-muted mb-0">${user1.user_id}</p>
									</div>
								</div>
								<hr class="acc">
								<div class="row">
									<div class="col-sm-3">
										<p class="mb-0">First Name</p>
									</div>
									<div class="col-sm-9">
										<p class="text-muted mb-0">${user1.first_name}</p>
									</div>
								</div>
								<hr class="acc">
								<div class="row">
									<div class="col-sm-3">
										<p class="mb-0">Last Name</p>
									</div>
									<div class="col-sm-9">
										<p class="text-muted mb-0">${user1.last_name}</p>
									</div>
								</div>
								<hr class="acc">
								<div class="row">
									<div class="col-sm-3">
										<p class="mb-0">E-mail</p>
									</div>
									<div class="col-sm-9">
										<p class="text-muted mb-0">${user1.email}</p>
									</div>
								</div>
								<hr class="acc">
								<div class="row">
									<div class="col-sm-3">
										<p class="mb-0">Phone Number</p>
									</div>
									<div class="col-sm-4">
										<p class="text-muted mb-0">${user1.phone_no}</p>
									</div>
								</div>
								<hr class="acc">
								<div class="row">
									<div class="col-sm-3">
										<p class="mb-0">User Type</p>
									</div>
									<div class="col-sm-9">
										<p class="text-muted mb-0">${user1.user_type}</p>
									</div>
								</div>
								<hr class="acc">
								<div class="row">
									<div class="col-sm-3">
										<p class="mb-0">User Name</p>
									</div>
									<div class="col-sm-9">
										<p class="text-muted mb-0">${user1.user_name}</p>
									</div>
								</div>
								<hr class="acc">
								<div class="row">
									<div class="col-sm-3">
										<p class="mb-0">Password</p>
									</div>
									<div class="col-sm-9">
										<p class="text-muted mb-0">${user1.password}</p>
									</div>
								</div>
								
					
							<c:url value="UpdateUser.jsp" var="userupdate">
								<c:param name="id" value="${user_id}" />
								<c:param name="fname" value="${first_name}" />
								<c:param name="lname" value="${last_name}" />
								<c:param name="email" value="${email}" />
								<c:param name="phone" value="${phone_no}" />
								<c:param name="userT" value="${user_type}" />
								<c:param name="uname" value="${user_name}" />
								<c:param name="pwd" value="${password}" />
							</c:url>

							<c:url value="DeleteUser.jsp" var="userdelete">
								<c:param name="id" value="${user_id}" />
								<c:param name="fname" value="${first_name}" />
								<c:param name="lname" value="${last_name}" />
								<c:param name="email" value="${email}" />
								<c:param name="phone" value="${phone_no}" />
								<c:param name="userT" value="${user_type}" />
								<c:param name="uname" value="${user_name}" />
								<c:param name="pwd" value="${password}" />
							</c:url>								
								
								
								
								<br><br>
								
								<div class="d-flex justify-content-center mb-2">
									<a href="${userupdate}"> <input type="button" name="update"
										value="Update Details" class="btn btn-primary">
									</a> &nbsp;&nbsp;<a href="${userdelete}"> <input type="button"
										name="delete" value="Delete My Account" class="btn btn-primary">
									</a>

								</div>
							</div>
						</div>
					</div>
				</div>
				
				</c:forEach>
		</div>
	</section>



	<%@include file="includes/footer.jsp"%>
</body>
</html>