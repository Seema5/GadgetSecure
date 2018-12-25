package roles

class Users {

    String fname
    String lname
    String email
    String mobile
    String altmobile
    String address
    String state
    String city
    String pincode
//    String role
    String password
    String userType

    String gstn
    String aadhar
    String firmName
    String pan

    static constraints = {

        fname(nullable: false)
        lname(nullable: false)
        email(nullable: false)
        mobile(nullable: false)
        altmobile(nullable: true)
        address(nullable: false)
        state(nullable: false)
        city(nullable: false)
        pincode(nullable: false)
//        role(nullable: false)
        password(nullable: false)
        userType(nullable: false)

        gstn(nullable: true)
        aadhar(nullable: false)
        firmName(nullable: false)
        pan(nullable: true)

    }
}
