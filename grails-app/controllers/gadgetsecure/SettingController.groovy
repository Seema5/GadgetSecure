package gadgetsecure

import grails.plugin.springsecurity.annotation.Secured

class SettingController {

    @Secured(['ROLE_ANONYMOUS'])
    def index() { }
}
