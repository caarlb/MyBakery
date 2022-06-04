<%-- 
    Document   : shop
    Created on : 4/06/2022, 01:16:03
    Author     : caarlb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
            String probando;
            probando = request.getParameter("cod_bread");
            
        %>
        
         <h1>Bienvenido <%=probando%> </h1>
    </body>
</html>
