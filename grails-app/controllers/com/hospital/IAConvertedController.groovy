package com.hospital

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(["hasAnyRole('agent','admin')"])
@Transactional(readOnly = true)
class IAConvertedController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond IAConverted.list(params), model:[IAConvertedInstanceCount: IAConverted.count()]
    }

    def show(IAConverted IAConvertedInstance) {
        respond IAConvertedInstance
    }

    def create() {
        respond new IAConverted(params)
    }

    @Transactional
    def save(IAConverted IAConvertedInstance) {
        if (IAConvertedInstance == null) {
            notFound()
            return
        }

        if (IAConvertedInstance.hasErrors()) {
            respond IAConvertedInstance.errors, view:'create'
            return
        }

        IAConvertedInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'IAConverted.label', default: 'IAConverted'), IAConvertedInstance.id])
                redirect IAConvertedInstance
            }
            '*' { respond IAConvertedInstance, [status: CREATED] }
        }
    }

    def edit(IAConverted IAConvertedInstance) {
        respond IAConvertedInstance
    }

    @Transactional
    def update(IAConverted IAConvertedInstance) {
        if (IAConvertedInstance == null) {
            notFound()
            return
        }

        if (IAConvertedInstance.hasErrors()) {
            respond IAConvertedInstance.errors, view:'edit'
            return
        }

        IAConvertedInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'IAConverted.label', default: 'IAConverted'), IAConvertedInstance.id])
                redirect IAConvertedInstance
            }
            '*'{ respond IAConvertedInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(IAConverted IAConvertedInstance) {

        if (IAConvertedInstance == null) {
            notFound()
            return
        }

        IAConvertedInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'IAConverted.label', default: 'IAConverted'), IAConvertedInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'IAConverted.label', default: 'IAConverted'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
