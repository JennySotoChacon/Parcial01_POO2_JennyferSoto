<%-- 
    Document   : index
    Created on : 24-ago-2016, 23:01:02
    Author     : Owner
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'/>
        <script type='text/javascript' src='webjars/jquery/2.1.4/jquery.min.js'></script>
        <script type='text/javascript' src='webjars/bootstrap/3.2.0/js/bootstrap.min.js'></script>
    </head>
    <body>
        <!--INICIO MENU-->
        <ul class="menu">
        <li><a href="index.jsp">Alumnos</a></li>
        <li><a href="#">Grupos-Alumnos</a></li>
        <li><a href="#">listado de grupos</a></li>
        <li><a href="#" class="active">Hecho por: Jennyfer Soto</a></li>
        <li class="slider"></li>
      </ul>
        <!--FIN MENU-->
        <form action="LugaAcceServ" method="Post">
            <div class="container">
                <div class="panel panel-default" style="padding: 15px;">
                    <h2>Alumnos</h2>
                    <div class="form-group">
                        <input type="hidden" name="codi" id="codi" value="${codi}"/>
                        <label for="nomb">Nombre: </label>
                        <input type="text" name="nomb" value="${nomb}"/>
                        <label for="apel">Apellido: </label>
                        <input type="text" name="apel" value="${apel}"/>
                        <label for="fech">Fecha de nacimiento </label>
                        <input type="text" name="apel" value="${apel}"/>
                    </div>
                    <div class="btn-group">
                        <input type="submit" name="lugaAcceBton" value="Guardar" class="btn btn-success" />
                        <input type="submit" name="lugaAcceBton" value="Modificar" class="btn btn-default" />
                        <input type="submit" name="lugaAcceBton" value="Consultar" class="btn btn-default" />
                        <input type="submit" name="lugaAcceBton" value="Eliminar" class="btn btn-danger" />
                    </div>
                </div>
            </div>
            <!--<div class="container">
                <div class="panel panel-default"style="padding: 15px;">
                    
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Fecha Alta</th>
                                <th>Seleccione</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                        </tbody>
                    </table>
                </div>
        </div>-->

        </form>
    </body>
</html>
