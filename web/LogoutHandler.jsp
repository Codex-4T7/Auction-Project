<%-- 
    Document   : LogoutHandler.jsp
    Created on : 8 Jun, 2021, 4:56:14 PM
    Author     : khans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>
