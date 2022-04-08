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
	<title>New Ninja</title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="js/app.js"></script>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row pt-5">
			<h1>New Ninja</h1>
			<form:form class="form" action="/ninjas" method="post" modelAttribute="newNinja">
				<P>
					<form:label path="firstName">First Name:</form:label><br />
			        <form:input type="text" style="width:300px;" path="firstName"/>
			    </P>
			    
			    <P>
					<form:label path="lastName">Last Name:</form:label><br />
			        <form:input type="text" style="width:300px;" path="lastName"/>
			    </P>
			    
			    <P>
					<form:label path="age">Age:</form:label><br />
			        <form:input type="text" style="width:300px;" path="age"/>
			    </P>
			    
			    <P>
					<form:label path="dojo">Dojo Location:</form:label><br />
					<form:select path="dojo">
						<c:forEach var="dojoLocation" items="${dojos}">
							<option value="${dojoLocation.id}"><c:out value="${dojoLocation.location}"></c:out></option>
			        	</c:forEach>
			       	</form:select>
			    </P>
			    
				<div>
					<input type="submit" class="btn btn-info mt-4" value="Create"/>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>