<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	<div id="create-patient" class="content scaffold-create" role="main">
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${patientInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${patientInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<div class="row">
			<g:form class="col s12" url="[resource:patientInstance, action:'save']" >
				<g:render template="form"/>
				<div class="btn-move-up right">
					<g:submitButton name="create"  class="waves-effect waves-light btn save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</div>
			</g:form>
		</div>
		</div>
	</body>
</html>
