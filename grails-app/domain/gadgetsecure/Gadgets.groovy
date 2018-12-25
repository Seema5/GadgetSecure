package gadgetsecure

class Gadgets {

    String insurancePlan
    String customerName
    String gender
    String address
    String state
    String city
    String pincode
    String dob
    String mobile
    String altMobile
    String email
    String purchaseType
    String purchaseFrom
    String invoiceNumber
    String invoiceValue
    String deviceType
    String dop
    String brand
    String model
    String imeiMacSerial

    String submittedBy

    String policyNumber

    String status

    String registrationDate


    static constraints = {
        insurancePlan(nullable: false)
        customerName(nullable: false)
        gender(nullable: false)
        address(nullable: false)
        state(nullable: false)
        city(nullable: false)
        pincode(nullable: false)
        dob(nullable: false)
        mobile(nullable: false)
        altMobile(nullable: true)
        email(nullable: false)
        purchaseType(nullable: false)
        purchaseFrom(nullable: false)
        invoiceNumber(nullable: false)
        invoiceValue(nullable: false)
        deviceType(nullable: false)
        dop(nullable: false)
        brand(nullable: false)
        model(nullable: false)
        imeiMacSerial(nullable: false)

        policyNumber(nullable: false)
        submittedBy(nullable: false)

        status(nullable: false)

        registrationDate(nullable: false)
    }
}
