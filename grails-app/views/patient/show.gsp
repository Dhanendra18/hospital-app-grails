
<%@ page import="com.hospital.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="create.new.patient" args="[entityName]" /></g:link></li>
				<li><g:form controller="logout"><g:submitButton name="Logout">Logout</g:submitButton></g:form></li>
			</ul>
		</div>
		<div id="show-patient" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list patient">
			
				<g:if test="${patientInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="patient.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${patientInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.surname}">
				<li class="fieldcontain">
					<span id="surname-label" class="property-label"><g:message code="patient.surname.label" default="Surname" /></span>
					
						<span class="property-value" aria-labelledby="surname-label"><g:fieldValue bean="${patientInstance}" field="surname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="patient.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${patientInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.serviceRequired}">
				<li class="fieldcontain">
					<span id="serviceRequired-label" class="property-label"><g:message code="patient.serviceRequired.label" default="Service Required" /></span>
					
						<span class="property-value" aria-labelledby="serviceRequired-label"><g:fieldValue bean="${patientInstance}" field="serviceRequired"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.diagnosis}">
				<li class="fieldcontain">
					<span id="diagnosis-label" class="property-label"><g:message code="patient.diagnosis.label" default="Diagnosis" /></span>
					
						<span class="property-value" aria-labelledby="diagnosis-label"><g:fieldValue bean="${patientInstance}" field="diagnosis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.contactNumber}">
				<li class="fieldcontain">
					<span id="contactNumber-label" class="property-label"><g:message code="patient.contactNumber.label" default="Contact Number" /></span>
					
						<span class="property-value" aria-labelledby="contactNumber-label"><g:fieldValue bean="${patientInstance}" field="contactNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="patient.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${patientInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.source}">
				<li class="fieldcontain">
					<span id="source-label" class="property-label"><g:message code="patient.source.label" default="Source" /></span>
					
						<span class="property-value" aria-labelledby="source-label"><g:fieldValue bean="${patientInstance}" field="source"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.keyword}">
				<li class="fieldcontain">
					<span id="keyword-label" class="property-label"><g:message code="patient.keyword.label" default="Keyword" /></span>
					
						<span class="property-value" aria-labelledby="keyword-label"><g:fieldValue bean="${patientInstance}" field="keyword"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.nokName}">
				<li class="fieldcontain">
					<span id="nokName-label" class="property-label"><g:message code="patient.nokName.label" default="Nok Name" /></span>
					
						<span class="property-value" aria-labelledby="nokName-label"><g:fieldValue bean="${patientInstance}" field="nokName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.nokSurname}">
				<li class="fieldcontain">
					<span id="nokSurname-label" class="property-label"><g:message code="patient.nokSurname.label" default="Nok Surname" /></span>
					
						<span class="property-value" aria-labelledby="nokSurname-label"><g:fieldValue bean="${patientInstance}" field="nokSurname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.nokRelation}">
				<li class="fieldcontain">
					<span id="nokRelation-label" class="property-label"><g:message code="patient.nokRelation.label" default="Nok Relation" /></span>
					
						<span class="property-value" aria-labelledby="nokRelation-label"><g:fieldValue bean="${patientInstance}" field="nokRelation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.nokContactNo}">
				<li class="fieldcontain">
					<span id="nokContactNo-label" class="property-label"><g:message code="patient.nokContactNo.label" default="Nok Contact No" /></span>
					
						<span class="property-value" aria-labelledby="nokContactNo-label"><g:fieldValue bean="${patientInstance}" field="nokContactNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.nokEmail}">
				<li class="fieldcontain">
					<span id="nokEmail-label" class="property-label"><g:message code="patient.nokEmail.label" default="Nok Email" /></span>
					
						<span class="property-value" aria-labelledby="nokEmail-label"><g:fieldValue bean="${patientInstance}" field="nokEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.homeLocation}">
				<li class="fieldcontain">
					<span id="homeLocation-label" class="property-label"><g:message code="patient.homeLocation.label" default="Home Location" /></span>
					
						<span class="property-value" aria-labelledby="homeLocation-label"><g:fieldValue bean="${patientInstance}" field="homeLocation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.homePin}">
				<li class="fieldcontain">
					<span id="homePin-label" class="property-label"><g:message code="patient.homePin.label" default="Home Pin" /></span>
					
						<span class="property-value" aria-labelledby="homePin-label"><g:fieldValue bean="${patientInstance}" field="homePin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.homeState}">
				<li class="fieldcontain">
					<span id="homeState-label" class="property-label"><g:message code="patient.homeState.label" default="Home State" /></span>
					
						<span class="property-value" aria-labelledby="homeState-label"><g:fieldValue bean="${patientInstance}" field="homeState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.officeLocation}">
				<li class="fieldcontain">
					<span id="officeLocation-label" class="property-label"><g:message code="patient.officeLocation.label" default="Office Location" /></span>
					
						<span class="property-value" aria-labelledby="officeLocation-label"><g:fieldValue bean="${patientInstance}" field="officeLocation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.officePin}">
				<li class="fieldcontain">
					<span id="officePin-label" class="property-label"><g:message code="patient.officePin.label" default="Office Pin" /></span>
					
						<span class="property-value" aria-labelledby="officePin-label"><g:fieldValue bean="${patientInstance}" field="officePin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.officeState}">
				<li class="fieldcontain">
					<span id="officeState-label" class="property-label"><g:message code="patient.officeState.label" default="Office State" /></span>
					
						<span class="property-value" aria-labelledby="officeState-label"><g:fieldValue bean="${patientInstance}" field="officeState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.clinicalDetails}">
				<li class="fieldcontain">
					<span id="clinicalDetails-label" class="property-label"><g:message code="patient.clinicalDetails.label" default="Clinical Details" /></span>
					
						<span class="property-value" aria-labelledby="clinicalDetails-label"><g:fieldValue bean="${patientInstance}" field="clinicalDetails"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.historyOfDisease}">
				<li class="fieldcontain">
					<span id="historyOfDisease-label" class="property-label"><g:message code="patient.historyOfDisease.label" default="History Of Disease" /></span>
					
						<span class="property-value" aria-labelledby="historyOfDisease-label"><g:fieldValue bean="${patientInstance}" field="historyOfDisease"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.consultDoctor}">
				<li class="fieldcontain">
					<span id="consultDoctor-label" class="property-label"><g:message code="patient.consultDoctor.label" default="Consult Doctor" /></span>
					
						<span class="property-value" aria-labelledby="consultDoctor-label"><g:fieldValue bean="${patientInstance}" field="consultDoctor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.hospitalName}">
				<li class="fieldcontain">
					<span id="hospitalName-label" class="property-label"><g:message code="patient.hospitalName.label" default="Hospital Name" /></span>
					
						<span class="property-value" aria-labelledby="hospitalName-label"><g:fieldValue bean="${patientInstance}" field="hospitalName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.aiBooked}">
				<li class="fieldcontain">
					<span id="aiBooked-label" class="property-label"><g:message code="patient.aiBooked.label" default="Ai Booked" /></span>
					
						<span class="property-value" aria-labelledby="aiBooked-label"><g:fieldValue bean="${patientInstance}" field="aiBooked"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.aiConverted}">
				<li class="fieldcontain">
					<span id="aiConverted-label" class="property-label"><g:message code="patient.aiConverted.label" default="Ai Converted" /></span>
					
						<span class="property-value" aria-labelledby="aiConverted-label"><g:fieldValue bean="${patientInstance}" field="aiConverted"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.aiCancelled}">
				<li class="fieldcontain">
					<span id="aiCancelled-label" class="property-label"><g:message code="patient.aiCancelled.label" default="Ai Cancelled" /></span>
					
						<span class="property-value" aria-labelledby="aiCancelled-label"><g:fieldValue bean="${patientInstance}" field="aiCancelled"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="patient.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:link controller="user" action="show" id="${patientInstance?.createdBy?.id}">${patientInstance?.createdBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="patient.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${patientInstance}" field="dateCreated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.dateModified}">
				<li class="fieldcontain">
					<span id="dateModified-label" class="property-label"><g:message code="patient.dateModified.label" default="Date Modified" /></span>
					
						<span class="property-value" aria-labelledby="dateModified-label"><g:fieldValue bean="${patientInstance}" field="dateModified"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:patientInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${patientInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
