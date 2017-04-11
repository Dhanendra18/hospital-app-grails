package com.hospital

import grails.plugin.springsecurity.annotation.Secured

@Secured(["hasRole('hcp')"])
class DoctorController {
    def springSecurityService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        User user = springSecurityService.getCurrentUser();
        List<Patient> patientList = IABooking.findAllByTherapistNameAndStatus(user, BookingStatus.ASSIGNED, params)*.patient
        Integer count = IABooking.countByTherapistNameAndStatus(user, BookingStatus.ASSIGNED)
        respond patientList, model:[patientInstanceCount: count]
    }

    def show(Patient patient) {
        PatientForDoctorVO patientInstance = new PatientForDoctorVO(patient)
        respond patientInstance, model: [patientInstance: patientInstance]
    }

    def start() {
        println "started " + params.patientId

    }

    def stop() {
        println "stopped " + params.patientId

    }
}
