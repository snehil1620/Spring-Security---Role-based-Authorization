<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
	<title>Snehil Company Home Page</title>
</head>

<body>

	<h2>Snehil Company Home Page</h2>
	<hr>
	<p style="height: 40px; ">
	Welcome to the Snehil company home page!
	</p>
	
	<hr>
	
	<!-- Display username and roles -->
	<p>
		User: <security:authentication property="principal.username"/>
		<br><br>
		Role(s): <security:authentication property="principal.authorities"/>
	</p>
	
	<!-- Add a link to point to /leaders ... this is for managers -->
	<security:authorize access="hasRole('MANAGER')">
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
		(Only for Manager peeps)
	</p>
	</security:authorize>
	
	<!-- Add a link to /systems ... for admins only -->
	<security:authorize access="hasRole('ADMIN')">
	<p>
		<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
		(Only for Admin peeps)
	</p>
	</security:authorize>
	<hr><br><br>
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	
		<input type = "submit" value="Logout" style="width: 166px; height: 43px; "/>
	</form:form>

</body>

</html>