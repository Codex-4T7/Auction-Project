<%-- 
    Document   : SignUpHandler
    Created on : 7 Jun, 2021, 5:07:29 PM
    Author     : khans
--%>

<%@page import="Storage.DBData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 

<jsp:useBean id="obj" class="Bean.SignUpBean" />
<jsp:setProperty property="*" name="obj"/> 
<script src="C:\Users\khans\Documents\NetBeansProjects\AuctionProject\web\JS'\WelcomeMsg.js">
    
</script>
<% 
        int i = DBData.newBidder(obj);
        if(i==1)
         {%>
         <body onload="welcomeMsg()">
             <input type="hidden" id="id1" value="<%= obj.getName() %>"/>
         </body>
             
         <%}
        else
        {
            
        }
%>