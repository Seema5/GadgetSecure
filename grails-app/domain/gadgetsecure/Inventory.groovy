package gadgetsecure

class Inventory {

    String totalStock
    String availableStock

    static constraints = {
        totalStock(nullable: false)
        availableStock(nullable: false)
    }
}
