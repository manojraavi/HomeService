<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Service</title>
<script type="text/javascript" src="script.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<table align="center">
		<tr>
			<td><img src="vendor.png" alt="image" width="100" height="100"></td>
			<td id="empty" width="350px"></td>
			<td><h1 id="heading">Home Service</h1></td>
			<td></td>
			<td><form name="myForm" action="VendorLoginServlet"
					method="post">
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input
						type="submit" name="submit" value="HOME" class="adminregsubmit1"><br>
					<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input
						type="submit" name="submit" value="LOGOUT" class="adminregsubmit1">
				</form></td>
		</tr>
	</table>
	<form name="myForm" action="VendorLoginServlet" method="post"
		required="required">
		<br> <br>
		<table align="center">
			<tr>
				<td><input type="submit" name="submit" class="adminregsubmit"
					value="Notifications"></td>
			</tr>
		</table>
		<br> <br>
	</form>
	<!-- 	<table> -->
	<form name="myForm" action="VendorLoginServlet"
		onsubmit="return vendor()" method="post" required="required">
		<div>
			<!-- 			<table align="center" cellpadding="5" cellspacing="5" border="1"> -->

			&emsp;&emsp;&emsp;&emsp;<input type="submit" class="adminregsubmit"
				value="Add Personal Details" name="submit"
				onclick="return details()"> <input type="submit"
				class="adminregsubmit" value="Edit Details"
				onclick="return details2()"> <input type="submit"
				class="adminregsubmit" value="Add Services" onclick="return det()">
			<input type="submit" class="adminregsubmit" value="Update Services"
				onclick="return det2()"> <br>
			<!-- 			</tr> -->
			<!-- 			</table> -->
		</div>
		<table>
			<tr id="result" style="display: none;">
				<td><br>
				<b>Email:</b> &emsp;&emsp;&emsp;<input type="email"
					placeholder="Enter Email" required size="30" id="emailid1"
					name="email1">&emsp;&emsp;&emsp; <b>Address:</b>&emsp;&emsp;&emsp;<textarea
						required id="address" name="address" rows="3" cols="30"
						placeholder="Enter your address"></textarea>&emsp;&emsp;&emsp; <input
					type="submit" class="adminregsubmit" value="Add Details"
					id="submit" name="submit" onclick="return det1()"></td>
			</tr>
		</table>
		<br> <br>
		<div id="result1" style="display: none;">
			<table>
				<tr>
					<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
					<%@page import="java.sql.PreparedStatement"%>
					<%
						try {
							Class.forName("com.mysql.cj.jdbc.Driver");
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}
						Connection conn = null;
						Statement st = null;
						ResultSet rs = null;
					%>

					<table align="center" cellpadding="5" cellspacing="5" border="1">
						<tr>

						</tr>
						<tr bgcolor="#A52A2A">
							<td><b>VENDORID</b></td>
							<td><b>FIRSTNAME</b></td>
							<td><b>LASTNAME</b></td>
							<td><b>AGE</b></td>
							<td><b>GENDER</b></td>
							<td><b>CONTACT</b></td>

						</tr>


						<%
							try {
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root", "password-1");
								PreparedStatement ps = conn.prepareStatement("select * from Vendorreg where vendorid=? ");
								// 								ps.setString(1, request.getParameter("loginname1"));
								String vid = (String) request.getAttribute("vid");
								ps.setString(1, vid);
								rs = ps.executeQuery();

								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>

						</tr>

						<%
							request.setAttribute("vendorid", rs.getString(6));
									request.setAttribute("firstname", rs.getString(1));
									request.setAttribute("lastname", rs.getString(2));
									request.setAttribute("age", rs.getString(3));
									request.setAttribute("gender", rs.getString(4));
									request.setAttribute("contact", rs.getString(5));
								}

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>
					<br>
					<br>
					<!-- 					<div id="result2" style="display:none;"> -->
					<!-- 					<table align="center" cellpadding="5" cellspacing="5" border="1"> -->
					<!-- 						<tr> -->

					<!-- 						</tr> -->
					<!-- 						<tr bgcolor="#A52A2A"> -->
					<!-- 							<td><b>VENDORID</b></td> -->
					<!-- 							<td><b>PHONE NUMBER</b></td> -->
					<!-- 							<td><b>AVALIBLE TIME</b></td> -->
					<!-- 							<td><b>LOACTION</b></td> -->
					<!-- 							<td><b>SERVICE TYPE</b></td> -->
					<!-- 						</tr> -->


					<%-- 						<% --%>
					<!-- // 							try { -->
					<!-- // 								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root", "password-1"); -->
					<!-- // 								PreparedStatement ps = conn.prepareStatement("select * from Vendorservice where vendorid=? "); -->
					<!-- // 								ps.setString(1, request.getParameter("loginname1")); -->
					<!-- // 								rs = ps.executeQuery(); -->

					<!-- // 								while (rs.next()) { -->
					<%-- 						%> --%>
					<!-- 						<tr bgcolor="#DEB887"> -->
					<%-- 							<td><%=rs.getString(1)%></td> --%>
					<%-- 							<td><%=rs.getString(2)%></td> --%>
					<%-- 							<td><%=rs.getString(3)%>:<%=rs.getString(4)%></td> --%>
					<%-- 							<td><%=rs.getString(5)%></td> --%>
					<%-- 							<td><%=rs.getString(6)%></td> --%>
					<%-- 														<td><%=rs.getString(7)%></td> --%>
					<%-- 								<td><%=rs.getString(8) %></td> --%>
					<!-- 						</tr> -->

					<%-- 						<% --%>
					<!-- // 							} -->

					<!-- // 							} catch (Exception e) { -->
					<!-- // 								e.printStackTrace(); -->
					<!-- // 							} -->
					<%-- 						%> --%>
					<!-- 					</table> -->
					<!-- 					</div> -->
			</table>
	</form>

	<form name="myForm" action="VendorLoginServlet"
		onsubmit="return vendor1()" method="post" required="required">

		<br> <br> <label><b>FirstName:</b></label> <input
			type="text" size="50" placeholder="${firstname}" name="fname1"
			id="firstname"><br> <label><b>LastName:</b></label> <input
			type="text" size="50" placeholder="${lastname}" name="lname1"
			id="lastname"><br> <label><b>Age:</b></label> <input
			type="text" size="50" placeholder="${age}" id="age" name="personage1"><br>

		<label><b> Please select your gender:</b></label> <input type="radio"
			id="male" name="gender1" value="M"> Male &emsp;&emsp; <input
			type="radio" id="female" name="gender1" value="F"> Female
		&emsp;&emsp; <input type="radio" id="other" name="gender1" value="O">
		Other<br> <label><b>Contact Number:</b></label> <input type="tel"
			size="50" placeholder="${contact}" id="phnum" name="phone1"
			pattern="[789]{1}[0-9]{9}"><br> <label><b>Confirm
				old Password:</b></label> <input type="password" size="50" id="oldInput"
			placeholder="Enter your old password" name="oldpass"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"> <input
			id="check" type="checkbox" onclick="myFunction2()"><span
			id="show"><b>Show Password</b><br></span> <label><b>New
				Password:</b></label> <input type="password" size="50" id="newInput"
			placeholder="Enter your new password" name="newpass"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
			title="it should contain caps letter, one small letter and digit">
		<input id="check" type="checkbox" onclick="myFunction3()"><span
			id="show"><b>Show Password</b><br></span> <label><b>Re-enter
				New Password:</b></label> <input type="password" id="cnfnewpass"
			placeholder="Enter your new password again" name="cnfnewpass"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" size="50"> <input
			type="checkbox" onclick="myFunction4()"><span id="show"><b>Show
				Password</b><br></span> <input type="submit" id="submit"
			class="adminregsubmit" value="Update Details" name="submit"
			onclick="return Validate1()"><br>
	</form>
	</div>
	<form name="myForm" action="VendorLoginServlet" onsubmit="return vendor()"
			method="post" required="required">
	<div id="result2" style="display: none">

		<table>
			<tr>
				<%@page import="java.sql.DriverManager"%>
				<%@page import="java.sql.ResultSet"%>
				<%@page import="java.sql.Statement"%>
				<%@page import="java.sql.Connection"%>
				<%@page import="java.sql.PreparedStatement"%>
				<%
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
					} catch (ClassNotFoundException e) {
						e.printStackTrace();
					}
					Connection conn1 = null;
					Statement st1 = null;
					ResultSet rs1 = null;
				%>

				<!-- 					<table align="center" cellpadding="5" cellspacing="5" border="1"> -->
				<!-- 						<tr> -->

				<!-- 						</tr> -->
				<!-- 						<tr bgcolor="#A52A2A"> -->
				<!-- 							<td><b>VENDORID</b></td> -->
				<!-- 							<td><b>FIRSTNAME</b></td> -->
				<!-- 							<td><b>LASTNAME</b></td> -->
				<!-- 							<td><b>AGE</b></td> -->
				<!-- 							<td><b>GENDER</b></td> -->
				<!-- 							<td><b>CONTACT</b></td> -->

				<!-- 						</tr> -->


				<%-- 						<% --%>
				<!-- // 							try { -->
				<!-- // 								conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root", "password-1"); -->
				<!-- // 								PreparedStatement ps1 = conn.prepareStatement("select * from Vendorreg where vendorid=? "); -->
				<!-- // 								ps1.setString(1, request.getParameter("loginname1")); -->
				<!-- // 								rs1 = ps1.executeQuery(); -->

				<!-- // 								while (rs1.next()) { -->
				<%-- 						%> --%>
				<!-- 						<tr bgcolor="#DEB887"> -->
				<%-- 							<td><%=rs1.getString(6)%></td> --%>
				<%-- 							<td><%=rs1.getString(1)%></td> --%>
				<%-- 							<td><%=rs1.getString(2)%></td> --%>
				<%-- 							<td><%=rs1.getString(3)%></td> --%>
				<%-- 							<td><%=rs1.getString(4)%></td> --%>
				<%-- 							<td><%=rs1.getString(5)%></td> --%>

				<%-- 														<td><%=rs.getString(7)%></td> --%>
				<%-- 								<td><%=rs.getString(8) %></td> --%>
				<!-- 						</tr> -->

				<%-- 						<% --%>
				<!-- // 							} -->

				<!-- // 							} catch (Exception e) { -->
				<!-- // 								e.printStackTrace(); -->
				<!-- // 							} -->
				<%-- 						%> --%>
				<!-- 					</table> -->
				<br>
				<br>
				<!-- 	<div id="result2" style="display:none;"> -->

				</form>
<form name="myForm" action="VendorLoginServlet"
					onsubmit="return servicevalidate()" method="post" required="required">
					<table align="center" cellpadding="5" cellspacing="5" border="1">
						<tr>

						</tr>
						<tr bgcolor="#A52A2A">
							<td><b>VENDORID</b></td>
							<td><b>PHONE NUMBER</b></td>
							<td><b>AVALIBLE TIME</b></td>
							<td><b>LOACTION</b></td>
							<td><b>SERVICE TYPE</b></td>
							<td><b>CATEGORIES</b></td>
							<td><b>STATUS</b></td>
						</tr>


						<%
							try {
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root", "password-1");
								PreparedStatement ps = conn.prepareStatement(
										"select distinct categories,vendorid,telnum,avltimefrom,avltimeto,location,servicetype,status from Vendorservice where vendorid=? ");
								// 								ps.setString(1, request.getParameter("loginname1"));
								String vid = (String) request.getAttribute("vid");
								ps.setString(1, vid);
								rs = ps.executeQuery();

								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%>:<%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(8)%></td>
							<%-- 							<td><%=rs.getString(7)%></td> --%>
							<%-- 	<td><%=rs.getString(8) %></td> --%>
						</tr>

						<%
							}

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>
		</table>


		<b>Contact Number:</b>&emsp;&emsp;&emsp;<input type="tel" id="telnum"
			size="30" name="telnum" placeholder="Enter your phone number"
			pattern="[789]{1}[0-9]{9}">&emsp;&emsp;&emsp; <b>Avalible
			Timings:</b>&emsp;&emsp;&emsp; <input
			style="border-color: antiquewhite; padding: 5px 5px;" type="time"
			value="00:00" id="avltime" name="avltimefrom"> &emsp;&emsp;<b>to
			&emsp;&emsp;</b> <input type="time" value="00:00" id="avltime1"
			name="avltimeto"><br>
		<br> <b>Location: &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</b><input
			type="text" size="30" id="location" name="location"
			placeholder="Enter your loaction">&emsp;&emsp;&emsp; <br>
		<br>
		<b>Service Type: </b>&emsp;&emsp;&emsp;&emsp; <select
			name="servicetype" id="servicetype" style="padding: 10px 20px;"
			onchange="changecat();">
			<option value="">Select</option>
			<option value="Plumbing">Plumbing</option>
			<option value="Cleaning">Cleaning</option>
			<option value="Laptop">Laptop</option>
			<option value="Air Condition">Air Condition</option>
			<option value="Pest Control">Pest Control</option>
		</select> &emsp;&emsp;<b>Categories:&emsp;&emsp; </b> <select name="category"
			id="category" style="padding: 10px 20px;">
			<option value="">Select</option>
		</select>&emsp;&emsp;<b>Other Category&emsp;&emsp;</b><input type="text"
			placeholder="Other ctegory you want to add" name="category1">
		<!-- 			<br> -->
		<!-- 			<br> -->
		<input type="submit" class="adminregsubmit" value="Add" name="submit"
			onclick="return vendor2()">


	</div>
</form>
	<form name="myForm" action="VendorLoginServlet"
		onsubmit="return vendor1()" method="post" required="required">
		<div id="result3" style="display: none">
			<br>
			<br> <br> <br> <b>Contact Number:</b>&emsp;&emsp;&emsp;<input
				type="tel" id="telnum1" size="30" name="telnum2"
				placeholder="Enter your phone number" pattern="[789]{1}[0-9]{9}">&emsp;&emsp;&emsp;
			<b>Avalible Timings:</b>&emsp;&emsp;&emsp; <input type="time"
				id="avltime1" name="avltimefrom2"> &emsp;&emsp;<b>to
				&emsp;&emsp;</b> <input type="time" id="avltime1" name="avltimeto2"><br>
			<br> <b>Location: &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</b><input
				type="text" size="30" id="location" name="location2"
				placeholder="Enter your loaction">&emsp;&emsp;&emsp; <b>Service
				Type: </b>&emsp;&emsp;&emsp;&emsp; <select name="servicetype1"
				id="servicetype1" style="padding: 10px 20px;"
				onchange="changecat1();">
				<option value="">Select</option>
				<option value="Plumbing">Plumbing</option>
				<option value="Cleaning">Cleaning</option>
				<option value="Laptop">Laptop</option>
				<option value="Air Condition">Air Condition</option>
				<option value="Pest Control">Pest Control</option>
			</select> &emsp;&emsp;<b>Categories: </b> <select name="category2"
				id="category1" style="padding: 10px 20px;">
				<option value="">Select</option>
			</select><br> <br> <b>Other Category&emsp;&emsp;&emsp;</b><input
				size="30" type="text" placeholder="Other category you want to add"
				name="category11"> <b>&emsp;&emsp;&emsp;&emsp;Status:&emsp;&emsp;&emsp;</b>
			<select name="status" style="padding: 10px 20px;">
				<option value="opened">opened</option>
				<option value="closed">closed</option>
			</select> <input type="submit" class="adminregsubmit" id="submit"
				value="Update" name="submit" onclick="return vendor4()"><br>
	</form>
	<br>
	<br>
	<br>
	<form name="myForm" action="VendorLoginServlet" onsubmit="return vendor()"
			method="post" required="required">
	<b style="color: red;">To Remove the service:</b>&emsp;&emsp;
	<select name="servicetype2" id="servicetype2"
		style="padding: 10px 20px;" onchange="changecat2();">
		<option value="select">Select</option>
		<option value="Plumbing">Plumbing</option>
		<option value="Cleaning">Cleaning</option>
		<option value="Laptop">Laptop</option>
		<option value="Air Condition">Air Condition</option>
		<option value="Pest Control">Pest Control</option>
	</select> &emsp;&emsp;
	<b>Categories: &emsp;</b>
	<select name="category3" id="category2" style="padding: 10px 20px;">
		<option value="">Select</option>
	</select>&emsp;&emsp;
	<b>Other Category&emsp;&emsp;</b>
	<input size="50" type="text"
		placeholder="Other category you want to add" name="category21">
	<br>
	<br>


	<input type="submit" class="adminregsubmit" value="Delete"
		name="submit" onclick="return vendor3()">


	</div>
	</form>



</body>
</html>