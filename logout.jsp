<%String name=(String)session.getAttribute("username");
session.setAttribute("contact_status","null");

if(name==null)
{
    response.sendRedirect("index.jsp");
}
else
{
%>
		<div id="container">
		<link href="css.css" rel="stylesheet" type="text/css"/>
		 
		<%session.invalidate();%>
			
		<jsp:include page="include/header.jsp"></jsp:include>

				<div id="content-container">
				<div id="content">
				<center><marquee><h2 style="color: red;"><i>- YOU CAN LOGIN AGAIN !! -</i></h2></marquee><br/><br/>
				<h2 style="color: green;">You are logged out!!</h2>


				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<img src="images/index.jpg" width="550" height="400px"/></center>
				</div>

		<div id="aside">
		<h2>Login :-</h2>
		<jsp:include page="login.jsp"></jsp:include>
		</div>

		</div>
		<jsp:include page="include/footer.jsp"></jsp:include>

		</div>
<%

}

%>