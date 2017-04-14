package com.hospital

/**
 * Created by dhanendra on 19/3/17.
 */
class PatientForDoctorVO {
    String id
    //patient name
    String name
    String nokName
    //todo: convert it to address
    String homeLocation
    String clinicalDetails
    //diagnosis
    String historyOfDisease
    // agent name
    User createdBy
    String visitTime
    Long aiBookedId

    PatientForDoctorVO(Patient patient) {
        this.id = patient.id
        this.name = patient.name
        this.nokName = patient.nokName
        this.homeLocation = patient.homeLocation ?:"" + " " + patient.homeState?: "" + " " + patient.homePin?: ""
        this.clinicalDetails = patient.clinicalDetails
        this.historyOfDisease = patient.diagnosis
        this.createdBy = patient.createdBy
        this.visitTime = patient?.aiBooked?.timeSlot
        this.aiBookedId = patient?.aiBooked?.id
    }

    PatientForDoctorVO() {}
}
