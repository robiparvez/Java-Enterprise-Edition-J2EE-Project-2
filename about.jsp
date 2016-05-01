<div id="container">
    <%String name=(String)session.getAttribute("username");%>
<link href="css.css" rel="stylesheet" type="text/css"/>
<jsp:include page="include/header.jsp"></jsp:include>

<div id="content-container">
<div id="content">
<marquee><h2 style="color: red;"><i>
            <%
            if(name==null)
            {%>
                - Please Login -
            <%}
            else
            {%>
            	- Welcome <%=name%> -
            <%}%>
            </i></h2>
</marquee>

<br/><br/>
<p><b>* ONLINE BANKING IS THE PRACTICE OF MAKING BANK TRANSACTIONS<br/> 
OR PAYING BILLS VIA THE INTERNET.
<br/>
</br>* BANKING ONLINE ALLOWS A CUSTOMER TO MAKE DEPOSITS, WITHDRAWALS, TRANSFERS <br/>WITH THE CLICK OF A MOUSE.
</b></p>
</div>

<div id="aside">
    <%
    if(name==null)
    {%>
<h2>Login :-</h2>
<jsp:include page="login.jsp"></jsp:include>
    <%}
    else
      {%>
       
    <%}%>
</div>

</div>
<jsp:include page="include/footer.jsp"></jsp:include>

</div>
