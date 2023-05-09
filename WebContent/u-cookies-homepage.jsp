<html>
<!-- Read the favorite programming language cookie with JSP -->
 <%
 	//setting default language, if no cookies set
 	String newFavLanguage = "Java";

 	//getting the cookies from the browser(client) request
 	Cookie[] cookies = request.getCookies();
 	
 	//find our favorite language cookie by checking if the Cookies array is not null (maybe they didn't have any to send over)
 	if(cookies != null){
 		for(Cookie item : cookies){
 			if(item.getName().equals("myFavoriteLanguage")){
 				newFavLanguage = item.getValue();
     			break;
     		}
     	}
 	}
%> 

<!-- Show a personalized page using the "newFavLanguage" -->
<body>

	<h1>HOME PAGE USING COOKIES</h1>
	
	<b>New Books for <%= newFavLanguage %>:</b>
	<ul>
		<li>Head First <%= newFavLanguage %></li>
		<li>Learn <%= newFavLanguage %> by doing</li>
	</ul>		
	<br/>
	
	<b>Latest News about <%= newFavLanguage %>:</b>
	<ul>
		<li><%= newFavLanguage %> is so great to learn</li>
		<li><%= newFavLanguage %> is too cool</li>
	</ul>		
	<br/>
	
	<b>Hot Jobs for <%= newFavLanguage %>:</b>
	<ul>
		<li><%= newFavLanguage %> Senior Developer wanted!</li>
		<li>Junior <%= newFavLanguage %> Developer wanted!</li>
	</ul>		
	<br/>
	<hr>
	
	<a href="s-cookies-form.html">Personalize this page</a>
	
</body>
</html>