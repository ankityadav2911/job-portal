<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Job</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-sucess">
						<i class="fa-solid fa-people-group"></i>

						<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${succMsg }</div>
							<c:remove var="succMsg" />
						</c:if>

						<h5>Add Jobs</h5>
					</div>
					<form action="add_job" method="post">
						<div class="form-group">
							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected>Choose...</option>
									<option value="Patna">Patna</option>
									<option value="Delhi">Delhi</option>
									<option value="Pune">Pune</option>
									<option value="Mumbai">Mumbai</option>
									<option value="Gujrat">Gujrat</option>
									<option value="Banglore">Banglore</option>
									<option value="Ranchi">Ranchi</option>
									<option value="Chennai">Chennai</option>
									<option value="Hudrabad">Hydrabad</option>
									<option value="Noida">Noida</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label> <select name="category"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected>Choose...</option>
									<option value="IT">IT</option>
									<option value="Devloper">Developer</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>
									<option value="BPO">BPO</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="status">
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label>Enter Description</label>
							<textarea rows="6" cols="" name="desc" class="form-control"></textarea>
						</div>
						<button class="btn btn-sucess btn-primary">Publish Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>