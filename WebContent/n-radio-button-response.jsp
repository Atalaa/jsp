<html>
<body>

	The client First Name and Last Name is ${param.first_name}, ${param.last_name}
	<br/><br/>
	His Favorite Programming Language is: <%= request.getParameter("fav_language") %>
	<br/><br/>
	His Favorite Programming Language is: ${param.fav_language}
</body>
</html>