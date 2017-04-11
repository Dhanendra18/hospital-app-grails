package com.hospital

class IABooking {

    Date date
    String timeSlot
    // Create a enum
    String location
    // better to create a different domain as it should be dynamic or create enum
    User therapistName

    Patient patient
    BookingStatus status

    static constraints = {
        date blank: true, nullable: true
        timeSlot blank: true, nullable: true
        location blank: true, nullable: true
        therapistName blank: true, nullable: true
        patient blank: true, nullable: true
        status blank: true, nullable: true
    }
}
