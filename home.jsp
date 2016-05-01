<%String name=(String)session.getAttribute("username");

if(name==null)
{
    response.sendRedirect("index.jsp");
}

else
{
if(name.equals("admin"))
	{
		response.sendRedirect("register.jsp");
	}
%>


<div id="container">
<link href="css.css" rel="stylesheet" type="text/css">
<jsp:include page="include/home-header.jsp"></jsp:include>

<div id="content-container">
<div id="content"><center>
<marquee><h2 style="color: red;"><i>- Welcome <%=name%> -</i></h2></marquee><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img alt="home"  src="images/home.jpg" width="550" height="400px"/></center>
</div>



<div id="aside">
<p><b><font color="blue">* YOU CAN TRANSFER MONEY
<br/>
</br>* YOU CAN WITHDRAW MONEY
<br/>
</br>* YOU CAN SEE ACCOUNT DETAILS
<br/>
</br>* YOU CAN GIVE CONTACT INFO'S
</font></b></p>
</div>
</div>

<jsp:include page="include/footer.jsp"></jsp:include>
</div>
<%}%>