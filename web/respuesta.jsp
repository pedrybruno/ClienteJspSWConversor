<%-- 
    Document   : respuesta.jsp
    Created on : 16-dic-2013, 1:48:01
    Author     : Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conversor</title>
    </head>
    <body>
        <h1>El cambio es:</h1>    <%-- start web service invocation --%><hr/>
    <%
    try {
	clientejspswconversor.SWConversor_Service service = new clientejspswconversor.SWConversor_Service();
	clientejspswconversor.SWConversor port = service.getSWConversorPort();
	 // TODO initialize WS operation arguments here
	double cantidad = Double.parseDouble(request.getParameter("cantidad"));
        int type = Integer.parseInt(request.getParameter("lista_monedas"));
        double result = 0;
        switch (type) {
            case 1:
                result = port.dolEur(cantidad);
                break;
            case 2:
                result = port.dolLib(cantidad);
                break;
                 case 3:
                result = port.dolPes(cantidad);
                break;
        }
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
