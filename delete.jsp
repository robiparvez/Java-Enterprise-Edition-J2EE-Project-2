<%String name=(String)session.getAttribute("username");
String s=(String)session.getAttribute("delete_status");

if(name==null)
{
    response.sendRedirect("index.jsp");
}
else
{
	if(name.equals("admin"))
{%>
<script type="text/javascript">
    
    function check()
    {
    if(document.f1.username.value=="")
    {
        alert("plz enter username!");
        return false;
    }
    }
</script>


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

<%if(s.equals("deleted")) 
{%>
<h2 style="color: red;">Account Closed!!</h2><br/>
<%session.setAttribute("delete_status","no_status");
} 

if(s.equals("not_found"))
{%><h2 style="color: red;">Account Not Found!!</h2><br/><%
session.setAttribute("delete_status","no_status");}%>

<br><h2>Close Account :-</h2><br/><br/>

    <form name="f1" action="deleteController" onsubmit="return check();">
		<b>		 
		Username: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username"/><br/><br/>
		</b> 
		&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 
		<input type="submit" value="Submit"/>
    	&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear"/>
</form></center>
</div>
<div id="aside">

</div>
</div>
<jsp:include page="include/footer.jsp"></jsp:include>
</div>
   
<%}
else
	response.sendRedirect("index.jsp");
}
%>