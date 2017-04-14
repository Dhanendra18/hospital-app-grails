
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
	<div id="success-response" style="display: none">
		<div class="message" role="status" id="success-response-text"></div>
	</div>
	<ol class="property-list patient">

		<g:if test="${patientInstance?.name}">
			<li class="fieldcontain">
				<span id="name" class="property-label"><g:message code="patient.patient_name.label" default="Patient Name" /></span>

				<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${patientInstance}" field="name"/></span>

			</li>
		</g:if>
		<g:if test="${patientInstance?.nokName}">
			<li class="fieldcontain">
				<span id="nokName" class="property-label"><g:message code="patient.nok_name.label" default="NOK Name" /></span>

				<span class="property-value" aria-labelledby="nokName"><g:fieldValue bean="${patientInstance}" field="nokName"/></span>

			</li>
		</g:if>
		<g:if test="${patientInstance?.homeLocation}">
			<li class="fieldcontain">
				<span id="homeLocation" class="property-label"><g:message code="patient.address.label" default="Address" /></span>

				<span class="property-value" aria-labelledby="homeLocation"><g:fieldValue bean="${patientInstance}" field="homeLocation"/></span>

			</li>
		</g:if>
		<g:if test="${patientInstance?.clinicalDetails}">
			<li class="fieldcontain">
				<span id="clinicalDetails" class="property-label"><g:message code="patient.clinical_details.label" default="Clinical Details" /></span>

				<span class="property-value" aria-labelledby="clinicalDetails"><g:fieldValue bean="${patientInstance}" field="clinicalDetails"/></span>

			</li>
		</g:if>
		<g:if test="${patientInstance?.historyOfDisease}">
			<li class="fieldcontain">
				<span id="historyOfDisease" class="property-label"><g:message code="patient.diagnosis.label" default="Diagnosis" /></span>

				<span class="property-value" aria-labelledby="historyOfDisease"><g:fieldValue bean="${patientInstance}" field="historyOfDisease"/></span>

			</li>
		</g:if>
		<g:if test="${patientInstance?.createdBy?.name}">
			<li class="fieldcontain">
				<span id="agent_name" class="property-label"><g:message code="patient.agent_name.label" default="Agent Name" /></span>

				<span class="property-value" aria-labelledby="agent_name">${patientInstance.createdBy.name}</span>

			</li>
		</g:if>
		<g:if test="${patientInstance?.visitTime}">
			<li class="fieldcontain">
				<span id="visitTime" class="property-label"><g:message code="patient.visit_time.label" default="Visit Time" /></span>

				<span class="property-value" aria-labelledby="visitTime"><g:fieldValue bean="${patientInstance}" field="visitTime"/></span>

			</li>
		</g:if>
		<g:remoteLink id="start-button" controller="doctor" action="start" params='["aiBookingId":"${patientInstance?.aiBookedId}"]' onSuccess="visitStarted()">Start</g:remoteLink>
		<g:remoteLink id="stop-button" style="display: none" controller="doctor" action="stop" params='["aiBookingId":"${patientInstance?.aiBookedId}"]'  onSuccess="showDialog()">Stop</g:remoteLink>
	</ol>
	<div id="id_commentBox" style="display: none">
		<div class="aligncenter">
			<g:form action="finish" >
				<fieldset class="finish">
					<input type="text" name="comment" placeholder="Comment"/>
					<input type="hidden" name="aiBookingId" value="${patientInstance?.aiBookedId}"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="submit" value="${message(code: 'default.button.Submit.label', default: 'Submit')}" />
				</fieldset>
			</g:form>
		</div>
	</div>
</div>
<script>
	function showDialog() {
		$("#id_commentBox").show();
		$("#stop-button").hide();
	}
	function visitStarted() {
		$("#success-response-text").html("Visit has started");
		$("#success-response").show();
		$("#start-button").hide();
		$("#stop-button").show();
	}
</script>
</body>
</html>