<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<!-- JQuery -->



<!-- Bootstrap  -->
<spring:url value="/resources/css/bootstrap.css" var="bootstrapminCSS"></spring:url>
<link href="${bootstrapminCSS}" rel="stylesheet" />

<!-- Form Validation -->
<spring:url value="/resources/css/formValidation.min.css" var="formCSS"></spring:url>
<link href="${formCSS}" rel="stylesheet">

<spring:url value="/resources/js/jquery.min.js" var="jqueryminJS"></spring:url>
<script src="${jqueryminJS}"></script>

<!-- Bootstrap JS -->
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapminJS"></spring:url>
<script src="${bootstrapminJS}"></script>

<!-- form validation -->

<spring:url value="/resources/js/formValidation.min.js" var="formJS"></spring:url>
<script type="text/javascript" src="${formJS}"></script>


<spring:url value="/resources/js/bootstrap.js" var="bootstrapJS"></spring:url>
<script src="${bootstrapJS}"></script>

<!-- custom  -->
<spring:url value="/resources/js/test.js" var="testJS"></spring:url>
<script src="${testJS}" type="text/javascript"></script>



<!-- Custom CSS -->
 <spring:url value="/resources/css/mystyle.css" var="mystyleCSS"></spring:url>
<link href="${mystyleCSS}" rel="stylesheet" />  

<title>The include Directive Example</title>
</head>
<body >

    <nav class="navbar navbar-inverse">
      <!-- and toggle get grouped for better mobile display -->
   
  
   <div>
      <div class="container">
            <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span> 
          <span class="icon-bar"></span>
        </button> 
       
        <a class="navbar-brand"  href="../">Anitha Avil Mill</a>
        
        
      </div>
      <div class="collapse navbar-collapse navbar-ex1-collapse">
      <security:authorize access="hasRole('ROLE_USER')">
      
         <ul class="nav navbar-nav ">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
            <ul class="dropdown-menu inverse">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
              <li><a href="#">Separated link</a></li>
            </ul>
          </li>
          <li><a href="#">Something else here</a></li>
          <li><a href="#">Separated link</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
            <ul class="dropdown-menu inverse">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
              <li><a href="#">Separated link</a></li>
            </ul>
          </li>
       
        </ul>
      </security:authorize>
     
            <ul class="nav navbar-nav navbar-right">
      <li><a href="#" ><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#" ><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
      </div>
      
      </div>
</div>


    </nav>

