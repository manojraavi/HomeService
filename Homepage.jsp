<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME SERVICES WEBSITE</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<style>
html {
	height: 500px;
}

.homeservice {
	padding-left: 480px;
}

tr {
	text-align: center;
}

body {
	font-family: 'Source Sans Pro', sans-serif;
	font-family: 'Raleway', sans-serif;
	background-repeat: repeat-x;
	background-color: white;
}

nav, nav a {
	color: #000000;
	background-color: skyblue;
}

#left {
	float: left;
	width: 25%;
}

#footer2 {
	/*     position: absolute; */
	height: 300px;
	/*     left: 0; */
	/*     bottom: 0; */
	width: 100%;
	margin-top: 0px;
	background-color: skyblue;
	color: black;
	padding-right: 8px;
	margin-left: 0px;
	text-align: center;
	padding-top: 20px;
	padding-bottom: 0px;
	font-size: 20px;
}

a:HOVER {
	color: #fff;
}

main {
	padding-top: 50px;
	padding-bottom: 0px;
}

/* footer { */
/* 	background-color: skyblue; */
/* 	height: 120px; */
/* 	padding-top: 20px; */
/* } */
#footer1 {
    position: fixed;
    height: 3%;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: skyblue;
    color: black;
    text-align: center;
    padding-top: 10px;
    padding-bottom: 30px;
    font-size: 20px;
}
.button {
	background-color: lightblue;
	border: 8px;
	color: black;
	padding: 15px 15px;
	text-align: center;
	font-size: 14px;
	margin: 8px 8px;
	transition: 0.3s;
	border-radius: 15px 15px;
}

.button:hover {
	background-color: blue;
}

.login:hover {
	background-color: blue;
}

.reg:hover {
	background-color: blue;
}

.login {
	background-color: lightblue;
	border: 8px;
	color: black;
	padding: 12px 12px;
	text-align: center;
	font-size: 14px;
	margin: 8px 8px;
	transition: 0.3s;
	border-radius: 15px 15px;
}

.reg {
	background-color: lightblue;
	border: 8px;
	color: black;
	padding: 12px 12px;
	text-align: center;
	font-size: 14px;
	margin: 8px 8px;
	transition: 0.3s;
	border-radius: 15px 15px;
}

.hero-image {
	background-image: url("Background1.jpg");
	/* 	background-image: url("backgroundk.jpg"); */
	background-size: 1000px;
	height: 485px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

div.contained {
	padding-top: 50px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-md fixed-top mb-4">
		<img src="logo.png" width="80px" height="55px"> <span
			class="homeservice">
			<h2 style="text-align: center">Home Service</h2>
		</span>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav ml-auto">

				<li class="nav-item"><a class="nav-link" href="#">About-US</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Contact-Us</a></li>
			</ul>
		</div>
	</nav>
	<main>
	<div class="hero-image">
		<div class="contained">
			<table align="center">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<tr>
					<td><a class="button" href="loginn_admin.html">ADMIN</a><br>
						<br> <br></td>
				</tr>
				<tr>
					<td><a class="button" href="login_vendor.html">VENDOR</a><br>
						<br> <br></td>
				</tr>
				<tr>
					<td><a class="button" href="login_customer.html">CUSTOMER</a><br>
						<br> <br></td>
				</tr>
			</table>
		</div>
	</div>
	<div id="footer2">
		<div id="left">
			<span style="font-weight: 800;color:red;">About</span>
			<p>
				Home Services is a convenient home service online platform that
				makes your life easier . We help you find top-notch service
				providers anytime and anywhere in the <span"><span
					style="color: orange;">IN</span><span
					style="background-color: blue; padding-top: 0px; color: white;">D</span><span
					style="color: green;">IA</span></span>
			</p>
		</div>
		<div id="left">
			<span style="font-weight: 800;color:red;">Featured Services</span> <br> <br>
			Plumbing<br> Cleaning<br> Laptop Service<br> Air
			Condition<br> Pest Control<br>
		</div>
		<div id="left">
			<span style="font-weight: 800;color:red;">Location</span> <br> <br>
			Hyderabad<br> Vijayawada<br> Banglore<br> Delhi<br>
			Mumbai<br> Kolkata<br>
		</div>
		<div id="left">
			<span style="font-weight: 800;color:red;">Contact-Us</span> <br> <br>
			EMAIL_US at : homeservice@gmail.com<br><br>
            PHONE NUMBER: 9876543219
		</div>
	</main>

	<!-- <footer> -->
	<!-- 	<p class="nav-item">Copyright & Copy 2020</p> -->
	<!-- 	<table align="center"> -->
	<!-- 		<tr> -->
	<!-- 			<td>Also Join Us On<a class="im" href="www.facebook.com"> <img -->
	<!-- 					class="im" src="fb.png" width="50px" height="50px"></a></td> -->
	<!-- 			<td><a class="im" href="www.twitter.com"><img class="im" -->
	<!-- 					src="twi.jpg" width="40px" height="40px"></a></td> -->
	<!-- 		</tr> -->
	<!-- 	</table> -->
	<!-- </footer> -->
	<footer>
		<div id=footer1>&copy; Copyright 2020 Home Service - Made with
			&hearts; in Hyderabad</div>
	</footer>
</body>
</html>
