
<%@ page import="com.hospital.IAConverted" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'IAConverted.label', default: 'IAConverted')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-IAConverted" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-IAConverted" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list IAConverted">
			
				<g:if test="${IAConvertedInstance?.service}">
				<li class="fieldcontain">
					<span id="service-label" class="property-label"><g:message code="IAConverted.service.label" default="Service" /></span>
					
						<span class="property-value" aria-labelledby="service-label"><g:fieldValue bean="${IAConvertedInstance}" field="service"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IAConvertedInstance?.servicePackageOffered}">
				<li class="fieldcontain">
					<span id="servicePackageOffered-label" class="property-label"><g:message code="IAConverted.servicePackageOffered.label" default="Service Package Offered" /></span>
					
						<span class="property-value" aria-labelledby="servicePackageOffered-label"><g:fieldValue bean="${IAConvertedInstance}" field="servicePackageOffered"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IAConvertedInstance?.numberOfDays}">
				<li class="fieldcontain">
					<span id="numberOfDays-label" class="property-label"><g:message code="IAConverted.numberOfDays.label" default="Number Of Days" /></span>
					
						<span class="property-value" aria-labelledby="numberOfDays-label"><g:fieldValue bean="${IAConvertedInstance}" field="numberOfDays"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IAConvertedInstance?.cost}">
				<li class="fieldcontain">
					<span id="cost-label" class="property-label"><g:message code="IAConverted.cost.label" default="Cost" /></span>
					
						<span class="property-value" aria-labelledby="cost-label"><g:fieldValue bean="${IAConvertedInstance}" field="cost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IAConvertedInstance?.totalCost}">
				<li class="fieldcontain">
					<span id="totalCost-label" class="property-label"><g:message code="IAConverted.totalCost.label" default="Total Cost" /></span>
					
						<span class="property-value" aria-labelledby="totalCost-label"><g:fieldValue bean="${IAConvertedInstance}" field="totalCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IAConvertedInstance?.totalDiscountAvailable}">
				<li class="fieldcontain">
					<span id="totalDiscountAvailable-label" class="property-label"><g:message code="IAConverted.totalDiscountAvailable.label" default="Total Discount Available" /></span>
					
						<span class="property-value" aria-labelledby="totalDiscountAvailable-label"><g:fieldValue bean="${IAConvertedInstance}" field="totalDiscountAvailable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${IAConvertedInstance?.totalPackageCost}">
				<li class="fieldcontain">
					<span id="totalPackageCost-label" class="property-label"><g:message code="IAConverted.totalPackageCost.label" default="Total Package Cost" /></span>
					
						<span class="property-value" aria-labelledby="totalPackageCost-label"><g:fieldValue bean="${IAConvertedInstance}" field="totalPackageCost"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:IAConvertedInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${IAConvertedInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
