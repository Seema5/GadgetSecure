package gadgetsecure

class Targets {

    String userId
    String totalTarget
    String remainingTarget
    String startDate
    String endDate

    static constraints = {
        userId(nullable: false)
        totalTarget(nullable: false)
        remainingTarget(nullable: false)
        startDate(nullable: false)
        endDate(nullable: false)
    }
}
