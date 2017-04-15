<%@ page import="com.hospital.Patient" %>

<h4 class="header"><g:message code="patient.nok.label" default="Patient Details" /></h4>

<div class="card-panel" >
	<div class="row">

		<div class="input-field col s6">
			<label for="name">
				<g:message code="patient.name.label" default="Name" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="name" required="" value="${patientInstance?.name}"/>
		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'surname', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="surname">
				<g:message code="patient.surname.label" default="Surname" />
			</label>
			<g:textField name="surname" value="${patientInstance?.surname}"/>
		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'dateOfBirth', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="dateOfBirth">
				<g:message code="patient.dateOfBirth.label" default="Date Of Birth" />
			</label>
			<input type="date" class="datepicker" id="dateOfBirth" name="dateOfBirth" value="${patientInstance?.dateOfBirth}" />
		</div>
		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'serviceRequired', 'error')} ">--}%
		<div class="input-field col s6">

			<select name="serviceRequired" id="id_serviceRequired" >
				<option value="" disabled selected>Select Your Option</option>
				<option value="Physiotherapy">Physiotherapy</option>
				<option value="Occupational_Therapy">Occupational Therapy</option>
				<option value="Weight_loss">Weight loss</option>
				<option value="Dietician">Dietician</option>
				<option value="Nurse">Nurse</option>
				<option value="Doctor">Doctor</option>
				<option value="Healthcare_attendant">Healthcare attendant</option>
				<option value="Lab_test">Lab Test</option>
				<option value="Pharmacy">Pharmacy</option>
				<option value="Other">Other</option>
			</select>
			<label for="id_serviceRequired">
				<g:message code="patient.serviceRequired.label" default="Service Required" />

			</label>
		</div>
		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'diagnosis', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="diagnosis">
				<g:message code="patient.diagnosis.label" default="Diagnosis" />

			</label>
			<g:textField name="diagnosis" value="${patientInstance?.diagnosis}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'contactNumber', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="contactNumber">
				<g:message code="patient.contactNumber.label" default="Contact Number" />

			</label>
			<g:textField name="contactNumber" value="${patientInstance?.contactNumber}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'email', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="email">
				<g:message code="patient.email.label" default="Email" />

			</label>
			<g:textField name="email" value="${patientInstance?.email}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'source', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="source">
				<g:message code="patient.source.label" default="Source" />

			</label>
			<g:textField name="source" value="${patientInstance?.source}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'keyword', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="keyword">
				<g:message code="patient.keyword.label" default="Keyword" />

			</label>
			<g:textField name="keyword" value="${patientInstance?.keyword}"/>

		</div>
	</div>
</div>

<h4 class="header"><g:message code="patient.nok.label" default="Nok Details" /></h4>

<div class="card-panel" >
	<div class="row">
		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'nokName', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="nokName">
				<g:message code="patient.nokName.label" default="Nok Name" />

			</label>
			<g:textField name="nokName" value="${patientInstance?.nokName}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'nokSurname', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="nokSurname">
				<g:message code="patient.nokSurname.label" default="Nok Surname" />

			</label>
			<g:textField name="nokSurname" value="${patientInstance?.nokSurname}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'nokRelation', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="nokRelation">
				<g:message code="patient.nokRelation.label" default="Nok Relation" />

			</label>
			<g:textField name="nokRelation" value="${patientInstance?.nokRelation}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'nokContactNo', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="nokContactNo">
				<g:message code="patient.nokContactNo.label" default="Nok Contact No" />

			</label>
			<g:textField name="nokContactNo" value="${patientInstance?.nokContactNo}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'nokEmail', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="nokEmail">
				<g:message code="patient.nokEmail.label" default="Nok Email" />

			</label>
			<g:textField name="nokEmail" value="${patientInstance?.nokEmail}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'homeLocation', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="homeLocation">
				<g:message code="patient.homeLocation.label" default="Home Location" />

			</label>
			<g:textField name="homeLocation" value="${patientInstance?.homeLocation}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'homePin', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="homePin">
				<g:message code="patient.homePin.label" default="Home Pin" />

			</label>
			<g:textField name="homePin" value="${patientInstance?.homePin}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'homeState', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="homeState">
				<g:message code="patient.homeState.label" default="Home State" />

			</label>
			<g:textField name="homeState" value="${patientInstance?.homeState}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'officeLocation', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="officeLocation">
				<g:message code="patient.officeLocation.label" default="Office Location" />

			</label>
			<g:textField name="officeLocation" value="${patientInstance?.officeLocation}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'officePin', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="officePin">
				<g:message code="patient.officePin.label" default="Office Pin" />

			</label>
			<g:textField name="officePin" value="${patientInstance?.officePin}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'officeState', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="officeState">
				<g:message code="patient.officeState.label" default="Office State" />

			</label>
			<g:textField name="officeState" value="${patientInstance?.officeState}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'clinicalDetails', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="clinicalDetails">
				<g:message code="patient.clinicalDetails.label" default="Clinical Details" />

			</label>
			<g:textField name="clinicalDetails" value="${patientInstance?.clinicalDetails}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'historyOfDisease', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="historyOfDisease">
				<g:message code="patient.historyOfDisease.label" default="History Of Disease" />

			</label>
			<g:textField name="historyOfDisease" value="${patientInstance?.historyOfDisease}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'consultDoctor', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="consultDoctor">
				<g:message code="patient.consultDoctor.label" default="Consult Doctor" />

			</label>
			<g:textField name="consultDoctor" value="${patientInstance?.consultDoctor}"/>

		</div>

		%{--<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'hospitalName', 'error')} ">--}%
		<div class="input-field col s6">
			<label for="hospitalName">
				<g:message code="patient.hospitalName.label" default="Hospital Name" />

			</label>
			<g:textField name="hospitalName" value="${patientInstance?.hospitalName}"/>

		</div>
	</div>
</div>
<script>
	$(document).ready(function () {
		// init datapicker
		$('.datepicker').pickadate({
			selectMonths: true, // Creates a dropdown to control month
			selectYears: 100,
			max: new Date()
		});

		// init select box
		$('select').material_select();

		// set default value of serviceRequired select box
		let serviceRequired = '${patientInstance?.serviceRequired}';
		if(serviceRequired) {
			$('#id_serviceRequired').val(serviceRequired);
		}
	});
</script>