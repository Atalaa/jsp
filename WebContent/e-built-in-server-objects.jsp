<html>
<body>
<!-- Built-in Server Objects -->

<h3>JSP Built-In Objects</h3>

<!-- What type of browser the user is using to access my JSP page -->
Request user agent browser:<%= request.getHeader("User-Agent") %>

<br/>

<!-- What language the client is making use of in their browser (en, fr, ...) -->
Request language: <%= request.getLocale() %>

</body>
</html>