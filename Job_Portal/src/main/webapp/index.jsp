<%@page import="com.db.DBconnect"%>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/jobs 1.jpg");
	width: 100%;
	height: 85vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-dark p-4">
				<i class="fa-solid fa-book"></i>Online Job Portal
			</h1>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>

