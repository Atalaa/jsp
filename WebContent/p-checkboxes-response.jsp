<html>
<body>
<!-- Here we can't use ${param} 
	 because we we will get a lot of different values back in an array of strings.
	 So I use the request object -->
	 
	The client First Name and Last Name is ${param.first_name}, ${param.last_name}
	<br/><br/>
	His Favorite Programming Language is: 
	
	<!-- Display list of "fav_language" -->
	<ul>
		<%	
			String[] langs = request.getParameterValues("fav_language");
			if (langs != null) {
				for(String language : langs){
					out.println("<li>" + language + "</li>");
				}
			}
		%>
	</ul>
	
		
</body>
</html>