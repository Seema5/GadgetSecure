package gadgetsecure

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import roles.DealerMapping
import roles.DealerTarget
import roles.DistributorMapping
import roles.SalesTeamMapping
import roles.SalesTeamTarget
import roles.Users

import java.text.SimpleDateFormat
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

class DealerController {

    @Secured(['ROLE_ANONYMOUS'])
    def index() { }

    @Secured(['ROLE_ANONYMOUS'])
    def saveSalesTeam(){
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

        SalesTeamMapping stm = new SalesTeamMapping()
        stm.dealerId = params.dealerId
        stm.salesTeamId = Users.findByAadharAndGstnAndPan(params.aadhar, params.gstn, params.pan).id.toString()
        stm.save()

        render "success"
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getSalesTeam(){

        def result = []

        def list = SalesTeamMapping.findAllByDealerId(params.dealer).salesTeamId

        for (int i=0; i<list.size(); i++){
            def r = Users.findAllById(list[i])
            result.add(r)
        }

        render result as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def setTarget(){
        SalesTeamTarget stt = new SalesTeamTarget()
        stt.startDate = params.startDate
        stt.endDate = params.endDate
        stt.target = params.target
        stt.dealerId = params.dealer
        stt.salesTeamId = params.salesteam
        stt.save()
        render "success"
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getPieChartData(){
        println("[PARAMS] "+params)
        def data = []
        def completedTarget = 0

        def target = DealerTarget.findByDealerId(params.dealer).target.toInteger()
        def gadgetsSold = GadgetsRoleInvolved.findAllBySalesTeamAndDealer(params.salesteam, params.dealer)
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
        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        now = now.plusDays(1)
        LocalDateTime then = now.minusDays(7);

        for (int i = 1; i<=7;i++){
            data = Gadgets.countByRegistrationDateAndSubmittedBy(now.minusDays(i).format(format), params.salesteam)
            dataBar.put(now.minusDays(i).format(format),data)
            println(data.toString())
        }

//        def data = Gadgets.findAllByRegistrationDateBetweenAndSubmittedBy(then, now, params.salesteam)

        render dataBar as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def updateBarChartData(){

        SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd");
        String dateBeforeString = params.startDate;
        String dateAfterString = params.endDate;
        long daysBetween
        Date dateBefore
        Date dateAfter


        try {
            dateBefore = myFormat.parse(dateBeforeString);
            dateAfter = myFormat.parse(dateAfterString);
            dateAfter = dateAfter.plus(1)
            long difference = dateAfter.getTime() - dateBefore.getTime();
            daysBetween = (difference / (1000*60*60*24));
            System.out.println("Number of Days between dates: "+daysBetween);
        } catch (Exception e) {
            e.printStackTrace();
        }


        def dataBar = [:]
        def data
        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();

        for (int i = 1; i <=daysBetween ;i++){
//            println(new SimpleDateFormat("yyyy-MM-dd").format(dateBefore.minus(i)))
            data = Gadgets.countByRegistrationDateAndSubmittedBy(new SimpleDateFormat("yyyy-MM-dd").format(dateAfter.minus(i)), params.salesteam)
            dataBar.put(new SimpleDateFormat("yyyy-MM-dd").format(dateAfter.minus(i)),data)
            println(data.toString())
        }

//        def data = Gadgets.findAllByRegistrationDateBetweenAndSubmittedBy(then, now, params.salesteam)

        render dataBar as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDealerDetails(){
        def data = []
        println(params.csh)
        def csh = DealerMapping.findAllByDistributorId(Users.findById(params.distributor).email).delaerId
        for (int i = 0; i<csh.size(); i++){
            data.push(Users.findAllById(csh[i]))
        }

        render data as JSON

    }


    @Secured(['ROLE_ANONYMOUS'])
    def getDealerTargetDetail(){

        def data = []

        def value = 0

        def total = DealerTarget.findByDealerId(Users.findById(params.distributor).email).target
        data.add(total)

        def completed = GadgetsRoleInvolved.findAllByDealer(Users.findById(params.distributor).email).policyNumber

        for(int i = 0; i<completed.size(); i++){
            value = value + Integer.parseInt(GadgetPlans.findByPlanName(Gadgets.findByPolicyNumber(completed[i]).insurancePlan).planValue)
        }

        data.add(value)

        render data as JSON

    }



}
