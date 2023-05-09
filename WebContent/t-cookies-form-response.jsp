<html>
		
<%
	//read form data
	String favLang = request.getParameter("fav_languages");

   	/* if (lang != null) {
		out.println(lang);
	} */
   	
   	//creating a new Cookie
   	Cookie cookie = new Cookie("myFavoriteLanguage", favLang);
   	
   	//setting how long a cookie will live on the web browser(client) in seconds 30*60=30min
   	cookie.setMaxAge(30*60);
   	
   	//sending the cookie to the web browser(client)
   	response.addCookie(cookie);
%>
   	
<body>
	
	Thanks! We set your favorite language to: ${param.fav_languages}
	
	<br/><br/>
	
	<a href="u-cookies-homepage.jsp">Return to the home page.</a>
	
</body>
</html>












