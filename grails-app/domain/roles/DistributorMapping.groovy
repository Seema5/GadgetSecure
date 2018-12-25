package roles

class DistributorMapping {

    String companySalesHeadId
    String distributorId

    static constraints = {
        companySalesHeadId(nullable: false)
        distributorId(nullable: false)
    }
}
