<%--
  Created by IntelliJ IDEA.
  User: dhanendra
  Date: 10/3/17
  Time: 11:07 PM
--%>

<%@ page import="com.hospital.HcpProfile; com.hospital.Profile" contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'Registeration.label', default: 'Registeration')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>

</head>
<body>
<div id="create-patient" class="content scaffold-create" role="main">
	<h4 class="header"><g:message code="default.create.label" args="[entityName]" /></h4>
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
		<g:form class="col s12" url="[resource:patientInstance, action:'save', controller:'registration']">
			<g:render template="form"/>
			<div class="btn-move-up right">
				<g:submitButton name="create" class="waves-effect waves-light btn save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</div>
		</g:form>
	</div>
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