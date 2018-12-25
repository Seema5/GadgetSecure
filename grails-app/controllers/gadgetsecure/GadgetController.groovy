package gadgetsecure

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import org.krysalis.barcode4j.impl.code39.Code39Bean
import org.krysalis.barcode4j.output.bitmap.BitmapCanvasProvider
import org.krysalis.barcode4j.tools.UnitConv
import roles.*

import java.awt.image.BufferedImage
import java.time.LocalDate
import java.time.format.DateTimeFormatter

class GadgetController {

    def sendInvoiceEmailService
    def barcodeGeneratorService

    @Secured(['ROLE_ANONYMOUS'])
    def index() {}

    @Secured(['ROLE_ANONYMOUS'])
    def saveGadget() {
        println("[PARAMS] " + params)

        Gadgets gadget = new Gadgets()

        gadget.deviceType = params.deviceType
        gadget.dop = params.dop
        gadget.purchaseType = params.purchaseType
        gadget.purchaseFrom = params.purchaseFrom
        gadget.gender = params.gender
        gadget.pincode = params.pincode
        gadget.invoiceValue = params.invoiceValue
        gadget.imeiMacSerial = params.imei
        gadget.customerName = params.customername
        gadget.dob = params.dob
        gadget.state = params.state
        gadget.mobile = params.mobile
        gadget.address = params.address
        gadget.brand = params.brand
        gadget.invoiceNumber = params.invoiceNumber
        gadget.insurancePlan = params.plan
        gadget.city = params.city
        gadget.altMobile = params.altmobile
        gadget.email = params.email
        gadget.model = params.model
        gadget.submittedBy = params.submittedBy
        gadget.status = "processing"

        Random rand = new Random()
        int num = rand.nextInt(90000000) + 10000000

        gadget.policyNumber = "GS" + num

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd")
        LocalDate localDate = LocalDate.now()

        gadget.registrationDate = dtf.format(localDate).toString()

        gadget.save()

//      update GadgetRoleInvolved Table
        def salesTeam = Users.findByEmail(params.submittedBy)
        def dealer = Users.findByEmail(SalesTeamMapping.findBySalesTeamId(salesTeam.id).dealerId)
        def distributor = Users.findByEmail(DealerMapping.findByDelaerId(dealer.id).distributorId)
        def companySalesHead = Users.findByEmail(DistributorMapping.findByDistributorId(distributor.id).companySalesHeadId)
        def regionalSalesManager = Users.findByEmail(CompanySalesHeadMapping.findByCompanySalesHeadId(companySalesHead.id).regionalSalesManagerId)

        GadgetsRoleInvolved gri = new GadgetsRoleInvolved()
        gri.regionalSalesManager = regionalSalesManager.email
        gri.companySalesHead = companySalesHead.email
        gri.distributor = distributor.email
        gri.dealer = dealer.email
        gri.salesTeam = salesTeam.email
        gri.policyNumber = "GS" + num
        gri.registrationDate = dtf.format(localDate).toString()
        gri.save()

//      update GadgetRoleInvolved Table

//        barcode

        String policyTemp = "GS" + num.toString()

        //Create the barcode bean
        Code39Bean bean = new Code39Bean()

        final int dpi = 150

        //Configure the barcode generator
        bean.setModuleWidth(UnitConv.in2mm(1.0f / dpi)) //makes the narrow bar, width exactly one pixel
        bean.setWideFactor(3)
        bean.doQuietZone(false)

        //Open output file
        File outputFile = new File("out.png")
        OutputStream out = new FileOutputStream(outputFile)

        try {

            //Set up the canvas provider for monochrome PNG output
            BitmapCanvasProvider canvas = new BitmapCanvasProvider(
                    out, "image/x-png", dpi, BufferedImage.TYPE_BYTE_BINARY, false, 0)

            //Generate the barcode
            bean.generateBarcode(canvas, policyTemp)

            //Signal end of generation
            canvas.finish()
        } finally {
            out.close()
        }

//        barcode

        def barcode = new File("out.png")
        def logo = new File("images/logo.png")
        def sign = new File("images/sign.png")

        def record = Gadgets.findByInvoiceNumberAndEmail(params.invoiceNumber, params.email)
        renderPdf(template: "template", model: [record: record, barcode: barcode.bytes, logo: logo.bytes, sign: sign.bytes], filename: policyTemp + ".pdf")

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getRoles() {



    }

    @Secured(['ROLE_ANONYMOUS'])
    def sendInvoiceGadgetRegistration() {

        sendInvoiceEmailService.sendInvoiceMail()

    }

    @Secured(['ROLE_ANONYMOUS'])
    def saveExtendedWarranty() {
        println("[PARSMS] " + params)

        try {
            ExtendedWarrantyGadgets extendedWarrantyGadgets = new ExtendedWarrantyGadgets()
            extendedWarrantyGadgets.dateOfInvoice = params.dateofpurchase
            extendedWarrantyGadgets.customerName = params.firstName
            extendedWarrantyGadgets.website = params.websitename
            extendedWarrantyGadgets.brand = params.company
            extendedWarrantyGadgets.email = params.email_newuser
            extendedWarrantyGadgets.mobile = params.mobileNumber_newuser
            extendedWarrantyGadgets.deviceValue = params.pricerange

            extendedWarrantyGadgets.save()
            render "Please visit your nearest retailer..."
        }
        catch (Exception e) {
            println("[STACKTRACE]" + e)
            render "Please try again..."
        }


    }

}
