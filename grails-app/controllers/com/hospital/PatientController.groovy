package com.hospital

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(["hasAnyRole('agent','admin')"])
@Transactional(readOnly = true)
class PatientController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def springSecurityService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Patient.list(params), model:[patientInstanceCount: Patient.count()]
    }

    def show(Patient patientInstance) {
        respond patientInstance
    }

    def create() {
        respond new Patient(params)
    }

    @Transactional
    def save(Patient patientInstance) {
        if (patientInstance == null) {
            notFound()
            return
        }
        patientInstance.createdBy = springSecurityService.currentUser
        patientInstance.validate()
        if (patientInstance.hasErrors()) {
            respond patientInstance.errors, view:'create'
            return
        }

        Patient patient = patientInstance.save flush:true
        forward(controller: "IABooking", action: "create", id: patient.id)
    }

    def createBooking(Patient patientInstance) {

    }

    def saveBooking() {

    }

    def createConverted() {

    }

    def saveConverted() {

    }

    def edit(Patient patientInstance) {
        respond patientInstance
    }

    @Transactional
    def update(Patient patientInstance) {
        if (patientInstance == null) {
            notFound()
            return
        }

        patientInstance.dateModified = new Date()
        if (patientInstance.hasErrors()) {
            respond patientInstance.errors, view:'edit'
            return
        }

        patientInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Patient.label', default: 'Patient'), patientInstance.id])
                redirect patientInstance
            }
            '*'{ respond patientInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Patient patientInstance) {

        if (patientInstance == null) {
            notFound()
            return
        }

        patientInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Patient.label', default: 'Patient'), patientInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'patient.label', default: 'Patient'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
