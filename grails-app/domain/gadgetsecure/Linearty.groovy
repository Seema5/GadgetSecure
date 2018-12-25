package gadgetsecure

class Linearty {

    String distributorId
    String month
    String year

    static constraints = {
        distributorId(nullable: false)
        month(nullable: false)
        year(nullable: false)
    }
}
