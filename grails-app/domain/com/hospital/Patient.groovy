package com.hospital

class Patient {

    String name
    String surname
    Date dateOfBirth
    String serviceRequired
    String diagnosis
    String contactNumber
    String email
    String source
    String keyword

    String nokName
    String nokSurname
    String nokRelation
    String nokContactNo
    String nokEmail

    String homeLocation
    String homePin
    String homeState
    String officeLocation
    String officePin
    String officeState

    String clinicalDetails
    String historyOfDisease
    String consultDoctor
    String hospitalName

    IABooking aiBooked
    IAConverted aiConverted
    String aiCancelled



    Date dateCreated
    Date dateModified
    User createdBy


    static constraints = {
        name(nullable: false, blank: false)
        surname(nullable: true, blank: true)
        dateOfBirth(nullable: true, blank: true)
        serviceRequired(nullable: true, blank: true)
        diagnosis(nullable: true, blank: true)
        contactNumber(nullable: true, blank: true)
        email(nullable: true, blank: true)
        source(nullable: true, blank: true)
        keyword(nullable: true, blank: true)
        nokName(nullable: true, blank: true)
        nokSurname(nullable: true, blank: true)
        nokRelation(nullable: true, blank: true)
        nokContactNo(nullable: true, blank: true)
        nokEmail(nullable: true, blank: true)
        homeLocation(nullable: true, blank: true)
        homePin(nullable: true, blank: true)
        homeState(nullable: true, blank: true)
        officeLocation(nullable: true, blank: true)
        officePin(nullable: true, blank: true)
        officeState(nullable: true, blank: true)
        clinicalDetails(nullable: true, blank: true)
        historyOfDisease(nullable: true, blank: true)
        consultDoctor(nullable: true, blank: true)
        hospitalName(nullable: true, blank: true)
        aiBooked(nullable: true, blank: true)
        aiConverted(nullable: true, blank: true)
        aiCancelled(nullable: true, blank: true)
        dateModified nullable: true, blank: true
    }
}
