<%
	String name=(String)session.getAttribute("username");
    String s=(String)session.getAttribute("contact_status");
%>

<div id="container">
   
<link href="css.css" rel="stylesheet" type="text/css"/>

<div id="header">
<img src="images/logo.jpg"/>

</div>

	<script type="text/javascript">
		
		function check()
		{
		if(document.f1.subject.value=="")
		{
			alert("plz enter subject!");
			return false;
		}
		
		if(document.f1.message.value=="")
		{
			alert("plz enter message!");
			return false;
		}
		}
	</script>

		
					<div id="navigation">
						<ul>
									<%
									if(name!=null)
									{%>
									<li> <a href="index.jsp">Home</a></li>
									<%}%>
						<li><a href="transfer.jsp">Transfer Money</a></li>
						<li><a href="withdraw.jsp">Withdraw Money</a></li>
						<li><a href="view.jsp">View Account</a></li>
						<li><a href="contact.jsp">Contact</a></li>
						<%
						if(name!=null)
						{%>
						<li> <a href="logout.jsp">Logout</a></li>
						<%}%>
						</ul>
					</div>
					
					
	<div id="content-container">
		<div id="content">
		

					<center>
			<%
				if(!s.equals("null")) 
				{
				%>
				<%
				session.setAttribute("contact_status","no_status");
				}
				else if(s.equals("true")) 
				{
					%>
				<h2 style="color: red;">Message Sent!!</h2><br/>
				<%
				}
			%>

					<h2>Contact Information for Admin</h2><br/><br/>

					<form action="contactController" onsubmit="return check();" name="f1">
						<table border="0">
							<tr>
								<td>User Name:	<b><font color="red">
								<%=name%><br/><br/></td>
								<td></td>
							</tr>
						  
							<tr>
								<td>Subject:	<b><input type="text" name="subject"/><br/><br/></td>
								<td></td>
							</tr>
							<tr>
								<td>Message:	<b><textarea rows="8" cols="16" name="message"></textarea><br/><br/></td>
								<td></td>
							</tr>
							<tr>
								<td><input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear"></td>
								
							</tr>
						</table>
						</form>
						</center>

		</div>

		<div id="aside">
				
		
		</div>

	</div>
		<jsp:include page="include/footer.jsp"></jsp:include>

</div>
