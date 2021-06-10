    <%-- 
    Document   : Product_Form
    Created on : 9 Jun, 2021, 4:24:49 PM
    Author     : khans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <jsp:include page="BootstrapCDN.jsp"></jsp:include>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String b_id = request.getParameter("id"); %>
        
        <div class="container">
            <div class="row"></div> 
            
            <div class="row">
                <div class="col-md-3">
                    
                </div> 
                <div class="col-md-6">  
                    <fieldset>
                    <legend>New Auction</legend>
                    <form action="" method="">
                        <select name="category" class="form-control"> 
                            <option Selected disabled>Select Category</option>
                            <option value="Vehicle">Vehicle</option> 
                            <option value="Electronic">Electronics</option>
                            <option value="Books">Book</option>
                            <option value="House">House</option>
                            <option value="Artifacts">Artifacts</option>
                            <option value="Furniture">Furniture</option>
                            <option value="Souveniers">Souvenirs</option>
                        </select>  
                        <br/>
                        <textarea name="description" class="form-control" placeholder="Enter Product Description"></textarea>
                        <input type="text" name="initial_price" class="form-control" placeholder="Enter Initial Price of the Product "/><br/>
                        <input type="date" name="schhedule_date" class="form-control" placeholder="Enter Date for the Auction"/><br/>
                        <input type="hidden" name="b_id" value=""/><br/>
                        <input type="submit" value="Save" class="btn btn-info btn-block"/><br/>
                    </form>
                    </fieldset>
                </div>
                <div class="col-md-3">
                    
                </div>
            </div>
        </div>
             
    </body>
</html>
