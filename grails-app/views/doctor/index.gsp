<%--
  Created by IntelliJ IDEA.
  User: dhanendra
  Date: 10/4/17
  Time: 11:26 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Doctor</title>
	<g:set var="entityName" value="Patient"/>
</head>
<body>
<a href="#list-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
	<ul>
		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		<li><g:form controller="logout"><g:submitButton name="Logout">Logout</g:submitButton></g:form></li>
	</ul>
</div>
<div id="list-patient" class="content scaffold-list" role="main">
	<h1><g:message code="default.list.label" args="[entityName]" /></h1>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<table>
		<thead>
		<tr>
			<g:sortableColumn property="id" title="${message(code: 'patient.name.label', default: 'Pat_id')}" />

			<g:sortableColumn property="name" title="${message(code: 'patient.name.label', default: 'Name')}" />

			<g:sortableColumn property="surname" title="${message(code: 'patient.surname.label', default: 'Surname')}" />

			<g:sortableColumn property="homeLocatoin" title="${message(code: 'patient.serviceRequired.label', default: 'Address')}" />

			<g:sortableColumn property="serviceRequired" title="${message(code: 'patient.diagnosis.label', default: 'Service Required')}" />
		</tr>
		</thead>
		<tbody>
		<g:each in="${patientInstanceList}" status="i" var="patientInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				<td><g:link action="show" id="${patientInstance.id}">${fieldValue(bean: patientInstance, field: "id")}</g:link></td>

				<td>${fieldValue(bean: patientInstance, field: "name")}</td>

				<td>${fieldValue(bean: patientInstance, field: "surname")}</td>

				<td>${fieldValue(bean: patientInstance, field: "homeLocation")}</td>

				<td>${fieldValue(bean: patientInstance, field: "serviceRequired")}</td>
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<g:paginate total="${patientInstanceCount ?: 0}" />
	</div>
</div>
</body>
</html>