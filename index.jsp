<div id="container">
    <%String name=(String)session.getAttribute("username");
    session.setAttribute("contact_status","true");
    %>
 
		<%-- CSS --%>
		<link href="css.css" rel="stylesheet" type="text/css"/>
		<jsp:include page="include/header.jsp"></jsp:include>
		
		
		<%-- CSS ends--%>
		
		<div id="content-container">
			<div id="content">

				<marquee><h2 style="color: red;"><i>
						<%
						if(name==null)
						{%>
							- Please Login -
						<%}
						else
						{
							%>
							- Welcome <%=name%> -
						<%}%>
						</i></h2>
				</marquee>
				<br/><br/>
				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<center><img src="images/index.jpg" width="550" height="400px"/></center>
		</div>

		<div id="aside">
			<%
			if(name==null)
			{
				%>
					<h2>Login :-</h2>

				<jsp:include page="login.jsp"></jsp:include><%--//LOGIN PAGE HERE--%>

			<%
			}
			else
			{
				  %>
				<p><b>* PLEASE CLICK MY ACCOUNT

</b></p>
			<%
			}
			%>
		</div>

	</div>

	
	<jsp:include page="include/footer.jsp"></jsp:include>

</div>
