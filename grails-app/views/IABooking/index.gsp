
<%@ page import="com.hospital.IABooking" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'IABooking.label', default: 'IABooking')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-IABooking" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-IABooking" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="date" title="${message(code: 'IABooking.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="timeSlot" title="${message(code: 'IABooking.timeSlot.label', default: 'Time Slot')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'IABooking.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="therapistName" title="${message(code: 'IABooking.therapistName.label', default: 'Therapist Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${IABookingInstanceList}" status="i" var="IABookingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${IABookingInstance.id}">${fieldValue(bean: IABookingInstance, field: "date")}</g:link></td>
					
						<td>${fieldValue(bean: IABookingInstance, field: "timeSlot")}</td>
					
						<td>${fieldValue(bean: IABookingInstance, field: "location")}</td>
					
						<td>${fieldValue(bean: IABookingInstance, field: "therapistName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${IABookingInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
