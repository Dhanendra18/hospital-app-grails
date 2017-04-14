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
        IABooking iaBooking = IABooking.get(params.aiBookingId)
        if (iaBooking) {
            iaBooking.status = BookingStatus.VISIT_STARTED
            DoctorVisit doctorVisit = new DoctorVisit();
            doctorVisit.iaBooking = iaBooking
            doctorVisit.hcp = springSecurityService.getCurrentUser();
            doctorVisit.visitStartTime = new Date()
            doctorVisit.save(flash: true, failOnError: true)
            render "ok"
        } else {
            return 'error'
        }
    }

    def stop() {
        IABooking iaBooking = IABooking.get(params.aiBookingId)
        if (iaBooking) {
            iaBooking.status = BookingStatus.VISIT_COMPLETED
            DoctorVisit doctorVisit = DoctorVisit.findByIaBooking(iaBooking)
            if (doctorVisit) {
                doctorVisit.visitEndTime = new Date();
            }
            render "ok"
        } else {
            return 'error'
        }
    }

    def finish() {
        IABooking iaBooking = IABooking.get(params.aiBookingId)
        if (iaBooking) {
            DoctorVisit doctorVisit = DoctorVisit.findByIaBooking(iaBooking)
            if (doctorVisit) {
                doctorVisit.comments = params.comment
            }
        }
        redirect action: 'index'
    }
}
