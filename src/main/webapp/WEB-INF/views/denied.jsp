<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
	<body>
	
		<h1 id="banner">Unauthorized Access !!</h1>
	
		<hr />
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<c:if test="${not empty error}">
		
			<div style="color:red">
				Your fake login attempt was bursted, dare again !!<br /> 
				Caused : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			</div>
		</c:if>
	
		<p class="message">Access denied!</p>
		<a href="/Spring3HibernateIntegration/login">Go back to login page</a> 
	</body>
</html>