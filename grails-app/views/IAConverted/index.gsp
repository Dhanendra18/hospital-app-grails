
<%@ page import="com.hospital.IAConverted" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'IAConverted.label', default: 'IAConverted')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-IAConverted" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-IAConverted" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="service" title="${message(code: 'IAConverted.service.label', default: 'Service')}" />
					
						<g:sortableColumn property="servicePackageOffered" title="${message(code: 'IAConverted.servicePackageOffered.label', default: 'Service Package Offered')}" />
					
						<g:sortableColumn property="numberOfDays" title="${message(code: 'IAConverted.numberOfDays.label', default: 'Number Of Days')}" />
					
						<g:sortableColumn property="cost" title="${message(code: 'IAConverted.cost.label', default: 'Cost')}" />
					
						<g:sortableColumn property="totalCost" title="${message(code: 'IAConverted.totalCost.label', default: 'Total Cost')}" />
					
						<g:sortableColumn property="totalDiscountAvailable" title="${message(code: 'IAConverted.totalDiscountAvailable.label', default: 'Total Discount Available')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${IAConvertedInstanceList}" status="i" var="IAConvertedInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${IAConvertedInstance.id}">${fieldValue(bean: IAConvertedInstance, field: "service")}</g:link></td>
					
						<td>${fieldValue(bean: IAConvertedInstance, field: "servicePackageOffered")}</td>
					
						<td>${fieldValue(bean: IAConvertedInstance, field: "numberOfDays")}</td>
					
						<td>${fieldValue(bean: IAConvertedInstance, field: "cost")}</td>
					
						<td>${fieldValue(bean: IAConvertedInstance, field: "totalCost")}</td>
					
						<td>${fieldValue(bean: IAConvertedInstance, field: "totalDiscountAvailable")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${IAConvertedInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
