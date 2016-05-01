<html>
	<head>
			
		<link href="css.css" rel="stylesheet" type="text/css"/>
		<jsp:include page="include/header.jsp"></jsp:include>
		
		<div id="content-container">
			<div id="content">

				<center><img src="images/Time-Check-Logo-Back.png" width="550" height="400px"/></center>
		</div>

		<br /><br />


<%@ taglib uri="WEB-INF/tlds/ajax-tags.tld"
           prefix="ajax" %>
	  
	<script src="<ajax:contextPath/>/scripts/ajax-tags.js"
        type="text/javascript"></script>
		
<body>
		<center>
		<form action="#">
			<fieldset>
			<%@ taglib tagdir="/WEB-INF/tags"
           prefix="ajax" %>
			  <legend><font color="red"><b>JSP_CUSTOM_TAG:<font color="green"><u>simpleAlert</u></legend>
			   <ajax:simpleAlert address="show-time" 
								 label="Show Time"/>
			</fieldset>
		<p/>
		</form>
		</center>

</body>

</html>
