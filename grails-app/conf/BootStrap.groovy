import com.hospital.User
import com.hospital.UserRole
import com.hospital.Role

class BootStrap {

    def init = { servletContext ->
        if (!Role.findByAuthority("admin")) {
            println "create new admin"
            User userAdmin = new User(username: "admin", password: "admin").save(flush: true, failOnError: true)
            Role roleAdmin = new Role(authority: "admin").save(flush: true, failOnError: true)
            new UserRole(user: userAdmin, role: roleAdmin).save(flush: true, failOnError: true)
            println "new admin created"
        }
        if (!Role.findByAuthority("hp")) {
            User userHP = new User(username: "hp", password: "hp").save(flush: true, failOnError: true)
            Role roleHP = new Role(authority: "hp").save(flush: true, failOnError: true)
            new UserRole(user: userHP, role: roleHP).save(flush: true, failOnError: true)
        }
        if (!Role.findByAuthority("agent")) {
            User userAgent = new User(username: "agent", password: "agent").save(flush: true)
            Role roleAgent = new Role(authority: "agent").save(flush: true)
            new UserRole(user: userAgent, role: roleAgent).save(flush: true, failOnError: true)
        }
    }
    def destroy = {
    }
}
