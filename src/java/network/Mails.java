package network;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class Mails {

    public static boolean secretMail(String msg, String name, String email) {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");

        // Assuming you are sending email from localhost
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("webwizardryproject@gmail.com", "cfkigmmbsqlhqctb");
            }
        });

        System.out.println("Message   " + msg);
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(name)); // Replace with your sender email
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("WEB WIZARDRY");

            // Create the message part using the HTML content
            MimeBodyPart messageBodyPart = new MimeBodyPart();
            messageBodyPart.setContent(msg, "text/html");

            // Create a multipart message
            MimeMultipart multipart = new MimeMultipart();
            multipart.addBodyPart(messageBodyPart);

            // Set the multi-part as the email content
            message.setContent(multipart);

            // Send the email
            Transport.send(message);

            System.out.println("Done");
            return true;

        } catch (MessagingException e) {
            System.out.println(e);
            e.printStackTrace();
            return false;
            // throw new RuntimeException(e);
        }
    }
}
