package roles

class DistributorTarget {

    String distributorId
    String companySalesHeadId
    String startDate
    String endDate
    String target

    static constraints = {
        distributorId(nullable: false)
        companySalesHeadId(nullable: false)
        startDate(nullable: false)
        endDate(nullable: false)
        target(nullable: false)
    }
}
