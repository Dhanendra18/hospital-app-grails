package com.hospital

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(["hasAnyRole('agent','admin')"])
@Transactional(readOnly = true)
class IABookingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond IABooking.list(params), model:[IABookingInstanceCount: IABooking.count()]
    }

    def show(IABooking IABookingInstance) {
        respond IABookingInstance
    }

    def create() {
        IABooking iaBooking = new IABooking()
        if(params.id) {
            Patient patient = Patient.get(params.id)
            if (patient) {
                iaBooking.patient = patient
            }
        }
        respond iaBooking
    }

    @Transactional
    def save(IABooking IABookingInstance) {
        if (IABookingInstance == null) {
            notFound()
            return
        }

        IABookingInstance.status = BookingStatus.PENDING_ASSIGN
        IABookingInstance.validate();

        if (IABookingInstance.hasErrors()) {
            respond IABookingInstance.errors, view:'create'
            return
        }

        IABooking iaBooking = IABookingInstance.save flush:true
        Patient patient = iaBooking.patient
        if (patient) {
            patient.aiBooked = iaBooking
            patient.save flush: true, failOnError: true
        }
        redirect controller: "patient", action: "index"
    }

    def edit(IABooking IABookingInstance) {
        respond IABookingInstance
    }

    def assignHCP() {
        if (params.id) {
            IABooking iaBooking = IABooking.get(params.id)
            redirect action: 'edit' , resource: iaBooking
        } else {
            flash.message = "no id found"
            redirect controller: 'patient', action: 'index'
        }
    }

    @Transactional
    def update(IABooking IABookingInstance) {
        if (IABookingInstance == null) {
            notFound()
            return
        }

        if (IABookingInstance.hasErrors()) {
            respond IABookingInstance.errors, view:'edit'
            return
        }

        if (IABookingInstance.therapistName && IABookingInstance.status == BookingStatus.PENDING_ASSIGN) {
            IABookingInstance.status = BookingStatus.ASSIGNED
        }

        IABookingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'IABooking.label', default: 'IABooking'), IABookingInstance.id])
                redirect IABookingInstance
            }
            '*'{ respond IABookingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(IABooking IABookingInstance) {

        if (IABookingInstance == null) {
            notFound()
            return
        }

        IABookingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'IABooking.label', default: 'IABooking'), IABookingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'IABooking.label', default: 'IABooking'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
