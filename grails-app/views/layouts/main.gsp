<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title><g:layoutTitle default="Grails"/></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="${assetPath(src: 'medley-mart.ico')}" type="image/x-icon">
	<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
	<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<asset:stylesheet src="application.css"/>
	<asset:javascript src="application.js"/>
	<g:layoutHead/>
</head>
<body style="background-color: #fafafa ">
	<nav style="background-color: #11abd6">
		<div class="container">
			<div class="nav-wrapper">
				<a href="${createLink(uri: '/')}" class="brand-logo">Medley mart</a>
				<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
				<ul id="nav-mobile" class="right hide-on-med-and-down">
					<sec:ifAllGranted roles="admin">
						<li class="${actionName == 'showAgent'? 'active':''}"><g:link controller="admin" action="showAgent"><g:message code="title.agent" default="Agent" /></g:link></li>
						<li class="${actionName == 'showHCP'? 'active':''}"><g:link controller="admin" action="showHCP"><g:message code="title.hcp" default="HCP" /></g:link></li>
						<li class="${controllerName == 'patient'? 'active':''}"><g:link controller="patient" action="index"><g:message code="title.patient" default="Patient" /></g:link></li>
						<li><g:link controller="home" action="agent"><g:message code="title.visits" default="Visits" /></g:link></li>
						<li><g:link controller="home" action="agent"><g:message code="title.service.package" default="Service Package" /></g:link></li>
						<li><g:link controller="home" action="agent"><g:message code="title.billing" default="Billing" /></g:link></li>
						<li><g:link controller="home" action="agent"><g:message code="title.payment" default="Payment" /></g:link></li>
						<li class="${controllerName == 'registration'? 'active':''}"><g:link controller="registration" action="create"><g:message code="title.registration" default="Registration" /></g:link></li>
						<li><g:link controller="home" action="agent"><g:message code="title.import" default="Import" /></g:link></li>
					</sec:ifAllGranted>
					<sec:ifAnyGranted roles="agent">
						<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
						<li><g:link class="create" action="create"><g:message code="create.new.patient" args="[entityName]" /></g:link></li>
					</sec:ifAnyGranted>
					<sec:ifLoggedIn>
						<li><g:form controller="logout"><g:submitButton class="btn " name="Logout">Logout</g:submitButton></g:form></li>
					</sec:ifLoggedIn>
				</ul>
				<ul class="right side-nav" id="mobile-demo">
					<sec:ifAllGranted roles="admin">
						<li class="${actionName == 'showAgent'? 'active':''}"><g:link controller="admin" action="showAgent"><g:message code="title.agent" default="Agent" /></g:link></li>
						<li class="${actionName == 'showHCP'? 'active':''}"><g:link controller="admin" action="showHCP"><g:message code="title.hcp" default="HCP" /></g:link></li>
						<li class="${controllerName == 'patient'? 'active':''}"><g:link controller="patient" action="index"><g:message code="title.patient" default="Patient" /></g:link></li>
						<li><g:link controller="home" action="agent"><g:message code="title.visits" default="Visits" /></g:link></li>
						<li><g:link controller="home" action="agent"><g:message code="title.service.package" default="Service Package" /></g:link></li>
						<li><g:link controller="home" action="agent"><g:message code="title.billing" default="Billing" /></g:link></li>
						<li><g:link controller="home" action="agent"><g:message code="title.payment" default="Payment" /></g:link></li>
						<li class="${controllerName == 'registration'? 'active':''}"><g:link controller="registration" action="create"><g:message code="title.registration" default="Registration" /></g:link></li>
						<li><g:link controller="home" action="agent"><g:message code="title.import" default="Import" /></g:link></li>
					</sec:ifAllGranted>
					<sec:ifAnyGranted roles="agent">
						<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
						<li><g:link class="create" action="create"><g:message code="create.new.patient" args="[entityName]" /></g:link></li>
					</sec:ifAnyGranted>
					<sec:ifLoggedIn>
						<li><g:form controller="logout"><g:submitButton class="btn " name="Logout">Logout</g:submitButton></g:form></li>
					</sec:ifLoggedIn>
				</ul>
			</div>
		</div>
	</div>
	</nav>
<div class="container">
	<g:layoutBody/>
	<div class="footer" role="contentinfo"></div>
	<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
</div>
<script>
	// init select box
	$('select').material_select();
	// init nav bar collapsable
	$(".button-collapse").sideNav();
</script>
</body>
</html>
