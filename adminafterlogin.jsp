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
<table >
		<tr>
			<td><img src="customer.jpg" alt="image" width="100" height="100"></td>
			<td id="empty" width="350px"></td>
			<td><h1 id="heading">Home Service</h1></td>
			<td>             </td>
			<td><form name="myForm" action="CustomerLoginServlet" method="post">
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" name="submit" value="HOME" class="adminregsubmit1"><br>
			<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" name="submit" value="LOGOUT" class="adminregsubmit1">
				</form>
			</td>
		</tr>
	</table>
	<br><br>
		
		
		<br><br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<input type="submit" class="adminregsubmit"	value="Service" 
					onclick="return hide1()"> 
				<input type="submit"
					class="adminregsubmit" value="UPI Payments" 
					onclick="return hide2()">
				<input type="submit" class="adminregsubmit" value="Card Payments" 
					 onclick="return hide3()">
				<input type="submit" class="adminregsubmit" value="Discount" 
					 onclick="return hide4()">
		
	<form name="myForm" action="AdminLoginServlet" method="post" required="required">	
		
			
			<div id="hide1" style="display:none;">
				<table>
				<tr>
					<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
					<%@page import="java.sql.PreparedStatement"%>
					<%@page import="java.util.*"%>
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
							<td><b>CUSTOMER NAME</b></td>
							<td><b>CUSTOMER EMAIL</b></td>
							<td><b>CUSTOMER NUMBER</b></td>
							<td><b>VENDOR ID</b></td>
							<td><b>VENDOR NUMBER</b></td>
							<td><b>SERVICETYPE</b></td>
							<td><b>CATEGORY</b></td>
							<td><b>ADDRESS</b></td>
							<td><b>REFERENCE ID</b></td>
							<td><b>AMOUNT</b></td>
							<td><b>REVIEW</b></td>
						</tr>


						<%
							try {
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root", "password-1");
								PreparedStatement ps = conn.prepareStatement("select * from adminnotify;");
								rs = ps.executeQuery();

								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(8)%></td>
							<td><%=rs.getString(9)%></td>
							<td><%=rs.getString(10)%></td>
							<td><%=rs.getString(11)%></td>
							<%-- 							<td><%=rs.getString(7)%></td> --%>
							<%-- 	<td><%=rs.getString(8) %></td> --%>
						</tr>

						<%
							}
								session.setAttribute("service", rs);

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>
			</table>
			
			<a href="serviceprint.jsp">Generate Report</a>
			
			</div>
			
			<div id="hide2" style="display:none;">
				<table>
				<tr>
					<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
					<%@page import="java.sql.PreparedStatement"%>
					<%@page import="java.util.*"%>
					<%
						try {
							Class.forName("com.mysql.cj.jdbc.Driver");
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}
						Connection conn2 = null;
						Statement st2 = null;
						ResultSet rs2 = null;
					%>

					<table align="center" cellpadding="5" cellspacing="5" border="1">
						<tr>

						</tr>
						<tr bgcolor="#A52A2A">
							<td><b>CUSTOMER NAME</b></td>
							<td><b>CUSTOMER EMAIL</b></td>
							<td><b>UPI ID</b></td>
							<td><b>REFERENCE ID</b></td>
							<td><b>AMOUNT</b></td>
						</tr>


						<%
							try {
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root", "password-1");
								PreparedStatement ps = conn.prepareStatement("select * from upipayment;");
								rs = ps.executeQuery();

								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
						</tr>

						<%
							}
								session.setAttribute("cardpayment", rs);

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>
			</table>
			<a href="upipaymentprint.jsp">Generate Report</a>
			
			</div>
			
			<div id="hide3" style="display:none">
				<table>
				<tr>
					<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
					<%@page import="java.sql.PreparedStatement"%>
					<%@page import="java.util.*"%>
					<%
						try {
							Class.forName("com.mysql.cj.jdbc.Driver");
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}
						Connection conn3 = null;
						Statement st3 = null;
						ResultSet rs3 = null;
					%>

					<table align="center" cellpadding="5" cellspacing="5" border="1">
						<tr>

						</tr>
						<tr bgcolor="#A52A2A">
							<td><b>CUSTOMER NAME</b></td>
							<td><b>CUSTOMER EMAIL</b></td>
							<td><b>ADDRESS</b></td>
							<td><b>CITY</b></td>
							<td><b>STATE</b></td>
							<td><b>ZIP</b></td>
							<td><b>CARD NAME</b></td>
							<td><b>CARD NUMBER</b></td>
							<td><b>AMOUNT</b></td>
						</tr>


						<%
							try {
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root", "password-1");
								PreparedStatement ps = conn.prepareStatement("select * from payment;");
								rs = ps.executeQuery();

								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(8)%></td>
							<td><%=rs.getString(12)%></td>
						</tr>

						<%
							}
								session.setAttribute("cardpayment", rs);

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>
			</table>
			<a href="cardpaymentprint.jsp">Generate Report</a>
			
			
			</div>
			</form>
			
	<form name="myForm" action="AdminLoginServlet" onsubmit="return admin()" method="post" required="required">	
			
			<div id="hide4" style="display:none">
				<table>
				<tr>
					<td><b>Customer EmailId :&emsp;&emsp;&emsp;</b></td>
					<td><input type="text" name="custemail"
						placeholder="Enter Customer Email Id"><br>
					<br></td>
				</tr>
				<tr>
					<td><b>Service Type :</b></td>
					<td><select name="cservicetype" id="servicetype"
						style="padding: 10px 20px;" onchange="changecat();">
							<option value="">Select</option>
							<option value="Plumbing">Plumbing</option>
							<option value="Cleaning">Cleaning</option>
							<option value="Laptop">Laptop</option>
							<option value="Air Condition">Air Condition</option>
							<option value="Pest Control">Pest Control</option>
					</select></td>
					<td><b>&emsp;&emsp;&emsp;Categories:</b></td>
					<td>&emsp;&emsp;&emsp;<select name="ccategory" id="category"
						style="padding: 10px 20px;">
							<option value="">Select</option>
					</select>
					</td>
				</tr>
				<tr>
					<br>
					<br>
					<td><b><br>Other Categories :</b></td>
					<td><br>
					<input type="text" name="ccategory1"
						placeholder="Enter other category"></td>
					
					<td><b>&emsp;&emsp;&emsp;Discount(%) : </b></td>
					<td>&emsp;&emsp;&emsp;<input type="text" name="discount" placeholder="Enter Discount in %"></td>
					<td><b>Changed as Rupees :</b></td>
					<td><input type="text" name="discount1" placeholder="Enter as Money"></td>
				</tr>
			</table>
			<br> <br> 
			<form onsubmit="return admin()">
			<input style="align-content: center;"
				type="submit" value="Give" id="submit" name="submit" class="adminregsubmit">
			
				<input style="align-content: center;"
				type="submit" value="Take" id="submit1" name="submit" class="adminregsubmit">
			
			</div>
		</form>
	</table>
</body>
</html>