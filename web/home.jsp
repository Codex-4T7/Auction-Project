<%@page import="Configure.DBConnect"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : home
    Created on : 8 Jun, 2021, 4:41:29 PM
    Author     : khans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@include file="BootstrapCDN.jsp" %> 
<%@page import="java.sql.*, Configure.DBConnect, Storage.DBData " %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>  
        <% 
            String email = (String) session.getAttribute("email"); 
            if(email == null)
            { 
                response.sendRedirect("index.jsp");
            }
         
        %>
        <div class="container"> 
            <div class="row">
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">Auction Buddy</a>
                        </div>
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <!--<li><a href="#">Link</a></li> -->
                           <!-- <li><a href="#">Link</a></li> -->
                        </ul>
                        <button class="btn btn-primary navbar-btn"><a href="Product_Form.jsp?id" >Create Auction</a></button>
                        <ul class="nav navbar-nav navbar-right">
                            <button class="btn btn-danger navbar-btn"><a href="LogoutHandler.jsp">Logout</a></button>
                        </ul>
                    </div> 


                </nav> 
            </div>   
            <div class="row">  
                <div class="col-md-6">
                    
                </div> 
                <div class="col-md-6">
                    <h3><%= "Welcome! "+email %></h3>
                </div> 
            </div>
            <div class="row">  
                <!-- liveAuction -->
            </div> 
            <div class="row">
                <div class="col-md-4">  
                    <table class="table">
                    <% 
                        try
                        { 
                            Connection con  = DBConnect.takeConnection();
                            String query = "select * from bidder where email=?";
                            PreparedStatement ps = con.prepareStatement(query); 
                            ps.setString(1, email);
           ResultSet rs = ps.executeQuery();
           if (rs.next()) {
                   out.println("<tr><th>Name: </th><td>" + rs.getString("name") + "</td></tr>");
                   out.println("<tr><th>Email: </th><td>" + rs.getString("email") + "</td></tr>");
                   out.println("<tr><th>Occupation: </th><td>" + rs.getString("occupation") + "</td></tr>");
                   out.println("<tr><th>Networth: </th><td>" + rs.getString("networth") + "</td></tr>");
                   out.println("<tr><th>Location: </th><td>" + rs.getString("location") + "</td></tr>");
                   out.println("<tr><th>Mobile: </th><td>" + rs.getString("mobile") + "</td></tr>");

               }
                         }
                         catch(Exception e)
                         { 
                             
                         }
                    %>
                    
                    <!-- Bidder Info --> 
                    <tr><th><button class="btn btn-sm btn-info">Edit</button></th>
                        
                    </table>
                </div>
                    <div class="col-md-6">
                        <jsp:include page="DidderAuctionDetails.jsp"  /> 
                        <jsp:param name=""/>
                    </div>
            </div>
        </div>
            

    </body>
</html>
