<%
	String name=(String)session.getAttribute("username");
    String s=(String)session.getAttribute("contact_status");
%>

<div id="container">
   
<link href="css.css" rel="stylesheet" type="text/css"/>

<jsp:include page="include/header.jsp"></jsp:include>
<%
	if(s.equals("null")) 
	{
	%>
	<center><h2 style="color: red;">Message Sent!!</h2><br/>
	<%
	session.setAttribute("contact_status","no_status");
	}
	
%>

