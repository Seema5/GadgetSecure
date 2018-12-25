package gadgetsecure

class GadgetsRoleInvolved {

    String policyNumber
    String regionalSalesManager
    String companySalesHead
    String distributor
    String dealer
    String salesTeam
    String registrationDate

    static constraints = {
        policyNumber(nullable: false)
        regionalSalesManager(nullable: false)
        companySalesHead(nullable: false)
        distributor(nullable: false)
        dealer(nullable: false)
        salesTeam(nullable: false)
        registrationDate(nullable: false)
    }
}
