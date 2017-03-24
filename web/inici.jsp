<%-- 
    Document   : inici
    Created on : 22-mar-2017, 17:30:19
    Author     : clara
--%>
<%@page import="calculadora.*"%>
<%@page errorPage="errors.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Súper calculadora</h1>
        <small>Li agafaràs gust a les matemàtiques</small>
        <% if (request.getParameter("n1") == null) { %>
        <form action="inici.jsp" method="post">
            N1: <input type="text" name="n1" />
            N2: <input type="text" name="n2" />

            <input type="submit" name="operacio" value="+"/>
            <input type="submit" name="operacio" value="-" />
            <input type="submit" name="operacio" value="*" />
            <input type="submit" name="operacio" value="/" />
        </form>
        <% } else {
           int n1 = Integer.parseInt(request.getParameter("n1"));
           int n2 = Integer.parseInt(request.getParameter("n2"));
           String operacio = request.getParameter("operacio");
           
           Calculadora calc = new Calculadora();
           int resultat = calc.calcular(n1, n2, operacio);
           out.println("El resultat és: " + resultat);
        }%>
    </body>
</html>
