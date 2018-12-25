<html>
<head>
    <meta name="layout" content="customLayout"/>
</head>

<body>

<div class="container" style="margin-top: 6%;padding-bottom: 6%;">
    <div class="row">
        <div class="col-3">
        </div>


        <div class="col-6">
            <g:if test='${flash.message}'>
                <div class="login_message">${flash.message}</div>
            </g:if>

            <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">
                <p>
                    <label for="username"><g:message code='springSecurity.login.username.label'/>:</label>
                    <input type="text" class="form-control" name="${usernameParameter ?: 'username'}" id="username"/>
                </p>

                <p>
                    <label for="password"><g:message code='springSecurity.login.password.label'/>:</label>
                    <input type="password" class="form-control" name="${passwordParameter ?: 'password'}" id="password"/>
                </p>

                <p id="remember_me_holder" style="display: none;">
                    <input type="checkbox" class="form-control" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                    <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
                </p>

                <p>
                    <input type="submit" id="submit" class="btn btn-warning btn-block" value="${message(code: 'springSecurity.login.button')}"/>
                </p>
                <i class="far fa-user-plus"></i>&nbsp;&nbsp;<g:link controller="utility" action="register" style="color: blue;">Register</g:link>
            </form>
        </div>
        <div class="col-3">
        </div>

    </div>
</div>

<script>
    (function() {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>
</body>
</html>
