package gadgetsecure

import grails.gorm.transactions.Transactional

import javax.mail.Message
import javax.mail.MessagingException
import javax.mail.Session
import javax.mail.Transport
import javax.mail.internet.InternetAddress
import javax.mail.internet.MimeMessage

@Transactional
class SendInvoiceEmailService {

    def serviceMethod() {

    }

    def sendInvoiceMail(String Subject, String Text, String to){

        final String username = "isrdaes@gmail.com";
        final String password = "15rd@3550lu710n";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                        return new javax.mail.PasswordAuthentication(username, password);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(to));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(to));
            message.setSubject(Subject);
            message.setText(Text);

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }
}
