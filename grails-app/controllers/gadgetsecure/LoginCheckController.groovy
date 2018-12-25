package gadgetsecure

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import roles.UserType
import roles.Users


class LoginCheckController {

    @Secured(['ROLE_ANONYMOUS'])
    def index() { }

    @Secured(['ROLE_ANONYMOUS'])
    def checkLogin(){

        println(params)

            if (Users.findByEmailAndPassword(params.username, params.password) != null){
                render UserType.findById(Users.findByEmailAndPassword(params.username, params.password).userType) as JSON
            }
            else{
                render "Failed"
            }

    }
}
