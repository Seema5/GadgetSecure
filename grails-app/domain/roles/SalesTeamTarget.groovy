package roles

class SalesTeamTarget {
    String salesTeamId
    String dealerId
    String startDate
    String endDate
    String target

    static constraints = {
        salesTeamId(nullable: false)
        dealerId(nullable: false)
        startDate(nullable: false)
        endDate(nullable: false)
        target(nullable: false)
    }
}
