<%@ page import="com.hospital.HcpProfile;com.hospital.Profile"  contentType="text/html;charset=UTF-8"  %>
<div class="card-panel" >
	<div class="row">

		<div class="input-field col s12 center" style="margin-bottom: 40px">
			<g:radio id="agent" name="authority" value="agent" onchange="changeAuthority()" checked="checked"/>
				<label for="agent">Agent</label>
				<g:radio id="hcp" name="authority" value="hcp" onchange="changeAuthority()"/>
				<label for="hcp">HCP</label>
			<script>
				function changeAuthority() {
					let authority = $('input[name="authority"]:checked').val();
					let $profile = $("#id_profile");
					if(authority === "hcp") {
						let hcpProfile = '<option value="PHYSIOTHERAPIST">PHYSIOTHERAPIST</option>'+
								'<option value="NUTRITIONIST">NUTRITIONIST</option>'+
								'<option value="GENERAL_PHYSICIAN">GENERAL_PHYSICIAN</option>'+
								'<option value="OCCUPATIONAL_THERAPIST">OCCUPATIONAL_THERAPIST</option>'+
								'<option value="NURSE">NURSE</option>'+
								'<option value="HEALTH_CARE_ATTENDANCE">HEALTH_CARE_ATTENDANCE</option>'+
								'<option value="OTHER">OTHER</option>';
						$profile.html(hcpProfile);
					} else {
						let agentProfile = '<option value="Sales">Sales</option>'+
								'<option value="Customer_Support">Customer_Support</option>'+
								'<option value="Other">Other</option>';
						$profile.html(agentProfile);
					}
				}
			</script>
		</div>

		<div class="input-field col s6">
			<label for="name">
				<g:message code="registration.name.label" default="Agent/HCP Name" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="name" class="name" required="" value="${registrationVoInstance?.name}"/>

		</div>
		<div class="input-field col s6">
			<label for="surname">
				<g:message code="registration.surname.label" default="Agent/HCP Surname" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="surname" class="surname" required="" value="${registrationVoInstance?.surname}"/>

		</div>
		<div class="input-field col s6">
			<label for="contactNumber">
				<g:message code="registration.username.label" default="Contact number" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="contactNumber" required="" value="${registrationVoInstance?.contactNumber}"/>

		</div>
		<div class="input-field col s6">

			<g:select from="${Profile.values()}" name="profile" id="id_profile" />
		</div>
		<div class="input-field col s6">
			<label for="profile">
				<g:message code="registration.username.label" default="Username" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="username" class="username" readonly="readonly" required="" value="${patientInstance?.username}"/>

		</div>
		<div class="input-field col s6">
			<label for="username">
				<g:message code="registration.username.label" default="Password" />
				<span class="required-indicator">*</span>
			</label>
			<g:passwordField name="password" required="" value="${patientInstance?.password}"/>

		</div>
	</div>
</div>