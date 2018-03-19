package vinproject;

import javax.mail.*;
import java.util.*;
import javax.mail.internet.*;

public class MailBean
{
    // information about the user & mail servers
    private String user;
    private String password;
    private String outMailServer;
    private String inMailServer;
    private boolean loginSuccessful=false;
        
    // data representing the user's session
    private java.util.Properties properties;
    private javax.mail.Session session;
    
    // data representing the mail store, folders & message being read
    private javax.mail.Store store;
    private javax.mail.Folder folder;
    private javax.mail.Message[] messages;
    private javax.mail.internet.MimeMessage currentMessage;
    private javax.mail.Transport transport;
  
    // data representing message about to be sent.
    private javax.mail.internet.MimeMessage newMessage;
    private String to;
    private String cc;
    private String bcc;
    private String subject;
    private String body;
    
    public MailBean()
    {
      // a no-argument constructor.
    }
    
    public void login() throws NoSuchProviderException, MessagingException
    {
    	try{
        // start session
        properties = System.getProperties();
        session = Session.getInstance(properties, null);
        
        // connect to store
        store = session.getStore("imap");  // throws NoSuchProviderException
        store.connect(inMailServer, user, password); // throws MessagingException
        this.setLoginSuccessful(true); // used by jsp the page.
    	}catch (Exception e) {
    		e.printStackTrace();
    		System.out.println("Pakadi gayi...................................Rakesh");
		}
    }
    
    public void openInbox() throws MessagingException 
    {
        // open the inbox
        folder = store.getFolder("inbox");
        folder.open(Folder.READ_ONLY); // throws messaging exception.
     
        // get and list the messages.
        messages = folder.getMessages();
    }
    
    public void readMsg(String s) throws MessagingException, NumberFormatException
    {
        int msgNumber = Integer.parseInt(s);
        currentMessage = (MimeMessage)this.messages[msgNumber];
    }
    
    public void signout() throws MessagingException
    {
        folder.close(false);
        store.close(); 
    }
    
    public void sendMsg() throws AddressException, 
SendFailedException, MessagingException
    {
        properties = System.getProperties();
        properties.put("mail.smtp.host", outMailServer);
        session = Session.getInstance(properties, null);
        
        // Fill in the message headders
        newMessage = new MimeMessage(session);
        String from = new String(user + "@" + inMailServer);
        newMessage.setFrom(new InternetAddress(from));
        newMessage.setSubject(subject);
        newMessage.setText(body);
        
        Address[] toAddresses =  InternetAddress.parse(to);
        newMessage.setRecipients(Message.RecipientType.TO, toAddresses);
      
        Address[] ccAddresses =  InternetAddress.parse(cc);
        newMessage.setRecipients(Message.RecipientType.CC, ccAddresses);
                    
        Address[] bccAddresses =  InternetAddress.parse(bcc);
        newMessage.setRecipients(Message.RecipientType.BCC, bccAddresses);
        
        // connect to the transport (if required, insert your username and password)
        Transport transport = session.getTransport("smtp");
        transport.connect(outMailServer, "","");
        
        // send the message
        transport.sendMessage(newMessage, newMessage.getAllRecipients());
        transport.close();
    }
    
    public void setUser(String s) { user = s; }
    public String getUser() { return user; }
    
    public void setPassword(String s) { password = s; }
    public String getPassword() { return password; }
   
    public void setOutMailServer(String s) { outMailServer = s; }
    public String getOutMailServer() { return outMailServer; }
    
    public void setInMailServer(String s) { inMailServer = s; }
    public String getInMailServer() { return inMailServer; }
    
    public void setLoginSuccessful(boolean b) { loginSuccessful = b; }
    public boolean getLoginSuccessful() { return loginSuccessful; }
    
    public void setMessages(Message[] msg) { messages = msg; }
    public Message[] getMessages() { return messages; }
    
    public void setCurrentMessage(MimeMessage msg) { currentMessage = msg; }
    public MimeMessage getCurrentMessage() { return currentMessage; }
    
    public void setNewMessage(MimeMessage msg) { newMessage = msg; }
    public MimeMessage getNewMessage() { return newMessage; }
    
    public void setTo(String s) { to = s; }
    public String getTo() { return to; }
    
    public void setCc(String s) { cc = s; }
    public String getCc() { return cc; }
    
    public void setBcc(String s) { bcc = s; }
    public String getBcc() { return bcc; }
    
    public void setSubject(String s) { subject = s; }
    public String getSubject() { return subject; }
    
    public void setBody(String s) { body = s; }
    public String getBody() { return body; }    
}
        
