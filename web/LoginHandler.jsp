<%-- 
    Document   : LoginHandler
    Created on : 8 Jun, 2021, 4:27:46 PM
    Author     : khans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="Storage.DBData, Bean.SignUpBean" %>

<jsp:useBean id="obj" class="Bean.SignUpBean" scope="session" />
<jsp:setProperty property="*" name="obj" />

<%
              String status =  DBData.checkLogin(obj);
    if (status.equals("true")) {
        session.setAttribute("email", obj.getEmail());
        response.sendRedirect("home.jsp");
    }
    if (status.equals("false")) {
        response.sendRedirect("index.jsp?status=false");
    }
    if (status.equals("error")) {
         response.sendRedirect("index.jsp?status=false");
    }
%>