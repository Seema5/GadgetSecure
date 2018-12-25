package gadgetsecure

class JobApplication {

    String name
    String email
    String mobile
    String altMobile
    String aadhar
    String pin
    String resume
    String state

    static constraints = {
        name(nullable: false)
        email(nullable: false)
        mobile(nullable: false)
        altMobile(nullable: false)
        aadhar(nullable: false)
        pin(nullable: false)
        resume(nullable: false)
        state(nullable: false)
    }
}
