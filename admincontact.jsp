<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%
	String name=(String)session.getAttribute("username");
    String s=(String)session.getAttribute("contact_status");
%>

<div id="container">
	<link href="css.css" rel="stylesheet" type="text/css"/>

	
	<div id="header">
		<img src="images/logo.jpg"/>
		</div>
				<div id="navigation">
				<ul>
							
					<li><a href="index.jsp">Home</a></li>
					<li><a href="allaccounts.jsp">Show All Accounts</a></li>
					<li><a href="register.jsp">Open Account</a></li>
					<li><a href="deposit.jsp">Deposit</a></li>
					<li><a href="delete.jsp">Close Account</a></li>
					<li> <a href="admincontact.jsp">Users Contacted</a></li>
					<li> <a href="logout.jsp">Logout</a></li>
		 
				</ul>   
		   </div>
		   
		   	<div id="content-container">
		<div id="content">
						<center>

					<sql:setDataSource
						var="myDS"
						driver="com.mysql.jdbc.Driver"
						url="jdbc:mysql://localhost:3306/bank_db"
						user="root" password=""
					/>
					 
					<sql:query var="l1"  dataSource="${myDS}">
						SELECT * FROM contact;
					</sql:query>
					 
					<div align="center">
						<table border="1" cellpadding="5">
							<h3>CONTACT RECORDS</h3>
							<tr>
								<td>USER ID</td>
								<td>SUBJECT NAME</td>
								<td>MESSAGE DETAILS</td>
							</tr>
							<c:forEach var="convar" items="${l1.rows}">
								<tr>
									<td><c:out value="${convar.u_id}" /></td>
									<td><c:out value="${convar.subject}" /></td>
									<td><c:out value="${convar.message}" /></td>
								</tr>
							</c:forEach>
						</table>
					</div>
					</center>
				</div>

		<div id="aside">
				
		
		</div>

		</div>
		<jsp:include page="include/footer.jsp"></jsp:include>

		</div>


