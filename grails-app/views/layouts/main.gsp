<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title><g:layoutTitle/></title>
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
        <r:require modules="application, bootstrap"/>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>

        <sec:ifLoggedIn>

            <g:set var="currentUsername" value="${sec.loggedInUserInfo(field: "username")}"/>

            <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        <a class="brand" href="#"><g:message code="app.name"/></a>
                        <div class="nav-collapse collapse">
                            <p class="navbar-text pull-right">
                                <g:message code="logged.in.as" args="${[currentUsername]}"/>
                            </p>
                            <ul class="nav">
                                <li class="active"><a href="#">Home</a></li>
                                <li><a href="#about">About</a></li>
                                <li><g:link controller="logout"> logout</g:link></li>
                            </ul>
                        </div><!--/.nav-collapse -->
                    </div>
                </div>
            </div>

            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="span3">
                        <div class="well sidebar-nav">
                            <ul class="nav nav-list">
                                <li class="nav-header">User</li>
                                <li><g:link controller="user" action="list"> List all</g:link></li>
                                <li><g:link controller="user" action="create"> Add new user</g:link></li>
                                <li class="nav-header">Product</li>
                                <li><g:link controller="product" action="list"> List all my products</g:link></li>
                                <li><g:link controller="product" action="create"> Add new product to
                                my list</g:link>
                            </ul>
                        </div><!--/.well -->
                    </div><!--/span-->

                    <div class="container span9">
                        <g:layoutBody/>
                    </div>

                </div><!--/row-->

                <hr>

                <footer>
                    <p>&copy; Company 2012</p>
                </footer>

            </div>

            <g:javascript library="bootstrap"/>
            <r:layoutResources />

        </sec:ifLoggedIn>

        <sec:ifNotLoggedIn>
            <g:layoutBody/>
        </sec:ifNotLoggedIn>

	</body>
</html>
