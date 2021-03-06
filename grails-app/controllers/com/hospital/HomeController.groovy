package com.hospital

import grails.plugin.springsecurity.annotation.Secured

@Secured("isFullyAuthenticated()")
class HomeController {

    def springSecurityService

    def index() {
        def authorities = springSecurityService.getAuthentication().authorities

        println "======================"+ authorities
        println "======================"+ authorities*.toString().contains("admin")
        if (authorities*.toString().contains("admin")) {
            forward(controller: "patient", action: "index")
//        } else if (authorities*.toString().contains("agent")){
            forward(controller: "patient", action: "index")
        } else if (authorities*.toString().contains("hcp")){
            forward(controller: "doctor", action: "index")
        } else {
            render "Error, please contact the customer support if the problem persist"
        }
    }

    def admin() {

    }

    def agent() {
        render "under construction"
    }

    def hcp() {
        render "under construction"
    }
}
