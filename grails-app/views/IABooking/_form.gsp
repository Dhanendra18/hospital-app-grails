<%@ page import="com.hospital.IABooking" %>



<div class="fieldcontain ${hasErrors(bean: IABookingInstance, field: 'date', 'error')} ">
	<label for="date">
		<g:message code="IABooking.date.label" default="Date" />
		
	</label>
	<g:datePicker name="date" precision="day"  value="${IABookingInstance?.date}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: IABookingInstance, field: 'timeSlot', 'error')} ">
	<label for="timeSlot">
		<g:message code="IABooking.timeSlot.label" default="Time Slot" />
		
	</label>
	<g:textField name="timeSlot" value="${IABookingInstance?.timeSlot}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: IABookingInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="IABooking.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${IABookingInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: IABookingInstance, field: 'therapistName', 'error')} ">
	<label for="therapistName">
		<g:message code="IABooking.therapistName.label" default="Therapist Name" />
		
	</label>
	<g:textField name="therapistName" value="${IABookingInstance?.therapistName}"/>

</div>

