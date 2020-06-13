

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@page import="java.io.*,java.sql.*,java.util.*,org.apache.commons.fileupload.disk.DiskFileItemFactory,org.apache.commons.fileupload.servlet.ServletFileUpload,org.apache.commons.fileupload.FileItem" %>
    <%! String nm,pic,descc,pbrand,pcategory,scategory ; int price,pwarrenty;%>
    <%
        try
        {
        DiskFileItemFactory factory=new DiskFileItemFactory();  
        ServletFileUpload sfu= new ServletFileUpload(factory);
        
        if(! ServletFileUpload.isMultipartContent(request)){
            out.println("sorry");
            return ;
        }
         List items=sfu.parseRequest(request);
         
         FileItem name=(FileItem) items.get(0);
         nm= name.getString(); 
         
         FileItem cost=(FileItem) items.get(1);
         String photoid= cost.getString();
         price = Integer.parseInt(photoid);
         
         FileItem file= (FileItem) items.get(2);
         
         FileItem desc=(FileItem) items.get(3);
        descc= desc.getString();
        
        FileItem brand=(FileItem) items.get(4);
        pbrand= brand.getString();
        
        FileItem warrenty=(FileItem) items.get(5);
         String productwarenty= warrenty.getString();
         pwarrenty =Integer.parseInt(productwarenty);
         
         FileItem category=(FileItem) items.get(6);
        pcategory= category.getString();
        
        FileItem subcategory=(FileItem) items.get(7);
        scategory= subcategory.getString();
      
   String query = "INSERT INTO PRODUCT (name,price,image,description,brand,warrenty,category,subcategory,id) VALUES (?, ?, ?,?,?,?,?,?,product_seq.nextval)";
PreparedStatement  ps= conn.prepareStatement(query);
              ps.setString(1,nm);
			  ps.setInt(2,price);
			  ps.setBinaryStream(3,file.getInputStream(),(int)file.getSize());
                          ps.setString(4,descc);
                          ps.setString(5,pbrand);
                          ps.setInt(6,pwarrenty);
                          ps.setString(7,pcategory);
                          ps.setString(8,scategory);
                            ps.executeUpdate();
                            out.println("saved");
        }catch (Exception ex)
        {
            out.println(ex);
        }
        
        %>
    </body>
</html>
