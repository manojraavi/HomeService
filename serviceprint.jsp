<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align:"center"><b>SERVICE DETAILS</b></table>
	<table>
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
								response.setContentType("application/vnd.ms-excel");
						    	response.setHeader("Content-Disposition", "inline; filename=employeereport.xlsx");
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
						</tr>
						<%
							}
// 								session.setAttribute("service", rs);

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>
			</table>
		</form>
	</table>
</body>
</html>