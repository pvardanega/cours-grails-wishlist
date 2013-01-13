import com.pvardanega.Role
import com.pvardanega.User
import com.pvardanega.UserRole

class BootStrap {

    def init = { servletContext ->

        def roleAdmin = Role.findByAuthority("ROLE_ADMIN") ?: new Role(authority: "ROLE_ADMIN").save(true)
        def roleUser = Role.findByAuthority("ROLE_USER") ?: new Role(authority: "ROLE_USER").save(true)

        def admin = new User(username: "pvardanega", password: "password", enabled: true).save(true)
        def user = new User(username: "toto", password: "test", enabled: true).save(true)

        UserRole.create(admin, roleAdmin, true)
        UserRole.create(user, roleUser, true)

    }
    def destroy = {
    }
}
