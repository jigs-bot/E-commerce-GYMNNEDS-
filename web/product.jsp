

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> ADD PRODUCT HERE</h1>
        <fieldset style="width: 270px">
        <form action="product1.jsp" enctype="multipart/form-data" method="post">
           <table ><tr>
                   <td>Product name:</td>
                   <td> <input type="text" name="name"><br></td></tr>
           <tr><td> Product price:</td>
            <td><input type="text" name="cost"><br></td></tr>
           <tr>
            <td>Image:</td>
           <td> <input type="file" name="myFile"><br></td></tr>
            <tr><td>Description:</td>
                <td> <input type="text" name="desc"><br></td></tr>
                  
            <tr> <td>Brand:</td>
                 <td> <input type="text" name="brand"><br> </td></tr>  
            <tr> <td>Warrety:</td>
                 <td> <input type="text" name="warrenty"><br></td></tr>
            <tr> <td>Category:</td>
                 <td> <input type="text" name="category"><br></td></tr>
           <tr> <td> Subcategory:</td>
           <td><input type="text" name="subcategory"><br></td><br></tr>
           <tr>
               <td>
  <input type="submit" value="save"></td></tr>
  </table>
            </form>
        </fieldset>
        
    </body>
</html>
