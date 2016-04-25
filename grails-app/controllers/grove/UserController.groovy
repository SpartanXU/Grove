package grove

import com.Grove.User
import com.Grove.UserRole
import com.Grove.Role
import grails.plugin.springsecurity.annotation.Secured

class UserController {
    def springSecurityService

    def index() {}

    def userModeration() {
        def users = User.list()
        [users: users]
    }

    def createUserForm() {

        def adminRole = new Role('ROLE_USER').save()

        def admin = new User(params).save()
        UserRole.create admin, adminRole


        redirect(controller:"login", action: "auth")
    }

    def deleteUser()  {
        def u = User.get(params.id)
        u.delete()
        redirect(controller:"/logout")
    }

    def account() {
        if (!springSecurityService) {
            println "The spring security service crushed, try to re-run the app or contact developer to fix it."
        }
            //get user information using spring security service
            User currentUser = springSecurityService.getCurrentUser();
            [user:currentUser]
    }

}
