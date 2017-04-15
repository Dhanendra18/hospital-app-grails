
<%@ page import="com.hospital.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-patient" class="content scaffold-list" role="main">
			<h1 class="header"><g:message code="default.list.label" args="[entityName]" /></h1>
			<div class="row">
				<div class="col s2 right" style="margin-bottom: -3.5%;"><g:link class="btn-floating btn-large waves-effect waves-light red pulse" action="create"><i class="material-icons">add</i></g:link></div>
			</div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="card-panel">
				<table>
					<thead>
					<tr>
						<g:sortableColumn property="id" title="${message(code: 'patient.name.label', default: 'Pat_id')}" />

						<g:sortableColumn property="name" title="${message(code: 'patient.name.label', default: 'Name')}" />

						<g:sortableColumn property="surname" title="${message(code: 'patient.surname.label', default: 'Surname')}" />

						<g:sortableColumn property="contactNumber" title="${message(code: 'patient.dateOfBirth.label', default: 'Contact Number')}" />

						<g:sortableColumn property="homeLocatoin" title="${message(code: 'patient.serviceRequired.label', default: 'Address')}" />

						<g:sortableColumn property="serviceRequired" title="${message(code: 'patient.diagnosis.label', default: 'Service Required')}" />

						<sec:ifAnyGranted roles="admin">
							<g:sortableColumn property="aiBooked.status" title="${message(code: 'patient.diagnosis.label', default: 'Booking Status')}" />
						</sec:ifAnyGranted>
					</tr>
					</thead>
					<tbody>
					<g:each in="${patientInstanceList}" status="i" var="patientInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							<td><g:link action="show" id="${patientInstance.id}">${fieldValue(bean: patientInstance, field: "id")}</g:link></td>

							<td>${fieldValue(bean: patientInstance, field: "name")}</td>

							<td>${fieldValue(bean: patientInstance, field: "surname")}</td>

							<td>${fieldValue(bean: patientInstance, field: "contactNumber")}</td>

							<td>${fieldValue(bean: patientInstance, field: "homeLocation")}</td>

							<td>${fieldValue(bean: patientInstance, field: "serviceRequired")}</td>

							<sec:ifAnyGranted roles="admin">
								<g:if test="${patientInstance?.aiBooked?.status == com.hospital.BookingStatus.PENDING_ASSIGN}">
									<td><g:link controller="IABooking" action="assignHCP" id="${patientInstance?.aiBooked?.id}" >${patientInstance?.aiBooked?.status}</g:link></td>
								</g:if>
								<g:else>
									<td>${patientInstance?.aiBooked?.status}</td>
								</g:else>
							</sec:ifAnyGranted>
						</tr>
					</g:each>
					</tbody>
				</table>
			</div>
			<div class="pagination">
				<g:paginate total="${patientInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
