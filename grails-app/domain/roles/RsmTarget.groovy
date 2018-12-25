package roles

class RsmTarget {

    String startDate
    String endDate
    String targetValue
    String regionalSalesManager

    static constraints = {
        startDate(nullable: false)
        startDate(nullable: false)
        endDate(nullable: false)
        regionalSalesManager(nullable: false)
    }
}
