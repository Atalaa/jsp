<%@ page import="com.learningjava.jsp.*" %>

<html>
<body>

<!-- Minimized the scriptlets and declarations in a JSP file. I changed the code into a separate Java class 
	that contains my business logic and the JSP file can simply make a call to it.
	Make use of MVC -->
 
Lower case "I CALLED A JAVA CLASS": <%= MyUtils.lowerCase("I CALLED A JAVA CLASS") %>

</body>
</html>