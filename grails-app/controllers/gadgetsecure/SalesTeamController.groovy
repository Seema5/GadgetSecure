package gadgetsecure

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import roles.SalesTeamTarget
import roles.Users

import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

class SalesTeamController {

    @Secured(['ROLE_ANONYMOUS'])
    def index() { }

    @Secured(['ROLE_ANONYMOUS'])
    def getPieChartData(){

        println("[PARAMS] "+params)
        def data = []
        def completedTarget = 0

        def target = SalesTeamTarget.findBySalesTeamId(params.salesteam).target.toInteger()

        def gadgetsSold = GadgetsRoleInvolved.findAllBySalesTeam(params.salesteam)
        for(int i = 0;i < gadgetsSold.size(); i++){
            completedTarget = completedTarget + Long.parseLong(GadgetPlans.findByPlanName(Gadgets.findByPolicyNumber(gadgetsSold[i].policyNumber).insurancePlan).planValue)
        }

        data.push(target)
        data.push(completedTarget)
        render data as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getRegistrationBySales(){
        println("[PARAMS] "+params)
        def data = []
        def policies = GadgetsRoleInvolved.findAllBySalesTeam(Users.findByEmail(params.salesteam).email).policyNumber
        for (int i = 0; i < policies.size(); i++){
            data.add(Gadgets.findByPolicyNumber(policies[i]))
        }
        render data as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getPieChartDataByCategory(){

        println("[PARAMS] "+params)
        def data = [:]
        def cat = []

        def android = 0
        def windows = 0
        def other = 0
        def policies = GadgetsRoleInvolved.findAllBySalesTeam(params.salesteam).policyNumber

        for (int i = 0 ; i < policies.size(); i++){
            cat.push(Gadgets.findByPolicyNumber(policies[i]).deviceType)
        }

        for (int i = 0 ; i < cat.size(); i++){
            if (cat[i] == 'android'){
                android++
            }
            if (cat[i] == 'windows'){
                windows++
            }
            if (cat[i] == 'other'){
                other++
            }
        }

        data.put("Android", android)
        data.put("Windows", windows)
        data.put("other", other)

        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getBarChartData(){

        def dataBar = [:]
        def data
        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        now = now.plusDays(1)
        LocalDateTime then = now.minusDays(7);

        for (int i = 1; i<=7;i++){
            data = GadgetsRoleInvolved.countByRegistrationDateAndSalesTeam(now.minusDays(i).format(format), params.sales)
            dataBar.put(now.minusDays(i).format(format),data)
            println(data.toString())
        }

//        def data = Gadgets.findAllByRegistrationDateBetweenAndSubmittedBy(then, now, params.salesteam)

        render dataBar as JSON

    }
}
