<%@ page import="java.util.*" %> <!-- We make use of the List and ArrayList from this package. -->

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
	
		/*	I used getAttribute first because,
			I first retrieve the session and check to see if it has a list. 
			If it doesn't have a list then we create one. 
			Next we add the desired item to the list. 		
		
			This section of code access the JSP session object. 
			The session object is unique for each web user. 
			We attempt to get the TO DO items from the session. 
			We make use of the attribute name "myToDoList". 
			This is basically the key/label to look up data from the session. 
			
			The session.getAttribute method will always return something of type java.lang.Object. 
			We downcast this to List<String> because we are making use of strings to keep track of our to do items.

			This is assigned to the variable "items". 
			This variable holds an object reference to the data that we retrieved from the session object. 
			We can use this variable later in the program to add items and also display items.
		*/
		
		
// if the TO DO items doesn't exist, then create a new list
		if(items == null){
			items = new ArrayList<String>();
			session.setAttribute("myToDoList", items); // adds list to the session
		}
		
		/* 	This section of code checks to see if the TO DO items doesn't exist. 
			It checks the variable "items" to see if it is null. 
			If "items" is null, then that means the TO DO items do not exist. 
			Think of this as like a shopping cart .... your cart doesn't exist.

			As a result, we need to create a new list and assign to items.

			Then we place the items in the session. 
			We make use of the name-value pair.  
			The attribute name is "myToDoList" and the object is the "items" variable. 
		*/
		
		
// see if there is form data to add
		String itemToAdd = request.getParameter("item");
		if( (itemToAdd != null) && (!itemToAdd.trim().equals(""))){ // fix empty string submission item
			items.add(itemToAdd);
			response.sendRedirect("q-session-object.jsp"); // fix duplicate submission item on refresh
		}
		
		/*  This section of code checks to see if there is form data to add. 
			It reads the form data with the request.getParameter("item").  
			This is assigned to a variable. 
			If the itemToAdd variable is not null, then that means the user entered some data. 
			Then we add itemToAdd to our "items" array list.

			Since we're using object references, 
			remember that "items" is a variable that holds a reference to an object / points to the SAME object in the session.. 
			Then it points to the same area of memory that is used by the session (in Tomcat).
			So in effect, the users's session has now been updated with this new entry.
			
			!itemToAdd.trim().equals(""): prevents the user from adding empty strings to the ToDo list.
			It checks to make sure the itemToAdd is not equal to null and make sure itemToAdd is not an empty string.
			I need to trim() the string to remove whitespace from beginning and end of string.
		*/
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
	
	<br/><br/>
	
	<a href="r-clear-session.jsp">Clear Session Data</a>
	
</body>
</html>