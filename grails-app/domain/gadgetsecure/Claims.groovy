package gadgetsecure

class Claims {

    String policyNumber
    String aadhar
    String pan
    String description
    String incidentDate
    String registeredBy
    String claimDate

    static constraints = {
        policyNumber(nullable: false)
        aadhar(nullable: false)
        pan(nullable: false)
        description(nullable: false)
        incidentDate(nullable: false)
        registeredBy(nullable: false)
        claimDate(nullable: false)
    }
}
