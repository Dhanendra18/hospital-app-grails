<%--
  Created by IntelliJ IDEA.
  User: dhanendra
  Date: 15/3/17
  Time: 11:15 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'patient.label', default: 'Agent')}" />
	<title>${entityName}</title>
</head>
<body>
<a href="#list-agent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
	<ul>
		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		<li><g:form controller="logout"><g:submitButton name="Logout">Logout</g:submitButton></g:form></li>
	</ul>
</div>
<div id="list-agent" class="content scaffold-list" role="main">
	<h1><g:message code="default.list.label" args="[entityName]" /></h1>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<table>
		<thead>
		<tr>
			<g:sortableColumn property="id" title="${message(code: 'agent.name.label', default: 'user_id')}" />

			<g:sortableColumn property="name" title="${message(code: 'agent.name.label', default: 'Name')}" />

			<g:sortableColumn property="surname" title="${message(code: 'agent.surname.label', default: 'Surname')}" />

			<g:sortableColumn property="contactNumber" title="${message(code: 'agent.dateOfBirth.label', default: 'Contact Number')}" />

			<g:sortableColumn property="profile" title="${message(code: 'agent.serviceRequired.label', default: 'Profile')}" />

		</tr>
		</thead>
		<tbody>
		<g:each in="${userInstanceList}" status="i" var="agentInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				<td>%{--<g:link action="show" id="${agentInstance.id}">--}%${fieldValue(bean: agentInstance, field: "id")}%{--</g:link>--}%</td>

				<td>${fieldValue(bean: agentInstance, field: "name")}</td>

				<td>${fieldValue(bean: agentInstance, field: "surname")}</td>

				<td>${fieldValue(bean: agentInstance, field: "contactNumber")}</td>

				<td>${fieldValue(bean: agentInstance, field: "profile")}</td>

			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<g:paginate total="${userInstanceCount ?: 0}" />
	</div>
</div>
</body>
</html>