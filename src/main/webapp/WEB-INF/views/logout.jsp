<% session.invalidate(); %>
<%@ include file="header.jsp" %>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<a href="${pageContext.request.contextPath}/login">go back</a>
<%@ include file="footer.jsp" %>