<%@ include file="header.jsp" %>


		<c:url var="loginUrl" value="/login" />
		<div class="container">
		 
		<div class="col-sm-4"></div>
				<div class="col-sm-8">
			    
            <div class="panel panel-success" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form  name="f" action="${loginUrl}"
					method="POST" autocomplete="off" id="loginform" class="form-horizontal" role="form">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>		
                                        <input  type="text" class="form-control" id="username" name="ssoId" placeholder="username or email">                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input  type="password" class="form-control" id="password" name="password" placeholder="password">
                                    </div>
                                    

                                
                            <div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                        </label>
                                      </div>
                                    </div>


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                    <button type="submit" class="btn btn-success">Login  </button>
                                      <a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a>

                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                        
                                        </div>
                                    </div>
                                </div>    
                            </form>     



                        </div>                     
                    </div>  
        
        </div>
        <div class="col-sm-4"></div>
				<div class="col-sm-8">
        
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign Up</div>
                            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
                        </div>  
                        <div class="panel-body" >
                        <form:form method="post" action="useradd" commandName="employee"  id="registerform" cssClass="form-horizontal"> 
                            <div class="form-group">
                        <label class="col-sm-3 control-label">Full name</label>
                        <div class="col-sm-4">
                        <form:input path="firstName" id="firstName"  placeholder="First Name"/>
                        </div>
                        <div class="col-sm-4">
                        <form:input path="lastName" id="lastName" cssClass="form-control" placeholder="Last Name"/>
                           
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Username</label>
                        <div class="col-sm-5">
                        <form:input path="userName" id="userName" cssClass="form-control" placeholder="User Name"/>
                        
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Email address</label>
                        <div class="col-sm-5">
                        <form:input path="email" id="email" cssClass="form-control" placeholder="Email"/>
                            
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Password</label>
                        <div class="col-sm-5">
                        <form:password path="password" id="password" cssClass="form-control" placeholder="Last Name"/>
                            
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Gender</label>
                        <div class="col-sm-6">
                            <div class="radio">
                                <label>
                                <form:radiobutton path="gender" value="male" cssClass="form-control" /> Male
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                   <form:radiobutton path="gender" value="female" cssClass="form-control" /> Female 
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <form:radiobutton path="gender" value="other" cssClass="form-control" /> Other
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label" id="captchaOperation"></label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" name="captcha" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-6 col-sm-offset-3">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="agree" value="agree" /> Agree with the terms and conditions
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-9 col-sm-offset-3">
                            <button type="submit" class="btn btn-primary" name="signup" value="Sign up">Submit</button>
                        </div>
                    </div>
                        </form:form>
                            
                         </div>
                    </div>

               
               
                
         </div>
			   
   
         </div>


<%@ include file="footer.jsp" %>