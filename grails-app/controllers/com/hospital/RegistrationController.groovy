package com.hospital

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.grails.web.json.JSONElement
import org.springframework.transaction.annotation.Transactional

import static org.springframework.http.HttpStatus.NOT_FOUND

@Secured(value=["hasRole('admin')"])
@Transactional(readOnly = true)
class RegistrationController {


    def create() {
        respond new RegistrationVo()
    }

    def show(Patient patientInstance) {
        respond patientInstance
    }

    @Transactional
    def save(RegistrationVo registrationVo) {

        if (registrationVo == null) {
            notFound()
            return
        }
        if (registrationVo.hasErrors()) {
            respond registrationVo.errors, view: 'create'
            return
        }

        User user = new User(registrationVo)
        user.save(flush: true, failOnError: true)

        println registrationVo.authority
        Role role = Role.findByAuthority(registrationVo.authority)
        println role
        new UserRole(role: role, user: user).save(flush: true, failOnError: true)
        redirect action: "index"
    }

    def createUsername() {
        JSONElement data = JSON.parse(params.data as String)
        String username = data.name + (data.surname ? "." + data.surname : "")
        User user = User.findByUsername(username)
        while (user) {
            int random = new Random().nextInt(99)
            username += random
            user = User.findByUsername(username)
        }
        render (contentType: "application/json") {["username" : username]}
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'registration.label', default: 'Registration'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
