package gadgetsecure

class ExtendedWarrantyGadgets {

    String customerName
    String email
    String mobile
    String deviceValue
    String brand
    String website
    String dateOfInvoice


    static constraints = {

        customerName(nullable: false)
        email(nullable: false)
        mobile(nullable: false)
        deviceValue(nullable: false)
        brand(nullable: false)
        website(nullable: false)
        dateOfInvoice(nullable: false)


    }
}
