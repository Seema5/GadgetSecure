package gadgetsecure

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.nodes.Element
import org.jsoup.select.Elements
import roles.UserType


class UtilityController {

    @Secured(['ROLE_ANONYMOUS'])
    def index() { }

    @Secured(['ROLE_ANONYMOUS'])
    def generateGadgetRegistrationReceipt(){
//        [employee: '248805']
    }

    @Secured(['ROLE_ANONYMOUS'])
    def downloadReceipt(){
        def invoice = Gadgets.findById(1)
        renderPdf(template: "template", model: [invoice: invoice],  filename: "Invoice.pdf")
    }

    @Secured(['ROLE_ANONYMOUS'])
    def becomeaDealer(){}

    @Secured(['ROLE_ANONYMOUS'])
    def viewPolicyDetails(){
        def invoice = Gadgets.findByPolicyNumber(params.policyNumber)

        render invoice as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def currentOpening(){}

    @Secured(['ROLE_ANONYMOUS'])
    def testScrap(){

    }

    @Secured(['ROLE_ANONYMOUS'])
    def jobDescription(){}

    @Secured(['ROLE_ANONYMOUS'])
    def submitDetail(){}

    @Secured(['ROLE_ANONYMOUS'])
    def faq(){}

    @Secured(['ROLE_ANONYMOUS'])
    def findSitemap(){}

    @Secured(['ROLE_ANONYMOUS'])
    def ticketStatus(){}

    @Secured(['ROLE_ANONYMOUS'])
    def buy(){}

    @Secured(['ROLE_ANONYMOUS'])
    def amazingService(){}

    @Secured(['ROLE_ANONYMOUS'])
    def getRsmPopup(){
        def data = RewardPopup.findByRole(UserType.findByUserType("RegionalSalesManager").id)
        render data as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getCshPopup(){
        def data = RewardPopup.findByRole(UserType.findByUserType("CompanySalesHead").id)
        render data as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDistributorPopup(){
        def data = RewardPopup.findByRole(UserType.findByUserType("Distributor").id)
        render data as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getDealerPopup(){
        def data = RewardPopup.findByRole(UserType.findByUserType("Dealer").id)
        render data as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getSalesTeamPopup(){
        def data = RewardPopup.findByRole(UserType.findByUserType("SalesTeam").id)
        render data as JSON
    }

    @Secured(['ROLE_USER'])
    def buyform(){}

    @Secured(['ROLE_ANONYMOUS'])
    def saveFeedback(){
        println('[PARAMS] ' + params)

        FeedBack feed = new FeedBack()
        feed.review = params.review
        feed.rating = params.rating

        feed.save()

        render "success"

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getPlanValue(){
        def data = GadgetPlans.findByPlanName(params.plan)
        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getPlans(){

        def data = GadgetPlans.list()

        render data as JSON

    }

    @Secured(['ROLE_ANONYMOUS'])
    def register(){}

    @Secured(['ROLE_ANONYMOUS'])
    def registerSuccess(){}

}
