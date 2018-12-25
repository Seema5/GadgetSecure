package gadgetsecure

class GadgetPlans {

    String planName
    String planValue

    static constraints = {

        planName(nullable: false)
        planValue(nullable: false)
    }
}
