package gadgetsecure

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

class InventoryController {

    @Secured(['ROLE_ANONYMOUS'])
    def index() { }

    @Secured(['ROLE_ANONYMOUS'])
    def updateStock(){

        def inventory = Inventory.findById(1)
        inventory.executeUpdate("update Inventory g set g.totalStock = '"+params.fname+"'")

        render "success"

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getInventoryDetails(){
        def data = [:]

        def inventory = Inventory.findById(1)
        data.put('totalStock', inventory.totalStock)
        data.put('availableStock', inventory.availableStock)

        data.put('currentDate', new Date().toString())
        data.put('android', Gadgets.countByDeviceType('android'))
        data.put('windows', Gadgets.countByDeviceType('windows'))
        data.put('other', Gadgets.countByDeviceType('other'))
        data.put('soldStock', (Integer.parseInt(inventory.totalStock) - Integer.parseInt(inventory.availableStock)))
        data.put('id', inventory.id)

        render data as JSON
    }
}
