import com.Grove.Role
import com.Grove.User
import com.Grove.UserRole
import com.Grove.Branch

class BootStrap {

    def init = { servletContext ->

        def adminRole = new Role('ROLE_ADMIN').save()
        def userRole = new Role('ROLE_USER').save()

        def admin = new User('admin', '1').save()
        UserRole.create admin, adminRole

        def user = new User('user','1').save()
        UserRole.create user, userRole


        UserRole.withSession {
            it.flush()
            it.clear()
        }

        assert User.count() == 2
        assert Role.count() == 2
        assert UserRole.count() == 2

    }
    def destroy = {
    }
}
