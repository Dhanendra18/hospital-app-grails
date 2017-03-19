package com.hospital

class DoctorController {

    def index() {
        Patient patient = Patient.findById(1L)

        respond patient ? new PatientForDoctorVO(patient) : new PatientForDoctorVO()
    }

    def start() {
        println "started " + params.patientId

    }

    def stop() {
        println "stopped " + params.patientId

    }
}
