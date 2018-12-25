package gadgetsecure

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import roles.CompanySalesHeadMapping
import roles.CompanySalesHeadTarget
import roles.DistributorMapping
import roles.DistributorTarget
import roles.RsmTarget
import roles.Users

import java.text.DecimalFormat
import java.text.SimpleDateFormat
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

class RegionalSalesManagerController {

    @Secured(['ROLE_ANONYMOUS'])
    def index() { }

    @Secured(['ROLE_ANONYMOUS'])
    def getCompanySalesHead(){
        def data = []

        def csh = CompanySalesHeadMapping.findAllByRegionalSalesManagerId(params.rsm).companySalesHeadId
        for (int i = 0; i<csh.size(); i++){
            data.push(Users.findAllById(csh[i]))
        }

        render data as JSON


    }

    @Secured(['ROLE_ANONYMOUS'])
    def saveCompanySalesHead(){

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

        CompanySalesHeadMapping csh = new CompanySalesHeadMapping()
        csh.regionalSalesManagerId = params.rsmId
        csh.companySalesHeadId = Users.findByAadharAndGstnAndPan(params.aadhar, params.gstn, params.pan).id.toString()
        csh.save()

        render "success"

    }

    @Secured(['ROLE_ANONYMOUS'])
    def saveTarget(){
        println('[PARAMS] '+params)

        CompanySalesHeadTarget target = new CompanySalesHeadTarget()
        target.startDate = params.startDate
        target.endDate = params.endDate
        target.target = params.target
        target.companySalesHeadId = Users.findByEmail(params.csh).id.toString()
        target.regionalSalesManagerId = Users.findByEmail(params.rsm).id.toString()
        target.save()

        render "success"
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getTableProgressBarData(){
        println("[PARAMS] "+params)

        def totalTarget = CompanySalesHeadTarget.findByCompanySalesHeadId(Users.findByEmail(params.csh).id).target
        def completedTarget = GadgetsRoleInvolved.findAllByRegionalSalesManagerAndCompanySalesHead(params.rsm, params.csh).policyNumber

        def data = (Float.parseFloat(completedTarget.size().toString()) * 100) / Float.parseFloat(totalTarget.toString())


//        render new DecimalFormat("##.##").format(data)
        render data
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getPieChartData(){
        println("[PARAMS] "+params)
        def data = []
        def completedTarget = 0

        def target = CompanySalesHeadTarget.findByCompanySalesHeadId(Users.findByEmail('csh1@isrdaes.com').id).target.toInteger()
        def gadgetsSold = GadgetsRoleInvolved.findAllByRegionalSalesManagerAndCompanySalesHead(params.rsm, Users.findById(params.csh).email)
        for(int i = 0;i < gadgetsSold.size(); i++){
            completedTarget = completedTarget + Long.parseLong(GadgetPlans.findByPlanName(Gadgets.findByPolicyNumber(gadgetsSold[i].policyNumber).insurancePlan).planValue)
        }

        data.push(target)
        data.push(completedTarget)
        render data as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getRegistrationsByRsm(){
        println("[PARAMS] "+params)
        def data = []
        def policies = GadgetsRoleInvolved.findAllByCompanySalesHead(Users.findById(params.distributor).email).policyNumber
        for (int i = 0; i < policies.size(); i++){
            data.add(Gadgets.findByPolicyNumber(policies[i]))
        }

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
            data = GadgetsRoleInvolved.countByRegistrationDateAndCompanySalesHead(now.minusDays(i).format(format), Users.findById(params.distributor).email)
            dataBar.put(now.minusDays(i).format(format),data)
            println(data.toString())
        }

//        def data = Gadgets.findAllByRegistrationDateBetweenAndSubmittedBy(then, now, params.salesteam)

        render dataBar as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getPieChartDataByCategory(){


        println("[PARAMS] "+params)
        def data = [:]
        def cat = []

        def android = 0
        def windows = 0
        def other = 0
        def policies = GadgetsRoleInvolved.findAllByRegionalSalesManager(params.distributor).policyNumber

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
            data = GadgetsRoleInvolved.countByRegistrationDateAndCompanySalesHead(new SimpleDateFormat("yyyy-MM-dd").format(dateAfter.minus(i)), Users.findById(params.distributor).email)
            dataBar.put(new SimpleDateFormat("yyyy-MM-dd").format(dateAfter.minus(i)),data)
            println(data.toString())
        }

//        def data = Gadgets.findAllByRegistrationDateBetweenAndSubmittedBy(then, now, params.salesteam)

        render dataBar as JSON

    }



    @Secured(['ROLE_ANONYMOUS'])
    def getCompanySalesHeadDetails(){
        def data = []

        def csh = CompanySalesHeadMapping.findAllByRegionalSalesManagerId(Users.findById(params.rsm).email).companySalesHeadId
        for (int i = 0; i<csh.size(); i++){
            data.push(Users.findAllById(csh[i]))
        }

        render data as JSON


    }

    @Secured(['ROLE_ANONYMOUS'])
    def getCshTargetDetail(){

        def data = []

        def value = 0

        def total = CompanySalesHeadTarget.findByCompanySalesHeadId(params.csh).target
        data.add(total)

        def completed = GadgetsRoleInvolved.findAllByCompanySalesHead(Users.findById(params.csh).email).policyNumber

        for(int i = 0; i<completed.size(); i++){
            value = value + Integer.parseInt(GadgetPlans.findByPlanName(Gadgets.findByPolicyNumber(completed[i]).insurancePlan).planValue)
        }

        data.add(value)

        render data as JSON

    }





}
