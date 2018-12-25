<%--
  Created by IntelliJ IDEA.
  User: shiva
  Date: 14/3/18
  Time: 12:52 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
    <asset:stylesheet src="buy.css" />

</head>

<body>
<br /><br />
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3" style="margin-left: 25%">
            <div class="panel panel-login" style="width: 60%;margin-left: 18%">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-6">
                          <a href="#" class="active" id="login-form-link" style="margin-left: 44%">Login</a>
                        </div>
                        <div class="col-xs-6">
                            <a href="#" id="register-form-link" style="padding-left: 70% !important;width:132% !important;">Register</a>
                        </div>
                    </div>
                    <hr>
                </div>
                <div class="panel-body" style="padding: 2%">
                    <div class="row">
                        <div class="col-lg-12">
                            <form id="login-form" action="#" method="post" role="form" style="display: block;">
                                <div class="form-group">
                                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                                </div>
                                <div class="form-group text-center">
                                    <input type="checkbox" tabindex="3" class="" name="remember" id="remember">
                                    <label for="remember"> Remember Me</label>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3"  style="margin-left: 25%">
                                            <g:link controller="utility" action="buyform" input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" >Log In</g:link>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <a href="#" tabindex="5" class="forgot-password">Forgot Password?</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <form id="register-form" action="#" method="post" role="form" style="display: none;">
                                <div class="form-group">
                                    <input type="text" name="username" id="regusername" tabindex="1" class="form-control" placeholder="Username" value="">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" id="regpassword" tabindex="2" class="form-control" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
                                </div>
                                <div class="form-group">
                                    <div class="row" style="margin-left: 33%">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br /><br /><br />
<asset:javascript src="jquery.min.js"/>
<asset:javascript src="popper.min.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="buy.js" />
</body>
</html>