package roles

class UserType {

    String userType

    static constraints = {
        userType(nullable: false)
    }
}
