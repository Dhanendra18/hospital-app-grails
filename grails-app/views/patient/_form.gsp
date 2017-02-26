<%@ page import="com.hospital.Patient" %>



<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="patient.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${patientInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'surname', 'error')} ">
	<label for="surname">
		<g:message code="patient.surname.label" default="Surname" />
		
	</label>
	<g:textField name="surname" value="${patientInstance?.surname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'dateOfBirth', 'error')} ">
	<label for="dateOfBirth">
		<g:message code="patient.dateOfBirth.label" default="Date Of Birth" />
		
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${patientInstance?.dateOfBirth}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'serviceRequired', 'error')} ">
	<label for="serviceRequired">
		<g:message code="patient.serviceRequired.label" default="Service Required" />
		
	</label>
	<g:textField name="serviceRequired" value="${patientInstance?.serviceRequired}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'diagnosis', 'error')} ">
	<label for="diagnosis">
		<g:message code="patient.diagnosis.label" default="Diagnosis" />
		
	</label>
	<g:textField name="diagnosis" value="${patientInstance?.diagnosis}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'contactNumber', 'error')} ">
	<label for="contactNumber">
		<g:message code="patient.contactNumber.label" default="Contact Number" />
		
	</label>
	<g:textField name="contactNumber" value="${patientInstance?.contactNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="patient.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${patientInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'source', 'error')} ">
	<label for="source">
		<g:message code="patient.source.label" default="Source" />
		
	</label>
	<g:textField name="source" value="${patientInstance?.source}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'keyword', 'error')} ">
	<label for="keyword">
		<g:message code="patient.keyword.label" default="Keyword" />
		
	</label>
	<g:textField name="keyword" value="${patientInstance?.keyword}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'nokName', 'error')} ">
	<label for="nokName">
		<g:message code="patient.nokName.label" default="Nok Name" />
		
	</label>
	<g:textField name="nokName" value="${patientInstance?.nokName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'nokSurname', 'error')} ">
	<label for="nokSurname">
		<g:message code="patient.nokSurname.label" default="Nok Surname" />
		
	</label>
	<g:textField name="nokSurname" value="${patientInstance?.nokSurname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'nokRelation', 'error')} ">
	<label for="nokRelation">
		<g:message code="patient.nokRelation.label" default="Nok Relation" />
		
	</label>
	<g:textField name="nokRelation" value="${patientInstance?.nokRelation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'nokContactNo', 'error')} ">
	<label for="nokContactNo">
		<g:message code="patient.nokContactNo.label" default="Nok Contact No" />
		
	</label>
	<g:textField name="nokContactNo" value="${patientInstance?.nokContactNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'nokEmail', 'error')} ">
	<label for="nokEmail">
		<g:message code="patient.nokEmail.label" default="Nok Email" />
		
	</label>
	<g:textField name="nokEmail" value="${patientInstance?.nokEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'homeLocation', 'error')} ">
	<label for="homeLocation">
		<g:message code="patient.homeLocation.label" default="Home Location" />
		
	</label>
	<g:textField name="homeLocation" value="${patientInstance?.homeLocation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'homePin', 'error')} ">
	<label for="homePin">
		<g:message code="patient.homePin.label" default="Home Pin" />
		
	</label>
	<g:textField name="homePin" value="${patientInstance?.homePin}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'homeState', 'error')} ">
	<label for="homeState">
		<g:message code="patient.homeState.label" default="Home State" />
		
	</label>
	<g:textField name="homeState" value="${patientInstance?.homeState}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'officeLocation', 'error')} ">
	<label for="officeLocation">
		<g:message code="patient.officeLocation.label" default="Office Location" />
		
	</label>
	<g:textField name="officeLocation" value="${patientInstance?.officeLocation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'officePin', 'error')} ">
	<label for="officePin">
		<g:message code="patient.officePin.label" default="Office Pin" />
		
	</label>
	<g:textField name="officePin" value="${patientInstance?.officePin}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'officeState', 'error')} ">
	<label for="officeState">
		<g:message code="patient.officeState.label" default="Office State" />
		
	</label>
	<g:textField name="officeState" value="${patientInstance?.officeState}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'clinicalDetails', 'error')} ">
	<label for="clinicalDetails">
		<g:message code="patient.clinicalDetails.label" default="Clinical Details" />
		
	</label>
	<g:textField name="clinicalDetails" value="${patientInstance?.clinicalDetails}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'historyOfDisease', 'error')} ">
	<label for="historyOfDisease">
		<g:message code="patient.historyOfDisease.label" default="History Of Disease" />
		
	</label>
	<g:textField name="historyOfDisease" value="${patientInstance?.historyOfDisease}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'consultDoctor', 'error')} ">
	<label for="consultDoctor">
		<g:message code="patient.consultDoctor.label" default="Consult Doctor" />
		
	</label>
	<g:textField name="consultDoctor" value="${patientInstance?.consultDoctor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'hospitalName', 'error')} ">
	<label for="hospitalName">
		<g:message code="patient.hospitalName.label" default="Hospital Name" />
		
	</label>
	<g:textField name="hospitalName" value="${patientInstance?.hospitalName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'aiBooked', 'error')} ">
	<label for="aiBooked">
		<g:message code="patient.aiBooked.label" default="Ai Booked" />
		
	</label>
	<g:textField name="aiBooked" value="${patientInstance?.aiBooked}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'aiConverted', 'error')} ">
	<label for="aiConverted">
		<g:message code="patient.aiConverted.label" default="Ai Converted" />
		
	</label>
	<g:textField name="aiConverted" value="${patientInstance?.aiConverted}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'aiCancelled', 'error')} ">
	<label for="aiCancelled">
		<g:message code="patient.aiCancelled.label" default="Ai Cancelled" />
		
	</label>
	<g:textField name="aiCancelled" value="${patientInstance?.aiCancelled}"/>

</div>

