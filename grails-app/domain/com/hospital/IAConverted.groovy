package com.hospital

class IAConverted {
    String service
    String servicePackageOffered
    String numberOfDays
    String cost
    String totalCost
    String totalDiscountAvailable
    String totalPackageCost

    static constraints = {
        service blank: true , nullable: true
        servicePackageOffered blank: true , nullable: true
        numberOfDays blank: true , nullable: true
        cost blank: true , nullable: true
        totalCost blank: true , nullable: true
        totalDiscountAvailable blank: true , nullable: true
        totalPackageCost blank: true , nullable: true
    }
}
