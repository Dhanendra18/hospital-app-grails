package com.hospital

class DoctorVisit {
    Date visitStartTime
    Date visitEndTime
    IABooking iaBooking
    String comments

    User hcp

    static constraints = {
        visitEndTime nullable: true, blank: true
        comments nullable: true, blank: true
    }
}
