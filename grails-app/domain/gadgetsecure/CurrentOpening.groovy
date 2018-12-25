package gadgetsecure

class CurrentOpening {
    String title
    String location
    String experiance
    String date
    String detail

    static constraints = {
        title(nullable: false)
        location(nullable: false)
        experiance(nullable: false)
        date(nullable: false)
        detail(nullable: false)
    }
}
