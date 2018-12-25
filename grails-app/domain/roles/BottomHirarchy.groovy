package roles

class BottomHirarchy {

    String topUserId
    String userType
    String userId

    static constraints = {
        topUserId(nullable: false)
        userType(nullable: false)
        userId(nullable: false)
    }
}
