<%--
  Created by IntelliJ IDEA.
  User: dhanendra
  Date: 18/3/17
  Time: 5:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Doctor</title>
	<g:set var="entityName" value="Doctor"/>
</head>
<body>
	<a href="#show-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			<li><g:form controller="logout"><g:submitButton name="Logout">Logout</g:submitButton></g:form></li>
		</ul>
	</div>
	<div id="show-patient" class="content scaffold-show" role="main">
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<ol class="property-list patient">

			<g:if test="${patientInstance?.patient_name}">
				<li class="fieldcontain">
					<span id="patient_name" class="property-label"><g:message code="patient.patient_name.label" default="Patient Name" /></span>

					<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${patientInstance}" field="patient_name"/></span>

				</li>
			</g:if>
			<g:if test="${patientInstance?.nok_name}">
				<li class="fieldcontain">
					<span id="nok_name" class="property-label"><g:message code="patient.nok_name.label" default="NOK Name" /></span>

					<span class="property-value" aria-labelledby="nok_name"><g:fieldValue bean="${patientInstance}" field="nok_name"/></span>

				</li>
			</g:if>
			<g:if test="${patientInstance?.address}">
				<li class="fieldcontain">
					<span id="address" class="property-label"><g:message code="patient.address.label" default="Address" /></span>

					<span class="property-value" aria-labelledby="address"><g:fieldValue bean="${patientInstance}" field="address"/></span>

				</li>
			</g:if>
			<g:if test="${patientInstance?.clinical_details}">
				<li class="fieldcontain">
					<span id="clinical_details" class="property-label"><g:message code="patient.clinical_details.label" default="Clinical Details" /></span>

					<span class="property-value" aria-labelledby="clinical_details"><g:fieldValue bean="${patientInstance}" field="clinical_details"/></span>

				</li>
			</g:if>
			<g:if test="${patientInstance?.diagnosis}">
				<li class="fieldcontain">
					<span id="diagnosis" class="property-label"><g:message code="patient.diagnosis.label" default="Diagnosis" /></span>

					<span class="property-value" aria-labelledby="diagnosis"><g:fieldValue bean="${patientInstance}" field="diagnosis"/></span>

				</li>
			</g:if>
			<g:if test="${patientInstance?.agent_name}">
				<li class="fieldcontain">
					<span id="agent_name" class="property-label"><g:message code="patient.agent_name.label" default="Agent Name" /></span>

					<span class="property-value" aria-labelledby="agent_name"><g:fieldValue bean="${patientInstance}" field="agent_name"/></span>

				</li>
			</g:if>
			<g:if test="${patientInstance?.visit_time}">
				<li class="fieldcontain">
					<span id="visit_time" class="property-label"><g:message code="patient.visit_time.label" default="Visit Time" /></span>

					<span class="property-value" aria-labelledby="visit_time"><g:fieldValue bean="${patientInstance}" field="visit_time"/></span>

				</li>
			</g:if>
			<g:remoteLink controller="doctor" action="start" params='["patientId":"${patientInstance?.id}"]'>Start</g:remoteLink>
			<g:remoteLink controller="doctor" action="stop" params='["patientId":"${patientInstance?.id}"]'>Stop</g:remoteLink>
		</ol>
	</div>
</body>
</html>