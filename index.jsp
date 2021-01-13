<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML >
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Echoing HTML Request Parameters</title>
</head>
     
<body>
<h1>Your Info</h1>
			<table style="with: 50%">
				<tr>
					<td>First Name</td>
					<td><input type="text" name="first_name" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="last_name" /></td>
				</tr>
				<tr>
					<td>UserName</td>
					<td><input type="text" name="username" /></td>
				</tr>
					<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" /></td>
				</tr>
				</table>
  <h2>Choose authors to see popular book:</h2>
  <form method="get">
    <input type="checkbox" name="author" value="Douglas Adams: The Hitchhiker's Guide to the Galaxy">Adams
    <input type="checkbox" name="author" value="Lois Lowry: The Giver">Lowry
    <input type="checkbox" name="author" value="J.K. Rowling: Harry Potter">Rowling
    <input type="checkbox" name="author" value="J.R.R. Tolkien: Lord of the Rings">Tolkien
	<input type="checkbox" name="author" value="George Orwell: 1984">Orwell
	<input type="checkbox" name="author" value="Mark Twain: The Adventures of Huckleberry Finn">Twain
	<input type="checkbox" name="author" value="Ken Kesey: One Flew Over the Cuckoo's Nest">Kesey
    <input type="submit" value="Query">
  </form>
  
  <% 
  String[] authors = request.getParameterValues("author");
  if (authors != null) {
  %>
    <h3>You have selected author(s):</h3>
    <ul>
      <%
      for (String author : authors) { 
      %>
        <li><%= author %></li>
      <%
      }
      %>
    </ul>
  <%
  }
  %>
  <br /><a href="<%= request.getRequestURI() %>">BACK</a> 
<body>
</html>