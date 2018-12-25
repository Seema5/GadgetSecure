package gadgetsecure

import com.isrdaes.secureapp.SecAppRole
import com.isrdaes.secureapp.SecAppUser
import com.isrdaes.secureapp.SecAppUserSecAppRole
import roles.UserType
import roles.Users


class BootStrap {

    def init = { servletContext ->
//        Spring Security
        def adminRole = new SecAppRole(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new SecAppRole(authority: 'ROLE_USER').save(flush: true)

        def testUser = new SecAppUser(username: 'admin', enabled: true, password: 'admin')
        testUser.save(flush: true)

        def user = new SecAppUser(username: 'admin', enabled: true, password: 'admin')

        SecAppUserSecAppRole.create testUser, adminRole, true

        assert SecAppUser.count() == 1
        assert SecAppRole.count() == 2
        assert SecAppUserSecAppRole.count() == 1

//        Spring Security



        if (UserType.count() == 0){
            new UserType(userType: 'Administrator').save()
            new UserType(userType: 'Distributor').save()
            new UserType(userType: 'SubDistributor').save()
            new UserType(userType: 'Dealer').save()
            new UserType(userType: 'Retailer').save()
            new UserType(userType: 'SalesHead').save()
            new UserType(userType: 'SalesTeam').save()
            new UserType(userType: 'CompanySalesHead').save()
            new UserType(userType: 'CompanySalesHead').save()
            new UserType(userType: 'RegionalSalesManager').save()
        }


        if (Users.count() == 0){
            new Users(mobile: '9340211032', address: 'Madan Mahal', altmobile: '9958068274', city: 'jabalpur', password: 'kamesh', lname: 'Rajak', pincode: '482004', fname: 'Kamesh', email: 'kameshrajak@isrdaes.com', state: 'Madhya Pradesh', userType: UserType.findByUserType('Administrator').id, pan: "1234567890", firmName: "ABC FIRM", aadhar: "1234567890", gstn: "123243456567").save()
            new Users(mobile: '9340211032', address: 'Madan Mahal', altmobile: '9958068274', city: 'jabalpur', password: 'manmeet', lname: 'manmeet', pincode: '482004', fname: 'manmeet', email: 'manmeet@isrdaes.com', state: 'Madhya Pradesh', userType: UserType.findByUserType('Distributor').id, pan: "1234567890", firmName: "ABC FIRM", aadhar: "1234567890", gstn: "123243456567").save()
            new Users(mobile: '9340211032', address: 'Madan Mahal', altmobile: '9958068274', city: 'jabalpur', password: 'shiva', lname: 'choubey', pincode: '482004', fname: 'shiva', email: 'shiva@isrdaes.com', state: 'Madhya Pradesh', userType: UserType.findByUserType('SubDistributor').id, pan: "1234567890", firmName: "ABC FIRM", aadhar: "1234567890", gstn: "123243456567").save()
            new Users(mobile: '9340211032', address: 'Madan Mahal', altmobile: '9958068274', city: 'jabalpur', password: 'vandana', lname: 'vishwakarma', pincode: '482004', fname: 'vandana', email: 'vandana@isrdaes.com', state: 'Madhya Pradesh', userType: UserType.findByUserType('Dealer').id, pan: "1234567890", firmName: "ABC FIRM", aadhar: "1234567890", gstn: "123243456567").save()
            new Users(mobile: '9340211032', address: 'Madan Mahal', altmobile: '9958068274', city: 'jabalpur', password: 'kaur', lname: 'kaur', pincode: '482004', fname: 'kaur', email: 'kaur@isrdaes.com', state: 'Madhya Pradesh', userType: UserType.findByUserType('Retailer').id, pan: "1234567890", firmName: "ABC FIRM", aadhar: "1234567890", gstn: "123243456567").save()
            new Users(mobile: '9340211032', address: 'Madan Mahal', altmobile: '9958068274', city: 'jabalpur', password: 'rajak', lname: 'rajak', pincode: '482004', fname: 'rajak', email: 'rajak@isrdaes.com', state: 'Madhya Pradesh', userType: UserType.findByUserType('SalesHead').id, pan: "1234567890", firmName: "ABC FIRM", aadhar: "1234567890", gstn: "123243456567").save()
            new Users(mobile: '9340211032', address: 'Madan Mahal', altmobile: '9958068274', city: 'jabalpur', password: 'seema', lname: 'seema', pincode: '482004', fname: 'seema', email: 'seema@isrdaes.com', state: 'Madhya Pradesh', userType: UserType.findByUserType('SalesTeam').id, pan: "1234567890", firmName: "ABC FIRM", aadhar: "1234567890", gstn: "123243456567").save()

            //  Company Sales Head
            new Users(mobile: '9340211032', address: 'Madan Mahal', altmobile: '9958068274', city: 'jabalpur', password: 'companysaleshead', lname: 'Company Sales Head', pincode: '482004', fname: 'Company Sales Head', email: 'companysaleshead@isrdaes.com', state: 'Madhya Pradesh', userType: UserType.findByUserType('CompanySalesHead').id, pan: "1234567890", firmName: "ABC FIRM", aadhar: "1234567890", gstn: "123243456567").save()
            //  Regional Sales Manager
            new Users(mobile: '9340211032', address: 'Madan Mahal', altmobile: '9958068274', city: 'jabalpur', password: 'rsm1', lname: 'rsm1', pincode: '482004', fname: 'rsm1', email: 'rsm1@isrdaes.com', state: 'Madhya Pradesh', userType: UserType.findByUserType('RegionalSalesManager').id, pan: "1234567890", firmName: "ABC FIRM", aadhar: "1234567890", gstn: "123243456567").save()

        }
    }
    def destroy = {
    }
}
