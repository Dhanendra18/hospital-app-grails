package com.hospital

import grails.validation.Validateable

@Validateable
class RegistrationVo {
    String name
    String surname
    String username
    String authority
    String password
    String contactNumber
    String profile

    static constants = {
        name nullable: false, blank: false
        surname nullable: true, blank: true
        username nullable: false, blank: false
        authority nullable: false, blank: false
        password nullable: false, blank: false
        contactNumber nullable: false, blank: false
        profile nullable: false, blank: false
    }

}
