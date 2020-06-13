

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Forget Pass</title>
    </head>
    
    <body>
        <%@page import="java.util.*,javax.mail.*" %>
        <%@page import="javax.mail.internet.*"%>
        <%@page import="java.sql.*" %>
        <%@include file="connection.jsp"%>
        
        <%! String eml; %>
        <%
            eml=request.getParameter("email");
           try{ 
    
    String qry="select * from CUSTOMER where email='"+eml+"'";
    PreparedStatement ps=conn.prepareStatement(qry);
    ResultSet rs=ps.executeQuery();
    
    if(rs.next()){
        final String pass=rs.getString("PSWRD");
        final String from="jigyashusingh01@gmail.com";
        final String gpass="jigyashusuman01";
        
        String host="smtp.gmail.com";
        String to=eml;
        String subject="Password Recovery";
        
        
        //Creating Properties;
        
        Properties props=System.getProperties();
        props.put("mail.smtp.host",host);
        props.put("mail.transport.protocol","smtp");
        props.put("mail.smtp.auth","true");
        props.put("mail.smtp.starttls.enable","true");
        props.put("mail.user",from);
        props.put("mail.password",gpass);
        
        props.put("mail.port","587");
        
        
        
        
        
        // Autherized the session;
        
        Session mailSession=Session.getInstance(props,new javax.mail.Authenticator(){
            @Override
            
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(from,gpass);
            }
        });
        
        
        
        // Create a default MimeMessage obj..
        
        MimeMessage message=new MimeMessage(mailSession);
        message.setFrom(new InternetAddress(from));
        message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
        message.setSubject(subject);
        message.setText(pass);
        
        
        //send message
        Transport transport= mailSession.getTransport();
        transport.connect();
        transport.sendMessage(message,message.getRecipients(Message.RecipientType.TO));
        transport.close();
        
        out.println("Your Password sent to mail successfully...");
        
        
    }
    else{
        out.println("Email Address Not Registered.");
    }
        }
        catch(MessagingException mex){
        out.println( "error hai" +mex);
        }
            %>
        
    </body>
</html>
