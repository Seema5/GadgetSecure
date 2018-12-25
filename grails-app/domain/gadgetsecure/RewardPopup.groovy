package gadgetsecure

class RewardPopup {
    String role
    String popupImagePath

    static constraints = {
        role(nullable: false)
        popupImagePath(nullable: false, maxSize: 1000)
    }
}
