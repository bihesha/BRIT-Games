 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="header">
        <section>
            <nav class="account">
                <ul>
                	<li><a href="login.jsp">Logout</a></li>
                	<li><c:forEach var="user1" items="${UserDetails}">
                	<div style="color: #CCA43D;">
                		${user1.first_name}
                	</div>
                	</c:forEach>
                	</li>
                    <li><a href="userAccount.jsp"><span><i class="fa-solid fa-circle-user"></i></span></a></li>
              
                </ul>
            </nav>
            <div id="main_menu" class="main_menu">
                <div class="logo">
                <!--logo here-->
                	<a href="#"><img src="images/logo.png" alt=""></a>
                </div>
                <nav class="header_home" id="navbar">
                    <link rel="preconnect" href="https://fonts.googleapis.com">
                    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                    <link href="https://fonts.googleapis.com/css2?family=Ropa+Sans&display=swap" rel="stylesheet">
                    <ul>
                        <li><a href="index.jsp" class="btn active">HOME</a></li>
                        <li><a href="#">GAMES</a></li>
                        <li><a href="#">ABOUT US</a></li>
                        <li><a href="#">NEWS</a></li>
                        <li><a href="#">CONTACT US</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </nav>
            </div>     
        </section>
 </header>