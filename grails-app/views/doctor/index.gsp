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
	<g:set var="entityName" value="Doctor"/>
</head>
<body>
<a href="#list-doctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
	<ul>
		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		<li><g:form controller="logout"><g:submitButton name="Logout">Logout</g:submitButton></g:form></li>
	</ul>
</div>
<div id="list-doctor" class="content scaffold-list" role="main">
	<h1><g:message code="default.list.label" args="[entityName]" /></h1>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<table>
		<thead>
		<tr>
			<g:sortableColumn property="id" title="${message(code: 'doctor.name.label', default: 'Pat_id')}" />

			<g:sortableColumn property="name" title="${message(code: 'doctor.name.label', default: 'Name')}" />

			<g:sortableColumn property="surname" title="${message(code: 'doctor.surname.label', default: 'Surname')}" />

			<g:sortableColumn property="homeLocatoin" title="${message(code: 'doctor.serviceRequired.label', default: 'Address')}" />

			<g:sortableColumn property="serviceRequired" title="${message(code: 'doctor.diagnosis.label', default: 'Service Required')}" />
		</tr>
		</thead>
		<tbody>
		<g:each in="${doctorInstanceList}" status="i" var="doctorInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				<td><g:link action="show" id="${doctorInstance.id}">${fieldValue(bean: doctorInstance, field: "id")}</g:link></td>

				<td>${fieldValue(bean: doctorInstance, field: "name")}</td>

				<td>${fieldValue(bean: doctorInstance, field: "surname")}</td>

				<td>${fieldValue(bean: doctorInstance, field: "homeLocation")}</td>

				<td>${fieldValue(bean: doctorInstance, field: "serviceRequired")}</td>
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<g:paginate total="${doctorInstanceCount ?: 0}" />
	</div>
</div>
</body>
</html>