package gadgetsecure

import com.lowagie.text.pdf.codec.Base64
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import org.apache.tomcat.jni.File
import org.krysalis.barcode4j.impl.code39.Code39Bean
import org.krysalis.barcode4j.output.bitmap.BitmapCanvasProvider
import org.krysalis.barcode4j.tools.UnitConv

import java.awt.image.BufferedImage

class ClaimsController {

    @Secured(['ROLE_ANONYMOUS'])
    def index() { }

    @Secured(['ROLE_ANONYMOUS'])
    def getPolicyDetail(){


        def record = Gadgets.findByPolicyNumber(params.policyNumber)



        //Create the barcode bean
        Code39Bean bean = new Code39Bean();

        final int dpi = 150;

        //Configure the barcode generator
        bean.setModuleWidth(UnitConv.in2mm(1.0f / dpi)); //makes the narrow bar, width exactly one pixel
        bean.setWideFactor(3);
        bean.doQuietZone(false);

        //Open output file
        java.io.File outputFile = new java.io.File("out.png")
        OutputStream out = new FileOutputStream(outputFile)

        try {

            //Set up the canvas provider for monochrome PNG output
            BitmapCanvasProvider canvas = new BitmapCanvasProvider(
                    out, "image/x-png", dpi, BufferedImage.TYPE_BYTE_BINARY, false, 0);

            //Generate the barcode
            bean.generateBarcode(canvas, record.policyNumber)

            //Signal end of generation
            canvas.finish();
        } finally {
            out.close();
        }

//        barcode

        def barcode= new java.io.File("out.png")
        def logo = new java.io.File("images/logo.png")
        def sign = new java.io.File("images/sign.png")


        renderPdf(template: "template", model: [record: record, barcode: barcode.bytes, logo: logo.bytes, sign: sign.bytes],  filename: record.policyNumber+".pdf")



    }

    @Secured(['ROLE_ANONYMOUS'])
    def saveClaim(){
        if (Claims.findByPolicyNumber(params.policyNumber) != null){
            render "filed"
        }
        else{
            Claims claim = new Claims()
            claim.policyNumber = params.policyNumber
            claim.aadhar = params.aadhar
            claim.pan = params.pan
            claim.description = params.description
            claim.incidentDate = params.incidentDate
            claim.registeredBy = params.registeredBy
            claim.claimDate = new Date().toString()
            claim.save()

            render "success"
        }

    }

    @Secured(['ROLE_ANONYMOUS'])
    def getClaim(){
        def data = Claims.list()

        render data as JSON
    }

    @Secured(['ROLE_ANONYMOUS'])
    def checkPolicyNumber(){
        if(Gadgets.findByPolicyNumber(params.policyNumber) != null){
            render "success"
        }
        else{
            render "failed"
        }
    }

    @Secured(['ROLE_ANONYMOUS'])
    def getCustomer(){
        def data = Gadgets.findByPolicyNumber(Claims.findById(params.id).policyNumber)
        render data as JSON
    }

}
