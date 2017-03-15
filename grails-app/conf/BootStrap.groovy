import com.hospital.Profile
import com.hospital.User
import com.hospital.UserRole
import com.hospital.Role

class BootStrap {

    def init = { servletContext ->
        if (!Role.findByAuthority("admin")) {
            println "create new admin"
            User userAdmin = new User(name: "name", surname: "surname", username: "admin", password: "admin", contactNumber: "123456789", profile: Profile.Other).save(flush: true, failOnError: true)
            Role roleAdmin = new Role(authority: "admin").save(flush: true, failOnError: true)
            new UserRole(user: userAdmin, role: roleAdmin).save(flush: true, failOnError: true)
            println "new admin created"
        }
        if (!Role.findByAuthority("hcp")) {
            User userHCP = new User(name: "name", surname: "surname", username: "hcp", password: "hcp", contactNumber: "223456789", profile: Profile.Other).save(flush: true, failOnError: true)
            Role roleHCP = new Role(authority: "hcp").save(flush: true, failOnError: true)
            new UserRole(user: userHCP, role: roleHCP).save(flush: true, failOnError: true)
        }
        if (!Role.findByAuthority("agent")) {
            User userAgent = new User(name: "name", surname: "surname", username: "agent", password: "agent", contactNumber: "323456789", profile: Profile.Other).save(flush: true)
            Role roleAgent = new Role(authority: "agent").save(flush: true)
            new UserRole(user: userAgent, role: roleAgent).save(flush: true, failOnError: true)
        }
    }
    def destroy = {
    }
}
