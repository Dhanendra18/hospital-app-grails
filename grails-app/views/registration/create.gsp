<%--
  Created by IntelliJ IDEA.
  User: dhanendra
  Date: 10/3/17
  Time: 11:07 PM
--%>

<%@ page import="com.hospital.Profile" contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'Registeration.label', default: 'Registeration')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>

</head>
	<body>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			<li><g:form controller="logout"><g:submitButton name="Logout">Logout</g:submitButton></g:form></li>
		</ul>
	</div>
	<div id="create-patient" class="content scaffold-create" role="main">
		<h1><g:message code="default.create.label" args="[entityName]" /></h1>
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

		<g:form action="save" controller="registration">
			<fieldset class="form">
				<div class="fieldcontain ${hasErrors(bean: registrationVoInstance, field: 'name', 'error')} required">
					<label for="authority">
					</label>
					<g:radio name="authority" value="agent" checked="checked"/> Agent
					<g:radio name="authority" value="hcp"/> HCP

				</div>

				<div class="fieldcontain ${hasErrors(bean: registrationVoInstance, field: 'name', 'error')} required">
					<label for="name">
						<g:message code="registration.name.label" default="Agent/HCP Name" />
						<span class="required-indicator">*</span>
					</label>
					<g:textField name="name" class="name" required="" value="${registrationVoInstance?.name}"/>

				</div>
				<div class="fieldcontain ${hasErrors(bean: registrationVoInstance, field: 'surname', 'error')} required">
					<label for="surname">
						<g:message code="registration.surname.label" default="Agent/HCP Surname" />
						<span class="required-indicator">*</span>
					</label>
					<g:textField name="surname" class="surname" required="" value="${registrationVoInstance?.surname}"/>

				</div>
				<div class="fieldcontain ${hasErrors(bean: registrationVoInstance, field: 'contactNumber', 'error')} required">
					<label for="contactNumber">
						<g:message code="registration.username.label" default="Contact number" />
						<span class="required-indicator">*</span>
					</label>
					<g:textField name="contactNumber" required="" value="${registrationVoInstance?.contactNumber}"/>

				</div>
				<div class="fieldcontain ${hasErrors(bean: registrationVoInstance, field: 'profile', 'error')} required">
					<label for="contactNumber">
						<g:message code="registration.profile.label" default="Profile" />
						<span class="required-indicator">*</span>
					</label>
					<g:select from="${Profile.values()}" name="profile" />
					%{--<g:textField name="profile" required="" value="${registrationVoInstance?.profile}"/>--}%

				</div>
				<div class="fieldcontain ${hasErrors(bean: registrationVoInstance, field: 'username', 'error')} required">
					<label for="profile">
						<g:message code="registration.username.label" default="Username" />
						<span class="required-indicator">*</span>
					</label>
					<g:textField name="username" class="username" readonly="readonly" required="" value="${patientInstance?.username}"/>

				</div>
				<div class="fieldcontain ${hasErrors(bean: registrationVoInstance, field: 'password', 'error')} required">
					<label for="username">
						<g:message code="registration.username.label" default="Password" />
						<span class="required-indicator">*</span>
					</label>
					<g:passwordField name="password" required="" value="${patientInstance?.password}"/>

				</div>
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</fieldset>
		</g:form>
	</div>
	<script>
		$(document).on("blur",".surname",function () {
			let username = $(".username").val();
			let name = $(".name").val();
			if(!username && name) {
				let data = {
					name : name,
					surname: $(".surname").val()
				};
				$.ajax({
					url: "${createLink(action: 'createUsername', controller: 'registration')}",
					data: {data: JSON.stringify(data)},
					contentType: "application/json; charset=utf-8",
					success: function (data) {
						$(".username").val(data.username);
					}
				});
			}
		});

	</script>
	</body>
</html>