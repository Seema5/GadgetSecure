package roles

class SalesTeamMapping {

    String dealerId
    String salesTeamId

    static constraints = {
        dealerId(nullable: false)
        salesTeamId(nullable: false)
    }
}
