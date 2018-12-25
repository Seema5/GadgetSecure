package roles

class DealerMapping {

    String distributorId
    String delaerId

    static constraints = {
        distributorId(nullable: false)
        delaerId(nullable: false)
    }
}
