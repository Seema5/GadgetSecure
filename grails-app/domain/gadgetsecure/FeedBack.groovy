package gadgetsecure

class FeedBack {

    String review
    String rating

    static constraints = {
        review(nullable: false)
        rating(nullable: false)
    }
}
