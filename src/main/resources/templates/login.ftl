<html>
<head>
    <!--link rel="stylesheet" href="css/wro.css"/-->
</head>
<body>
<#if RequestParameters['error']??>
<div class="alert alert-danger">
    There was a problem logging in. Please try again.
</div>
</#if>
<div class="container">
    <form role="form" action="login" method="post">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" class="form-control" id="username" name="username"/>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password"/>
        </div>
        <input type="hidden" id="csrf_token" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<div class="container">
    <div>
        With Facebook: <a href="/auth/facebook">click here</a>
    </div>
    <div>
        With Github: <a href="/auth/github">click here</a>
    </div>
</div>
<!--script src="js/wro.js" type="text/javascript"></script-->
</body>
</html>