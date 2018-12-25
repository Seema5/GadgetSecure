package gadgetsecure

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import roles.DistributorMapping
import roles.DistributorTarget
import roles.Users

import java.text.DecimalFormat
import java.text.SimpleDateFormat
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

class CompanySalesHeadController {

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

        DistributorMapping dm = new DistributorMapping()
        dm.companySalesHeadId = params.CompanySalesHead
        dm.distributorId = Users.findByAadharAndGstnAndPan(params.aadhar, params.gstn, params.pan).id.toString()
        dm.save()
        render "success"
    }

    @Secured(['ROLE_ANONYMOUS'])
    def saveTarget(){
        DistributorTarget stt = new DistributorTarget()
        stt.companySalesHeadId = params.csh
        stt.distributorId = params.distributor
        stt.target = params.target
        stt.endDate = params.endDate
        stt.startDate = params.startDate
        stt.save()

        render "success"

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDistributor(){

        def data = []

        def distributor = DistributorMapping.findAllByCompanySalesHeadId(params.CompanySalesHead).distributorId
        for (int i = 0; i<distributor.size(); i++){
            data.push(Users.findAllById(distributor[i]))
        }

        render data as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getTableProgressBarData(){

        println("[PARAMS] "+params)

        def totalTarget = DistributorTarget.findAllByDistributorId(params.distributor).target
        def completedTarget = GadgetsRoleInvolved.findAllByDistributorAndCompanySalesHead(params.distributor, params.csh).policyNumber

        def data = (Long.parseLong(completedTarget.size().toString()) * 100) / Long.parseLong(totalTarget[0].toString())


        render new DecimalFormat("##.##").format(data)

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getPieChartData(){
        println("[PARAMS] "+params)
        def data = []
        def completedTarget = 0

        def target = DistributorTarget.findByDistributorId(Users.findById(params.distributor).email).target.toInteger()
        def gadgetsSold = GadgetsRoleInvolved.findAllByDistributorAndCompanySalesHead(Users.findById(params.distributor).email, params.csh)
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
            data = GadgetsRoleInvolved.countByRegistrationDateAndDistributor(now.minusDays(i).format(format), Users.findById(params.distributor).email)
            dataBar.put(now.minusDays(i).format(format),data)
            println(data.toString())
        }



        render dataBar as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getRegistrationsByDistributor(){
        println("[PARAMS] "+params)
        def data = []
        def policies = GadgetsRoleInvolved.findAllByDistributor(Users.findById(params.distributor).email).policyNumber
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
        def policies = GadgetsRoleInvolved.findAllByCompanySalesHead(params.distributor).policyNumber

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

        for (int i = 1; i <=daysBetween ;i++){i
//            println(new SimpleDateFormat("yyyy-MM-dd").format(dateBefore.minus(i)))
            data = GadgetsRoleInvolved.countByRegistrationDateAndDistributor(new SimpleDateFormat("yyyy-MM-dd").format(dateAfter.minus(i)), Users.findById(params.distributor).email)
            dataBar.put(new SimpleDateFormat("yyyy-MM-dd").format(dateAfter.minus(i)),data)
            println(data.toString())
        }



        render dataBar as JSON

    }
}
