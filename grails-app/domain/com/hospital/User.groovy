package com.hospital

class User implements Serializable {

	private static final long serialVersionUID = 1

	transient springSecurityService

	String username
    String name
    String surname
	String password
    String contactNumber
    String profile
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	User(String username, String password) {
		this()
		this.username = username
		this.password = password
	}

    User(RegistrationVo registrationVo) {
        this()
        this.name = registrationVo.name
        this.surname = registrationVo.surname
        this.username = registrationVo.username
        this.password = registrationVo.password
        this.contactNumber = registrationVo.contactNumber
        this.profile = registrationVo.profile
    }

	@Override
	int hashCode() {
		username?.hashCode() ?: 0
	}

	@Override
	boolean equals(other) {
		is(other) || (other instanceof User && other.username == username)
	}

	@Override
	String toString() {
		username
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this)*.role
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
        contactNumber blank: false
        profile blank: false
	}

	static mapping = {
		password column: '`password`'
	}
}
