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


        redirect(action: "index")
    }

    def deleteUser()  {
        def u = User.get(params.ID)
        u.delete()
        redirect(action: "index")
    }

    def account() {
        if (!springSecurityService) {
            println "WTF"
        }
            [user:springSecurityService.getCurrentUser()]
    }
}
