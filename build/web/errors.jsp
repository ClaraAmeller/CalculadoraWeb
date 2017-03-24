<%-- 
    Document   : errors
    Created on : 22-mar-2017, 17:54:51
    Author     : clara
--%>

<%@page import="calculadora.DivisioIndeterminada"%>
<%@page import="calculadora.DivisioInfinitaException"%>
<%@page import="calculadora.RestaNegativaException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Warning!</h1>
        <% 
            if (exception instanceof RestaNegativaException) {
                out.print("No pots restar un número major!");
            } else if(exception instanceof DivisioInfinitaException) {
                out.print("No pots dividir entre 0!");
            } else {
                out.print("No s'admeten divisions indeterminades!");
            }
        
        %>
    </body>
</html>
