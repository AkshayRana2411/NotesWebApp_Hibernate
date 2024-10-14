<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link href="CSS/style.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid p-0">
		<%@include file="navbar.jsp"%>
		<br>
	
		<!--  Add form-->
		<div class="container ">
			<h1>PLease fill your details</h1>
		<br>
			<form action="SaveNoteServlet" method="post">
				<div class="mb-3">
					<label for="title" class="form-label">Note Title</label> 
					<input
						required="required"
						name="title"
						type="text" class="form-control" id="title"
						aria-describedby="emailHelp">
					
				</div>
				<div class="mb-3">
					<label for="content" class="form-label">Note Content</label>
					<textarea  name="content" required="required" id="content" placeholder="Enter your content here" class="form-control" style="height: 300px"></textarea>
				</div>
				
				<button type="Add" class="btn btn-primary">Add</button>
			</form>
		</div>




	</div>





	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>