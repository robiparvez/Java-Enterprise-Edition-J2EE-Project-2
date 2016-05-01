<%String name=(String)session.getAttribute("username");
    
	session.setAttribute("contact_status","true");	
    %>	
	
	<script type="text/javascript">

		function checklogin()
		{
			if(document.f2.username.value=="")
			{
				alert("plz enter username!");
				return false;
			}

			if(document.f2.password.value=="")
			{
				alert("plz enter password!");
				return false;
			}
		}
		
	</script>
	
	
<center>
<form name="f2" action="logController" onsubmit="return checklogin();">

	<br>
	<b>Username:</b> <input type="text" name="username" id="value1"/><br><br>
	<b>Password: </b>&nbsp;<input type="password" name="password" id="value2"/><br><br>
		
		
	<input type="submit" value="Submit"/>
	<input type="reset" value="Clear"/>
	</form>
</center>