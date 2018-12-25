package roles

class CompanySalesHeadMapping {

    String regionalSalesManagerId
    String companySalesHeadId

    static constraints = {
        regionalSalesManagerId(nullable: false)
        companySalesHeadId(nullable: false)
    }
}
