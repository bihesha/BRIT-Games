<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BRIT Games: Home Page</title>
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
	padding-bottom: 3cm;
	background-image: url("images/header.jpg");
	background-size: 100%;
	background-repeat: no-repeat;
}
/*body{
	background-color: #0c1429;

}*/
.back-img{
		background: url("images/gameimage.jpg");
		height: 90vh;
		width: 100%;
		background-repeat:no-repeat;
		background-size: cover;
}
h1{
	font-weight: 20px;
	color: #fff;
}
</style>
</head>
<body>

<%@include file="includes/header.jsp"%>
	<div class="container-fluid back-img p-3">
		<h1 class="text-center">Online Gaming Site</h1>
	</div>

<%@include file="includes/footer.jsp"%>

</body>
</html>