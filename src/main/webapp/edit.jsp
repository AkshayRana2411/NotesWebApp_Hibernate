<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link href="CSS/style.css" rel="stylesheet">
</head>
<body>
	<div class="container-fluid p-0">
		<%@ include file="navbar.jsp"%>
		
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryProvider.getFactory().openSession();
		Note note = s.get(Note.class, noteId);
		%>
		<br>
		
		<div class="container">
			<h1>Edit your note</h1>
			<form action="Update" method="post">
			<input value="<%= note.getId()%>" name="note_id" type="hidden" />
				<div class="mb-3">
					<label for="title" class="form-label">Note Title</label> <input
						required="required" name="title" type="text" class="form-control"
						id="title" aria-describedby="emailHelp" value="<%=note.getTitle() %>">

				</div>
				<div class="mb-3">
					<label for="content" class="form-label">Note Content</label>
					<textarea name="content" required="required" id="content"
						placeholder="Enter your content here" class="form-control"
						style="height: 300px"> <%=note.getContent()%></textarea>
				</div>

				<button type="Add" class="btn btn-success">Save note</button>
			</form>
		</div>
	</div>
		
		
	</div>


</body>
</html>