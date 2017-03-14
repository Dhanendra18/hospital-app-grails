<%--
  Created by IntelliJ IDEA.
  User: dhanendra
  Date: 13/3/17
  Time: 8:59 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="main">
	<title>Welcome</title>
</head>
<body>
<a href="#list-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
	<ul>
		<li><g:link action="agent"><g:message code="title.agent" default="Agent" /></g:link></li>
		<li><g:link action="hcp"><g:message code="title.hcp" default="HCP" /></g:link></li>
		<li><g:link controller="patient" action="index"><g:message code="title.patient" default="Patient" /></g:link></li>
		<li><g:link action="agent"><g:message code="title.visits" default="Visits" /></g:link></li>
		<li><g:link action="agent"><g:message code="title.service.package" default="Service Package" /></g:link></li>
		<li><g:link action="agent"><g:message code="title.billing" default="Billing" /></g:link></li>
		<li><g:link action="agent"><g:message code="title.payment" default="Payment" /></g:link></li>
		<li><g:link controller="registration" action="create"><g:message code="title.registration" default="Registration" /></g:link></li>
		<li><g:link action="agent"><g:message code="title.import" default="Import" /></g:link></li>
		<li><g:form controller="logout"><g:submitButton name="Logout">Logout</g:submitButton></g:form></li>
	</ul>
</div>

</body>
</html>