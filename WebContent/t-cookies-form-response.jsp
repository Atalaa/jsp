<%@ page import="java.net.URLEncoder" %>

<html>
<!-- Sending Cookies to the Browser -->	
<!-- HTML form (browser) send the programming language over this JSP page -->	
<%
	//read form data for that favorite programming language
	String favLang = request.getParameter("fav_languages");
	
	//decode cookie data ... handle case of languages with spaces in them
	favLang = URLEncoder.encode(favLang, "UTF-8");		

  	//creating a new Cookie
   	Cookie cookie = new Cookie("myFavoriteLanguage", favLang);
   	
   	//setting how long a cookie will live on the web browser(client) in seconds 30*60=30min
   	cookie.setMaxAge(30*60);
   	
   	//sending the cookie back to the web browser(client)
   	response.addCookie(cookie);
%>
   	
<body>
	
	Thanks! We set your favorite language to: ${param.fav_languages}
	
	<br/><br/>
	
	<a href="u-cookies-homepage.jsp">Return to the home page.</a>
	
</body>
</html>












