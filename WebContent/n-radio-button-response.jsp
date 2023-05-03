<html>
<body>

	The client First Name and Last Name is ${param.first_name}, ${param.last_name}
	<br/><br/>
	His Favorite Programming Language is: 
	
	<%
		String lang = request.getParameter("fav_language");
    	if (lang != null) {
			out.println(lang);
		}
	%>
		
	<br/><br/>
	His Favorite Programming Language is: ${param.fav_language}
</body>
</html>