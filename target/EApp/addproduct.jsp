<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="jscss.jsp"%>
</head>
<body>
<div class="container">
	<%@include file="navbar.jsp"%>
	<br> <h2>Provide the details to add product.</h2>
	<form action="SaveProductServlet" method="post">
		<div class="mb-3">
			<label for="content" class="form-label">Name
			</label> <input name="name" type="text" class="form-control"
				id="content" aria-describedby="emailHelp" required>
		</div>
		<div class="mb-3">
			<label for="content" class="form-label">Price</label>
			<input name="price" type="text" class="form-control"
				id="content" required>
		</div>
		<div class="mb-3">
			<label for="content" class="form-label">Brand</label>
			<input name="brand" type="text" class="form-control"
				id="content" required>
		</div>
		
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>

</body>
</html>