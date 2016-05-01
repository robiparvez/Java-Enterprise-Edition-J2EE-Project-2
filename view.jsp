<%String name=(String)session.getAttribute("username");

if(name==null)
{
    response.sendRedirect("index.jsp");
}
else
{if(!name.equals("admin"))
{
%>
<div id="container">
<%@page import="com.connect.dbConnect"%>
<%@page import="java.sql.*"%>

<link href="css.css" rel="stylesheet" type="text/css">
<jsp:include page="include/home-header.jsp"></jsp:include>
<div id="content-container">
<div id="content">

<center><br/><h2>View Account :-</h2><br/><br/>

    <%
    try
    {
    Connection con=dbConnect.getConnect();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from record where username='"+name+"'");
	    
	while(rs.next())
	{%>
	<table cellpadding="10" border="1" >
        <tr><td><b>Username</b></td><td><%=rs.getString(1)%></td></tr>
        <tr><td><b>Password</b></td><td><%=rs.getString(2)%></td></tr>
        <tr><td><b>Amount</b></td><td><%=rs.getString(3)%></td></tr>
        <tr><td><b>Address</b></td><td><%=rs.getString(4)%></td></tr>
        <tr><td><b>Phone No</b></td><td><%=rs.getString(5)%></td></tr>
		
	</table>
		         
    <%}
    }catch(Exception e)
    {
    	response.sendRedirect("error.jsp");
    }
    %>
</center>
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