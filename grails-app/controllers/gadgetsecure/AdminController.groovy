package gadgetsecure

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import org.grails.io.support.ResourceLoader
import roles.BottomHirarchy
import roles.CompanySalesHeadTarget
import roles.DealerMapping
import roles.DealerTarget
import roles.DistributorMapping
import roles.DistributorTarget
import roles.RsmTarget
import roles.SalesTeamTarget
import roles.UserType
import roles.Users

import javax.annotation.Resource
import javax.servlet.http.HttpServletRequest
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths
import java.text.SimpleDateFormat
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

class AdminController {

    def sendInvoiceEmailService

    ResourceLoader resourceLoader

    @Secured(['ROLE_ANONYMOUS'])
    def index() {}

    @Secured(['ROLE_ANONYMOUS'])
    def login() {}

    @Secured(['ROLE_ANONYMOUS'])
    def adminDashboard() {}

    @Secured(['ROLE_ANONYMOUS'])
    def getDistributor() {

        def data = Users.findAllByUserType(UserType.findById(2).id)
        println(data)
        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getSubDistributor() {

        def data = Users.findAllByUserType(UserType.findById(3).id)
        println(data)
        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDealer() {

        def data = Users.findAllByUserType(UserType.findById(4).id)
        println(data)
        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getRetailer() {
        def data = Users.findAllByUserType(UserType.findById(5).id)
        println(data)
        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getSalesHead() {

        def data = Users.findAllByUserType(UserType.findById(6).id)
        println(data)
        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getSalesTeam() {

        def data = Users.findAllByUserType(UserType.findById(7).id)
        println(data)
        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def saveUser() {
        println('[PARAMS] ' + params)
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
        render "success"
    }

//updates bottom hirarchy for distributor
    @Secured(['ROLE_ANONYMOUS'])
    def updateSubdistributor() {
        println('[PARAMS] ' + params)

        def distributor = Users.findById(params.distributor)

        String sdl = params.subdistributors

        String[] subdistributorArray = sdl.split(',')

        subdistributorArray.eachWithIndex { item, i ->
            println("Processing Distributor: " + subdistributorArray[i])
            if (BottomHirarchy.findByTopUserIdAndUserIdAndUserType(distributor.id, subdistributorArray[i], UserType.findById(3).id) == null) {
                new BottomHirarchy(topUserId: distributor.id, userType: UserType.findById(3).id, userId: subdistributorArray[i]).save()
            }
        }

        render "success"
    }

    //updates bottom hirarchy for sub-distributor
    @Secured(['ROLE_ANONYMOUS'])
    def updateDelaer() {
        println('[PARAMS] ' + params)

        def dealer = Users.findById(params.subdistributor)

        String sdl = params.dealers

        String[] dealersArray = sdl.split(',')

        dealersArray.eachWithIndex { item, i ->
            println("Processing Dealer: " + dealersArray[i])
            if (BottomHirarchy.findByTopUserIdAndUserIdAndUserType(dealer.id, dealersArray[i], UserType.findById(4).id) == null) {
                new BottomHirarchy(topUserId: dealer.id, userType: UserType.findById(4).id, userId: dealersArray[i]).save()
            }
        }

        render "success"
    }

//    update retailers for dealers
    @Secured(['ROLE_ANONYMOUS'])
    def updateRetailer() {
        println('[PARAMS] ' + params)

        def dealer = Users.findById(params.dealer)

        String sdl = params.retailers

        String[] dealersArray = sdl.split(',')

        dealersArray.eachWithIndex { item, i ->
            println("Processing Dealer: " + dealersArray[i])
            if (BottomHirarchy.findByTopUserIdAndUserIdAndUserType(dealer.id, dealersArray[i], UserType.findById(5).id) == null) {
                new BottomHirarchy(topUserId: dealer.id, userType: UserType.findById(5).id, userId: dealersArray[i]).save()
            }
        }

        render "success"

    }

    @Secured(['ROLE_ANONYMOUS'])
    def updateSalesHead() {
        println('[PARAMS] ' + params)

        def dealer = Users.findById(params.retailer)

        String sdl = params.salesheads

        String[] dealersArray = sdl.split(',')

        dealersArray.eachWithIndex { item, i ->
            println("Processing Dealer: " + dealersArray[i])
            if (BottomHirarchy.findByTopUserIdAndUserIdAndUserType(dealer.id, dealersArray[i], UserType.findById(6).id) == null) {
                new BottomHirarchy(topUserId: dealer.id, userType: UserType.findById(6).id, userId: dealersArray[i]).save()
            }
        }

        render "success"

    }

    @Secured(['ROLE_ANONYMOUS'])
    def updateSalesTeam() {
        println('[PARAMS] ' + params)

        def dealer = Users.findById(params.saleshead)

        String sdl = params.salesteam

        String[] dealersArray = sdl.split(',')

        dealersArray.eachWithIndex { item, i ->
            println("Processing Dealer: " + dealersArray[i])
            if (BottomHirarchy.findByTopUserIdAndUserIdAndUserType(dealer.id, dealersArray[i], UserType.findById(7).id) == null) {
                new BottomHirarchy(topUserId: dealer.id, userType: UserType.findById(7).id, userId: dealersArray[i]).save()
            }
        }

        render "success"

    }

//    policies accept or reject
    @Secured(['ROLE_ANONYMOUS'])
    def getUnprocessedPolicies() {

        def data = Gadgets.findAllByStatus("processing")

        render data as JSON


    }

    @Secured(['ROLE_ANONYMOUS'])
    def acceptPolicy() {
        def policy = Gadgets.findById(params.id)
        policy.executeUpdate("update Gadgets g set g.status = 'verified' where g.id = :id", [id: Long.parseLong(params.id)])

        sendInvoiceEmailService.sendInvoiceMail("[GADGET SECURE POLICY UPDATE]","Your GadgetSecure Policy ["+policy.policyNumber+"], registered for "+policy.model+" has been *ACCEPTED*", policy.email)

        render "success"

    }


    @Secured(['ROLE_ANONYMOUS'])
    def rejectPolicy() {
        println(params)
        def policy = Gadgets.findById(params.id)
        policy.executeUpdate("update Gadgets g set g.status = 'rejected' where g.id = :id", [id: Long.parseLong(params.id)])

        sendInvoiceEmailService.sendInvoiceMail("[GADGET SECURE POLICY UPDATE]","Your GadgetSecure Policy ["+policy.policyNumber+"], registered for "+policy.model+" has been *REJECTED*"+", REASON : "+params.reason, policy.email)

        render "success"
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getRsm(){
        def data = Users.findAllByUserType("9");
        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getCsh(){
        def data = Users.findAllByUserType("8");
        render data as JSON

    }
    @Secured(['ROLE_ANONYMOUS'])
    def getSales(){
        def data = Users.findAllByUserType("7");
        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getCountry(){
        render 'ok'
    }

    @Secured(['ROLE_ANONYMOUS'])
    def sendNotif(){
        println("[PARAMS] "+params)
        def data = []

        def mailId = Users.findById(params.userId).email

        sendInvoiceEmailService.sendInvoiceMail("Test Subject", "test message", mailId)

        data.add("success")

        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getPieChartData(){
        println("[PARAMS] "+params)
        def data = []
        def target = 0

        def completedTarget = 0

        def rsm = Users.findAllByUserType("9").email
        println(rsm.size())

        for (int i = 0; i < rsm.size(); i++){
            target = target + Long.parseLong(RsmTarget.findByRegionalSalesManager(rsm[i]).targetValue)
        }
//        def target = DistributorTarget.findByDistributorId(Users.findById(params.distributor).email).target.toInteger()
        def gadgetsSold = GadgetsRoleInvolved.list()
        for(int i = 0;i < gadgetsSold.size(); i++){
            completedTarget = completedTarget + Long.parseLong(GadgetPlans.findByPlanName(Gadgets.findByPolicyNumber(gadgetsSold[i].policyNumber).insurancePlan).planValue)
        }


        data.push(target)
        data.push(completedTarget)
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
        def policies = GadgetsRoleInvolved.findAll().policyNumber

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
    def getRegistrations(){
        println("[PARAMS] "+params)
        def data = []
        def policies = GadgetsRoleInvolved.findAll().policyNumber
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
            data = GadgetsRoleInvolved.countByRegistrationDate(now.minusDays(i).format(format))
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
            data = GadgetsRoleInvolved.countByRegistrationDate(new SimpleDateFormat("yyyy-MM-dd").format(dateAfter.minus(i)))
            dataBar.put(new SimpleDateFormat("yyyy-MM-dd").format(dateAfter.minus(i)),data)
            println(data.toString())
        }

//        def data = Gadgets.findAllByRegistrationDateBetweenAndSubmittedBy(then, now, params.salesteam)

        render dataBar as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def saveTarget(){

        RsmTarget stt = new RsmTarget()
        stt.regionalSalesManager = params.rsm

        stt.targetValue= params.target
        stt.endDate = params.endDate
        stt.startDate = params.startDate
        stt.save()

        render "success"

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getCurrentOpening(){
        def data = CurrentOpening.list()
        render data as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def savePopup(){
        println(params)



        if(RewardPopup.findByRole(params.role) == null){
            RewardPopup rp = new RewardPopup()
            rp.role = params.role
            rp.popupImagePath = params.popup
            rp.save()
        }

        else{

            def pop = RewardPopup.findAllByRole(params.role)

            for (int i = 0; i<pop.size(); i++){
                pop[i].delete(flush: true)
            }
            RewardPopup rpd = new RewardPopup()
            rpd.role = params.role
            rpd.popupImagePath = params.popup
            rpd.save()

        }


        render "success"
    }

   /* def getStates(){
        def data = States.list()
        render data as JSON
    }*/

    @Secured(['ROLE_ANONYMOUS'])
    def saveJobApplication(){

        def status = []
        status.push("success")
        println("[PARAMS] " +params)

        JobApplication job = new JobApplication()
        job.name = params.name
        job.email = params.email
        job.mobile = params.mobile
        job.altMobile = params.altmobile
        job.aadhar = params.aadhar
        job.pin = params.pin
        job.state = params.state


        def file = request.getFile('file')
        file.transferTo(new File("/home/shiva/"+file.originalFilename))
        job.resume = "/home/shiva/"+file.originalFilename
        job.save()


        sendInvoiceEmailService.sendInvoiceMail("JOB APPLICATION STATUS AT ISRDAES", "Dear "+params.name+" your application submitted successfully", params.email)

//        render status as JSON
        redirect(action: "success")

    }

    @Secured(['ROLE_ANONYMOUS'])
    def success(){



    }

    @Secured(['ROLE_ANONYMOUS'])
    def test(){

        def someImage = resourceLoader.getResource("/assets/images/1.png")
        println(someImage)

    }

    @Secured(['ROLE_ADMIN'])
    def jobPost(){}

    @Secured(['ROLE_ANONYMOUS'])
    def saveNewJob(){
        def status = []
        status.push("success")
        println("[PARAMS] " +params)

        CurrentOpening currentOpening = new CurrentOpening();
        currentOpening.title = params.title;
        currentOpening.date = params.date;
        currendtOpening.location=params.location;
        currentOpening.experiance=params.exp;
        currentOpening.detail = params.detail;

        currentOpening.save();

        render "success";

    }

    @Secured(['ROLE_ANONYMOUS'])
    def saveBecomeDealer(){

        println("[PARAMS] " +params)


        sendInvoiceEmailService.sendInvoiceMail('[REQUEST TO BECOME NEW DEALER]',params.name+'applied to become new dealer and his firm name is '+params.firmName+'and mobile number is '+params.mobile+'and email id is '+params.email+'and city is '+params.city,'rajakkamesh@gmail.com')

        redirect(action: "successDealer")

    }

    @Secured(['ROLE_ANONYMOUS'])
    def successDealer(){}

    @Secured(['ROLE_ANONYMOUS'])
    def getAllPolicies(){

        render Gadgets.list() as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getRsmSalesData(){
        println("[PARAMS] "+ params)

        def policies = GadgetsRoleInvolved.findAllByRegionalSalesManager(params.username)

        render policies as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getCshSalesData(){
        println("[PARAMS] "+ params)

        def policies = GadgetsRoleInvolved.findAllByCompanySalesHead(params.username)

        render policies as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDistributorSales(){
        println("[PARAMS] "+ params)

        def policies = GadgetsRoleInvolved.findAllByDistributor(params.username)

        render policies as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDealerSales(){
        println("[PARAMS] "+ params)

        def policies = GadgetsRoleInvolved.findAllByDealer(params.username)

        render policies as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getSalesList(){
        println("[PARAMS] "+ params)

        def policies = GadgetsRoleInvolved.findAllBySalesTeam(params.username)

        render policies as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getRsmTarget(){
        println("[PARAMS] "+params)
        def data = RsmTarget.findByRegionalSalesManager(params.user).targetValue
        render data
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getCshTarget(){
        println("[PARAMS] "+params)
        def data = CompanySalesHeadTarget.findByCompanySalesHeadId(Users.findByEmail(params.user).id).target
        render data
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDistributorTarget(){
        println("[PARAMS] "+params)
        def data = DistributorTarget.findByDistributorId(params.user).target
        render data
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDealerTarget(){
        println("[PARAMS] "+params)
        def data = DealerTarget.findByDealerId(params.user).target
        render data
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getSalesTeamTarget(){
        println("[PARAMS] "+params)
        def data = SalesTeamTarget.findBySalesTeamId(params.user).target
        render data
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getAllDistributor(){
        def data = Users.findAllByUserType("2")

        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def setLinearty(){
        Linearty linearty = new Linearty()
        linearty.distributorId = params.distributor
        linearty.month = params.month
        linearty.year = params.year
        linearty.save()

        render "success"
    }

    @Secured(['ROLE_ADMIN'])
    def adminHome(){

    }


    def saveRewardDetails(){
        Rewards reward = new Rewards()

        reward.startDate = params.startDate
        reward.enddate = params.endDate
        reward.rewardType = params.rewardType
        reward.rewardDetails = params.rewardDetails

        reward.save()
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getRsmTargetDetail(){

        def data = []

        def value = 0

        def total = RsmTarget.findByRegionalSalesManager(params.rsm).targetValue
        data.add(total)

        def completed = GadgetsRoleInvolved.findAllByRegionalSalesManager(params.rsm).policyNumber

        for(int i = 0; i<completed.size(); i++){
            value = value + Integer.parseInt(GadgetPlans.findByPlanName(Gadgets.findByPolicyNumber(completed[i]).insurancePlan).planValue)
        }

        data.add(value)

        render data as JSON

    }


    @Secured(['ROLE_ANONYMOUS'])
    def saveDirectDistributor(){
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
        render "success"
    }

    @Secured(['ROLE_ANONYMOUS'])
    def saveDirectDealer(){
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

        render "success"
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDirectDistributor(){

        def data = []

        def dis = Users.findAllByUserType(UserType.findById(2).id)

        for (int i = 0;i < dis.size(); i++){
            if (DistributorMapping.findByDistributorId(dis[i].id.toString()) == null){
                data.add(dis[i])
            }
        }
        println(data)
        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDirectDealer(){

        def data = []

        def dis = Users.findAllByUserType(UserType.findById(4).id)

        for (int i = 0;i < dis.size(); i++){
            if (DealerMapping.findByDelaerId(dis[i].id.toString()) == null){
                data.add(dis[i])
            }
        }
        println(data)
        render data as JSON

    }


    @Secured(['ROLE_ANONYMOUS'])
    def getDirectDealerTargetDetail(){

        def data = []

        def value = 0

        def total = DealerTarget.findByDealerId(params.dealer).target
        data.add(total)

        def completed = GadgetsRoleInvolved.findAllByDealer(params.dealer).policyNumber

        for(int i = 0; i<completed.size(); i++){
            value = value + Integer.parseInt(GadgetPlans.findByPlanName(Gadgets.findByPolicyNumber(completed[i]).insurancePlan).planValue)
        }

        data.add(value)

        render data as JSON

    }


    @Secured(['ROLE_ANONYMOUS'])
    def getDirectDistributorTargetDetail(){

        def data = []

        def value = 0

        def total = DistributorTarget.findByDistributorId(params.distributor).target
        data.add(total)

        def completed = GadgetsRoleInvolved.findAllByDistributor(params.distributor).policyNumber

        for(int i = 0; i<completed.size(); i++){
            value = value + Integer.parseInt(GadgetPlans.findByPlanName(Gadgets.findByPolicyNumber(completed[i]).insurancePlan).planValue)
        }

        data.add(value)

        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getLinearty(){
            
    }


}
