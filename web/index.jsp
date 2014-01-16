<%-- 
    Document   : index
    Created on : 16-dic-2013, 1:26:53
    Author     : Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Conversor de monedas</h1>
        <h2><strong>Introduzca una cantidad y seleccione un cambio de moneda: </strong></h2>
        <form action="respuesta.jsp">
            <input type="text" name="cantidad" value="" />
            <select name="lista_monedas">
                <option value="1">dolares - euros</option>
                <option value="2">dolares - libras</option>
                <option value="3">dolares - pesos </option>
            </select>
            <input type="submit" value="Cambio" name="Cambio" />
        </form>
    </body>
</html>
