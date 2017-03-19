package com.hospital

/**
 * Created by dhanendra on 19/3/17.
 */
class PatientForDoctorVO {
    String id
    String patient_name
    String nok_name
    String address
    String clinical_details
    String diagnosis
    String agent_name
    String visit_time

    PatientForDoctorVO(Patient patient) {
        this.id = patient.id
        this.patient_name = patient.name
        this.nok_name = patient.nokName
        this.address = patient.homeLocation + " " + patient.homeState + " " + patient.homePin
        this.clinical_details = patient.clinicalDetails
        this.diagnosis = patient.diagnosis
        this.agent_name = patient.createdBy
    }

    PatientForDoctorVO() {}
}
