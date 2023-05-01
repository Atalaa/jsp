<html>
<body>
<!-- JSP declarations -->
 
<%! 
	String lowerCase(String name){
		return name.toLowerCase();
	}
%>
Lower case "HELLO WORLD": <%= lowerCase("HELLO WORLD") %>
</body>
</html>