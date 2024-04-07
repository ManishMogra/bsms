<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Address</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row p-3">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success	">Add Address</h3>

						<form action="">

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text"
										class="form-control" id="inputPassword4"
										placeholder="Enter Address">
								</div>

								<div class="form-group col-md-6">
									<label for="inputEmail4">Landmark</label> <input type="text"
										class="form-control" id="inputEmail4"
										placeholder="Enter Landmark">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<label for="inputPassword4">City</label> <input type="text"
										class="form-control" id="inputPassword4"
										placeholder="Enter City">
								</div>

								<div class="form-group col-md-4">
									<label for="inputEmail4">State</label> <input type="text"
										class="form-control" id="inputEmail4"
										placeholder="Enter State">
								</div>

								<div class="form-group col-md-4">
									<label for="inputPassword4">PinCode</label> <input type="text"
										class="form-control" id="inputPassword4"
										placeholder="Enter PinCode">
								</div>
							</div>
							<div class="text-center">
								<button class="btn btn-warning text-white">Add Address</button>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>