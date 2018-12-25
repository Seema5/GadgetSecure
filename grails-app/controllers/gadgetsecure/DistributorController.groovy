package gadgetsecure

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import roles.DealerMapping
import roles.DealerTarget
import roles.DistributorMapping
import roles.DistributorTarget
import roles.SalesTeamMapping
import roles.Users

import java.text.SimpleDateFormat
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

class DistributorController {

    @Secured(['ROLE_ANONYMOUS'])
    def index() { }

    @Secured(['ROLE_ANONYMOUS'])
    def saveDistributor(){
        println("[params] " + params)
        Users user = new Users()
        user.fname = params.fname
        user.lname = params.lname
        user.address = params.address
        user.email = params.email
        user.userType = params.userType
        user.mobile = params.mobile
        user.password = params.password
        user.city = params.city
        user.state = params.state
        user.pincode = params.pincode
        user.altmobile = params.altmobile
        user.gstn = params.gstn
        user.aadhar = params.aadhar
        user.firmName = params.firmname
        user.pan = params.pan
        user.save()

        DealerMapping dm = new DealerMapping()
        dm.delaerId = Users.findByAadharAndGstnAndPan(params.aadhar, params.gstn, params.pan).id.toString()
        dm.distributorId = params.distributorId
        dm.save()

        render "success"
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDealers(){
        def data = []
        def dealerId = DealerMapping.findAllByDistributorId(params.distributor).delaerId


        for (int i = 0; i < dealerId.size(); i++){
            data.add(Users.findById(dealerId[i].toString()))
        }


        render data as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def setTarget(){
        DealerTarget stt = new DealerTarget()
        stt.startDate = params.startDate
        stt.endDate = params.endDate
        stt.target = params.target
        stt.dealerId = params.dealer
        stt.distributorId = params.distributor
        stt.save()
        render "success"
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getPieChartData(){
        println("[PARAMS] "+params)
        def data = []
        def completedTarget = 0

        def target = DealerTarget.findByDealerId(Users.findById(params.dealer).email).target.toInteger()
        def gadgetsSold = GadgetsRoleInvolved.findAllByDealerAndDistributor(Users.findById(params.dealer).email, params.distributor)

        for(int i = 0;i < gadgetsSold.size(); i++){
            completedTarget = completedTarget + Long.parseLong(GadgetPlans.findByPlanName(Gadgets.findByPolicyNumber(gadgetsSold[i].policyNumber).insurancePlan).planValue)
        }


        data.push(target)
        data.push(completedTarget)
        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getBarChartData(){

        def dataBar = [:]
        def data
        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd")
        LocalDateTime now = LocalDateTime.now()
        now = now.plusDays(1)
        LocalDateTime then = now.minusDays(7)

        for (int i = 1; i<=7;i++){
            data = GadgetsRoleInvolved.countByRegistrationDateAndDealer(now.minusDays(i).format(format), Users.findById(params.dealer).email)
            dataBar.put(now.minusDays(i).format(format),data)
            println(data.toString())
        }

//        def data = Gadgets.findAllByRegistrationDateBetweenAndSubmittedBy(then, now, params.salesteam)

        render dataBar as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def updateBarChartData(){

        SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd")
        String dateBeforeString = params.startDate
        String dateAfterString = params.endDate
        long daysBetween
        Date dateBefore
        Date dateAfter


        try {
            dateBefore = myFormat.parse(dateBeforeString)
            dateAfter = myFormat.parse(dateAfterString)
            dateAfter = dateAfter.plus(1)
            long difference = dateAfter.getTime() - dateBefore.getTime()
            daysBetween = (difference / (1000*60*60*24))
            System.out.println("Number of Days between dates: "+daysBetween)
        } catch (Exception e) {
            e.printStackTrace()
        }


        def dataBar = [:]
        def data
        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd")
        LocalDateTime now = LocalDateTime.now()

        for (int i = 1; i <=daysBetween ;i++){
//            println(new SimpleDateFormat("yyyy-MM-dd").format(dateBefore.minus(i)))
            data = GadgetsRoleInvolved.countByRegistrationDateAndDealer(new SimpleDateFormat("yyyy-MM-dd").format(dateAfter.minus(i)), Users.findById(params.dealer).email)
            dataBar.put(new SimpleDateFormat("yyyy-MM-dd").format(dateAfter.minus(i)),data)
            println(data.toString())
        }

//        def data = Gadgets.findAllByRegistrationDateBetweenAndSubmittedBy(then, now, params.salesteam)

        render dataBar as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getTableProgressBarData(){
        println(params)

        def dealerTarget = DealerTarget.findByDealerId(params.dealer)
        if (dealerTarget != null) {

            def salesTeam = SalesTeamMapping.findAllByDealerId(params.dealer)
            def completed = 0

            for (int i = 0; i < salesTeam.size(); i++) {
                completed = completed + GadgetsRoleInvolved.countBySalesTeam(Users.findById(salesTeam[i].salesTeamId).email)
            }

            def temp = (Long.parseLong(completed.toString()) * 100) / Long.parseLong(dealerTarget.target.toString())
            render temp

        }
        else{
            render "0"
        }

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getRegistrationsByDealer(){
        println("[PARAMS] "+params)
        def data = []
        def policies = GadgetsRoleInvolved.findAllByDealer(Users.findById(params.dealer).email).policyNumber
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
        def policies = GadgetsRoleInvolved.findAllByDistributor(params.distributor).policyNumber

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
    def getDistributorDetails(){


        def data = []
        println(params.csh)
        def csh = DistributorMapping.findAllByCompanySalesHeadId(Users.findById(params.csh).email).distributorId
        for (int i = 0; i<csh.size(); i++){
            data.push(Users.findAllById(csh[i]))
        }

        render data as JSON



    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDistributorTargetDetail(){

        def data = []

        def value = 0

        def total = DistributorTarget.findByDistributorId(Users.findById(params.distributor).email).target
        data.add(total)

        def completed = GadgetsRoleInvolved.findAllByDistributor(Users.findById(params.distributor).email).policyNumber

        for(int i = 0; i<completed.size(); i++){
            value = value + Integer.parseInt(GadgetPlans.findByPlanName(Gadgets.findByPolicyNumber(completed[i]).insurancePlan).planValue)
        }

        data.add(value)

        render data as JSON

    }


}
