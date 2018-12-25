package gadgetsecure

import grails.gorm.transactions.Transactional
import org.krysalis.barcode4j.impl.code39.Code39Bean
import org.krysalis.barcode4j.output.bitmap.BitmapCanvasProvider
import org.krysalis.barcode4j.tools.UnitConv

import java.awt.image.BufferedImage

@Transactional
class BarcodeGeneratorService {

    def serviceMethod() {

    }

    def generateBarcode(String data){
        //Create the barcode bean
        Code39Bean bean = new Code39Bean();

        final int dpi = 150;

        //Configure the barcode generator
        bean.setModuleWidth(UnitConv.in2mm(1.0f / dpi)); //makes the narrow bar, width exactly one pixel
        bean.setWideFactor(3);
        bean.doQuietZone(false);

        //Open output file
        File outputFile = new File("out.png");
        OutputStream out = new FileOutputStream(outputFile);

        try {

            //Set up the canvas provider for monochrome PNG output
            BitmapCanvasProvider canvas = new BitmapCanvasProvider(
                    out, "image/x-png", dpi, BufferedImage.TYPE_BYTE_BINARY, false, 0);

            //Generate the barcode
            bean.generateBarcode(canvas, data);

            //Signal end of generation
            canvas.finish();
        } finally {
            out.close();
        }
    }
}
