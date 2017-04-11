package hospital.app

import com.hospital.Role
import com.hospital.User
import com.hospital.UserRole

class HelperTagLib {
    static defaultEncodeAs = [taglib:'html']
    static encodeAsForTags = [getHcpSelectBox: [taglib:'none'],tagName: [taglib:'html']]

    def getHcpSelectBox = { attrs, body ->
        Role role = Role.findByAuthority('hcp')
        ArrayList<User> hcpUser = UserRole.findAllByRole(role)*.user

        def component = g.select(name: 'therapistName', from: hcpUser, value: "name" , optionKey: 'id')
        out << component
    }
}
