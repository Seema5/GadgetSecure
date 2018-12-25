package roles

class DealerTarget {

    String dealerId
    String distributorId
    String startDate
    String endDate
    String target

    static constraints = {
        distributorId(nullable: false)
        dealerId(nullable: false)
        startDate(nullable: false)
        endDate(nullable: false)
        target(nullable: false)
    }
}
