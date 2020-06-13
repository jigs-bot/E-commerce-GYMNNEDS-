

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<HTML>
<HEAD>
<TITLE>REGISTERATION</TITLE>
</HEAD>
<BODY>
<%
    String name = request.getParameter("name");
   String email = request.getParameter("email");
   String phone = request.getParameter("number");
   String password = request.getParameter("password");
   String address = request.getParameter("address");
   

PreparedStatement pstatement = null;  
   try
{  
    
    int updateQuery = 0;
    if(name!=null && address!=null && phone!=null &&email!=null && password!=null){
	 		 // check if the text box having only blank spaces
	     if(name!="" && address!="" && phone!="" &&email!="" && password!="") {
    
   String queryString = "INSERT INTO customer(CUST_NAME,EMAIL,MOBILE,PSWRD,ADDRESS,ID) VALUES (?, ?, ?, ?, ?,cust_reg.nextval)";
pstatement = conn.prepareStatement(queryString);
              pstatement.setString(1, name);
			  pstatement.setString(2, email);
			  pstatement.setString(3, phone);
                          pstatement.setString(4, password);
			  pstatement.setString(5, address);
                           updateQuery = pstatement.executeUpdate();
                           if (updateQuery != 0) {
                               out.println("done");
                           }                           
}
    }
}

catch(Exception e)
{
    out.println("Exception : " + e.getMessage() + "");
}
 conn.close();  
             
    

%>
</BODY>
</HTML>