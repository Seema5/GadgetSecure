package roles

class CompanySalesHeadTarget {

    String companySalesHeadId
    String regionalSalesManagerId
    String startDate
    String endDate
    String target

    static constraints = {
        regionalSalesManagerId(nullable: false)
        companySalesHeadId(nullable: false)
        startDate(nullable: false)
        endDate(nullable: false)
        target(nullable: false)

    }
}
