<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<title>Show Location</title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="js/app.js"></script>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
</head>
<body>
	<div class="container pt-5">
 		<div class="row justify-content-between">
			<h1><c:out value="${dojo.location}"></c:out> location Ninjas</h1>
			<table style="width:50%" class="table table-striped mt-3">
				<thead>
					<tr>
				        <th>First Name</th>
				        <th>Last Name</th>
				        <th>Age</th>
			        </tr>
			    </thead>
				<tbody>
					<tr>
					    <td><c:out value="${ninja.firstName}"></c:out></td>
					    <td><c:out value="${ninja.lastName}"></c:out></td>
					    <td><c:out value="${ninja.age}"></c:out></td>
					</tr>
   				</tbody>
			</table>
		</div>
	</div>
</body>
</html>