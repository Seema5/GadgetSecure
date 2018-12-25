package gadgetsecure

class Rewards {

    String startDate
    String enddate
    String rewardType
    String rewardDetails

    static constraints = {
        startDate(nullable: true)
        enddate(nullable: true)
        rewardType(nullable: true)
        rewardDetails(nullable: true)

    }
}
