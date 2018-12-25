package com.isrdaes.secureapp

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.codehaus.groovy.util.HashCodeHelper
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@ToString(cache=true, includeNames=true, includePackage=false)
class SecAppUserSecAppRole implements Serializable {

	private static final long serialVersionUID = 1

	SecAppUser secAppUser
	SecAppRole secAppRole

	@Override
	boolean equals(other) {
		if (other instanceof SecAppUserSecAppRole) {
			other.secAppUserId == secAppUser?.id && other.secAppRoleId == secAppRole?.id
		}
	}

    @Override
	int hashCode() {
	    int hashCode = HashCodeHelper.initHash()
        if (secAppUser) {
            hashCode = HashCodeHelper.updateHash(hashCode, secAppUser.id)
		}
		if (secAppRole) {
		    hashCode = HashCodeHelper.updateHash(hashCode, secAppRole.id)
		}
		hashCode
	}

	static SecAppUserSecAppRole get(long secAppUserId, long secAppRoleId) {
		criteriaFor(secAppUserId, secAppRoleId).get()
	}

	static boolean exists(long secAppUserId, long secAppRoleId) {
		criteriaFor(secAppUserId, secAppRoleId).count()
	}

	private static DetachedCriteria criteriaFor(long secAppUserId, long secAppRoleId) {
		SecAppUserSecAppRole.where {
			secAppUser == SecAppUser.load(secAppUserId) &&
			secAppRole == SecAppRole.load(secAppRoleId)
		}
	}

	static SecAppUserSecAppRole create(SecAppUser secAppUser, SecAppRole secAppRole, boolean flush = false) {
		def instance = new SecAppUserSecAppRole(secAppUser: secAppUser, secAppRole: secAppRole)
		instance.save(flush: flush)
		instance
	}

	static boolean remove(SecAppUser u, SecAppRole r) {
		if (u != null && r != null) {
			SecAppUserSecAppRole.where { secAppUser == u && secAppRole == r }.deleteAll()
		}
	}

	static int removeAll(SecAppUser u) {
		u == null ? 0 : SecAppUserSecAppRole.where { secAppUser == u }.deleteAll() as int
	}

	static int removeAll(SecAppRole r) {
		r == null ? 0 : SecAppUserSecAppRole.where { secAppRole == r }.deleteAll() as int
	}

	static constraints = {
	    secAppUser nullable: false
		secAppRole nullable: false, validator: { SecAppRole r, SecAppUserSecAppRole ur ->
			if (ur.secAppUser?.id) {
				if (SecAppUserSecAppRole.exists(ur.secAppUser.id, r.id)) {
				    return ['userRole.exists']
				}
			}
		}
	}

	static mapping = {
		id composite: ['secAppUser', 'secAppRole']
		version false
	}
}
