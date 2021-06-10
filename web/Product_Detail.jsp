<%-- 
    Document   : Product_Detail
    Created on : 9 Jun, 2021, 4:49:50 PM
    Author     : khans
--%>

<%@page import="Storage.ProductData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>  
        <jsp:useBean id="obj" class="Bean.ProductBean"/>
        <jsp:setProperty property="*" name="obj"/>
        <% 
            ProductData.setProductDetails1(obj);
            %>
    </head> 
    <body>
        <div class="container">
            <div class="row"></div> 
            
            <div class="row">
                <div class="col-md-3">
                    
                </div> 
                <div class="col-md-6">  
                    <fieldset>
                    <legend>New Auction</legend>
                    <form action="" method="post" enctype="multipart/form-data">
                        <input type="file" name="photo" class="form-control"/>
                        <input type="submit" value="Upload Image" class="btn btn-block btn-warning"/> 
                               
                    </form>
                    </fieldset>
                </div>
                <div class="col-md-3">
                    
                </div>
            </div>
        </div>
    </body>
</html>
