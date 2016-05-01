<html>
	<head>
			

	
		<link href="css.css" rel="stylesheet" type="text/css"/>
		<jsp:include page="include/header.jsp"></jsp:include>
		
		

		
		<div id="content-container">
			<div id="content">

				<center><img src="images/contact-us-logo.png" width="550" height="400px"/></center>
		</div>
				<br /><br />


		<div id="mm">
		<button type="button" onclick="loadDoc1()">SHOW OFFICE NO:</button>
		<br /><br />

		<div id="demo1">	</div>
	
		<script>
		function loadDoc1() 
		{
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() 
		  {
			if (xhttp.readyState == 4 && xhttp.status == 200) 
			{
			  document.getElementById("demo1").innerHTML = xhttp.responseText;
			}
		  };
		  xhttp.open("GET", "contact_no.html", true);
		  xhttp.send();
		}
		</script>
		</div>
		
		
		
		<br /><br />
		<br /><br />
		
		
		<div id="ss">
		<button type="button" onclick="loadDoc2()">SHOW MAIL ADDRESS:</button>
		<br /><br />
		
			<div id="demo2"></div>
			
			<script>
			function loadDoc2() 
			{
			  var xhttp1 = new XMLHttpRequest();
			  xhttp1.onreadystatechange = function() 
			  {
				if (xhttp1.readyState == 4 && xhttp1.status == 200) 
				{
				  document.getElementById("demo2").innerHTML = xhttp1.responseText;
				}
			  };
			  xhttp1.open("GET", "mail_add.html", true);
			  xhttp1.send();
			}
			</script>
		</div>
</html>
        