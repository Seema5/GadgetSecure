package roles

class TopHirarchy {

    String userID
    String userType

    static constraints = {
        userID(nullable: false)
        userType(nullable: false)
    }
}
