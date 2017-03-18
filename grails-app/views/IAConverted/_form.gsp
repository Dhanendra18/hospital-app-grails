<%@ page import="com.hospital.IAConverted" %>



<div class="fieldcontain ${hasErrors(bean: IAConvertedInstance, field: 'service', 'error')} ">
	<label for="service">
		<g:message code="IAConverted.service.label" default="Service" />
		
	</label>
	<g:textField name="service" value="${IAConvertedInstance?.service}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: IAConvertedInstance, field: 'servicePackageOffered', 'error')} ">
	<label for="servicePackageOffered">
		<g:message code="IAConverted.servicePackageOffered.label" default="Service Package Offered" />
		
	</label>
	<g:textField name="servicePackageOffered" value="${IAConvertedInstance?.servicePackageOffered}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: IAConvertedInstance, field: 'numberOfDays', 'error')} ">
	<label for="numberOfDays">
		<g:message code="IAConverted.numberOfDays.label" default="Number Of Days" />
		
	</label>
	<g:textField name="numberOfDays" value="${IAConvertedInstance?.numberOfDays}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: IAConvertedInstance, field: 'cost', 'error')} ">
	<label for="cost">
		<g:message code="IAConverted.cost.label" default="Cost" />
		
	</label>
	<g:textField name="cost" value="${IAConvertedInstance?.cost}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: IAConvertedInstance, field: 'totalCost', 'error')} ">
	<label for="totalCost">
		<g:message code="IAConverted.totalCost.label" default="Total Cost" />
		
	</label>
	<g:textField name="totalCost" value="${IAConvertedInstance?.totalCost}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: IAConvertedInstance, field: 'totalDiscountAvailable', 'error')} ">
	<label for="totalDiscountAvailable">
		<g:message code="IAConverted.totalDiscountAvailable.label" default="Total Discount Available" />
		
	</label>
	<g:textField name="totalDiscountAvailable" value="${IAConvertedInstance?.totalDiscountAvailable}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: IAConvertedInstance, field: 'totalPackageCost', 'error')} ">
	<label for="totalPackageCost">
		<g:message code="IAConverted.totalPackageCost.label" default="Total Package Cost" />
		
	</label>
	<g:textField name="totalPackageCost" value="${IAConvertedInstance?.totalPackageCost}"/>

</div>

