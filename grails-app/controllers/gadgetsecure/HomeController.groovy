package gadgetsecure

import grails.plugin.springsecurity.annotation.Secured

class HomeController {

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN'])
    def index() { }

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def faq(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def aboutus() {}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def ourproducts() {}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def extendedWarranty(){

    }

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN'])
    def salesMotivation(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def platinum(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def gold(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def diamond(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def mobilePlatinum(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def laptopPlatinum(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def printerPlatinum(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def desktopPlatinum(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def mobileGold(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def laptopGold(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def printerGold(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def desktopGold(){}


    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def mobileDiamond(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def laptopDiamond(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def printerDiamond(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def desktopDiamond(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def securityUtility(){}

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN','ROLE_USER'])
    def mobileProtection(){}

}
