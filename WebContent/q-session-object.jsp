<%@ page import="java.util.*" %>

<html>
<body>

	<!-- Step1: create HTML Form -->
	<form action="q-session-object.jsp">
		Add new item: <input type="text" name="item" />
		<button type="submit">Submit</button>
	</form>
		
		
	<!-- Step2: add new item to the list -->
	<%		
		// get the TO DO items from the session
		List<String> items = (List<String>) session.getAttribute("myToDoList");
		
		// if the TO DO items doesn't exist, then create a new list
		if(items == null){
			items = new ArrayList<String>();
			session.setAttribute("myToDoList", items); // adds list to the session
		}
		
		// see if there is form data to add
		String itemToAdd = request.getParameter("item");
		if(itemToAdd != null){
			items.add(itemToAdd);
			response.sendRedirect("q-session-object.jsp"); // fix duplicate submission item on refresh
		}
		
	%> 
		
		
	<!-- Step3: display all To Do item from session -->
	<hr>
	<h1>To Do List items:</h1>
	
	<ol>
		<%
			for(String el : items){
				out.println("<li>" + el + "</li>");
			}
		%>
	</ol>
	
</body>
</html>