package com.hospital

import grails.plugin.springsecurity.annotation.Secured

@Secured(["hasRole('hcp')"])
class DoctorController {
    def springSecurityService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        User user = springSecurityService.getCurrentUser();
        List<Patient> patientList = IABooking.findAllByTherapistNameAndStatus(user, BookingStatus.ASSIGNED, params)*.patient
        respond patientList
    }

    def show() {
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
