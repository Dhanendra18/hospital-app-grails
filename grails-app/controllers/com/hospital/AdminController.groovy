package com.hospital

import grails.plugin.springsecurity.annotation.Secured

@Secured("hasRole('admin')")
class AdminController {

    def index() { }

    def showAgent(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        Role roleAgent = Role.findByAuthority("agent")
        ArrayList<User> userList =  UserRole.findAllByRole(roleAgent, params)*.getUser()
        respond userList, model:[userInstanceCount: UserRole.countByRole(roleAgent)]
    }

    def showHCP(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        Role roleAgent = Role.findByAuthority("hcp")
        ArrayList<User> userList =  UserRole.findAllByRole(roleAgent, params)*.getUser()
        respond userList, model:[userInstanceCount: UserRole.countByRole(roleAgent)]
    }
}
