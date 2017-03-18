
<%@ page import="com.hospital.IABooking" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'IABooking.label', default: 'IABooking')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-IABooking" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-IABooking" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list IABooking">
			
				<g:if test="${IABookingInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="IABooking.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${IABookingInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${IABookingInstance?.timeSlot}">
				<li class="fieldcontain">
					<span id="timeSlot-label" class="property-label"><g:message code="IABooking.timeSlot.label" default="Time Slot" /></span>
					
						<span class="property-value" aria-labelledby="timeSlot-label"><g:fieldValue bean="${IABookingInstance}" field="timeSlot"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IABookingInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="IABooking.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${IABookingInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IABookingInstance?.therapistName}">
				<li class="fieldcontain">
					<span id="therapistName-label" class="property-label"><g:message code="IABooking.therapistName.label" default="Therapist Name" /></span>
					
						<span class="property-value" aria-labelledby="therapistName-label"><g:fieldValue bean="${IABookingInstance}" field="therapistName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:IABookingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${IABookingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
