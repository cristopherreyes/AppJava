<%@page import="accesodato.Coneccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $.get("http://localhost:8080/AppJava01/Tarea", function (data, status) {
                        $.each(data, function (i, item) {
                        $('#servicios').append('<option value=' + item.unidad_id + '>' + item.nombre + '</option>');
                    });

                });
            });

        </script>
    </head>
    <body>

        <select id="servicios">
           
        </select>
        <select id="unidades">
            
        </select>   
        <select id="responsables">
            
        </select>

        Asignar tarea:<input type="text" id="tarea">
        <br>
        <input type="button" value="Ocultar" id="ocultar">
        <input type="button" value="Mostrar" id="mostrar">
    </body>
</html>
