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
        <title>Parcial POO2</title>
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
        <li><a href="grup_alum.jsp">Grupos-Alumnos</a></li>
        <li><a href="seleccionarGrupo.jsp">listado de grupos</a></li>
        <li><a href="#" class="active">Hecho por: Jennyfer Soto</a></li>
        <li class="slider"></li>
      </ul>
        <!--FIN MENU-->
        <form action="AlumnoServ" method="Post">
            <div class="container">
                <div class="panel panel-default" style="padding: 15px;">
                    <h2>Alumnos</h2>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="hidden" name="codi" id="codi" value="${codi}"/>
                            <label for="nomb">Nombre: </label>
                            <input class="form-control" type="text" name="nomb" value="${nomb}"/>
                        </div>
                        <div class="col-sm-12">
                            <label for="apel">Apellido: </label>
                            <input class="form-control" type="text" name="apel" value="${apel}"/>
                        </div>
                        <div class="col-sm-12">
                            <label for="fech">Fecha de nacimiento: </label>
                            <input class="form-control" type="date" name="apel" value="${apel}"/>
                        </div>
                        <div class="col-sm-12">
                            <label for="email">E-mail: </label>
                            <input class="form-control" type="text" name="email" value="${email}"/>
                        </div>
                        <div class="col-sm-12">
                            <label for="tel">Telefono: </label>
                            <input class="form-control" type="text" name="tel" value="${tel}"/>
                        </div>
                        <div class="col-sm-12">
                            <label for="dire">Direccion: </label>
                            <input class="form-control" type="text" name="dire" value="${dire}"/>
                        </div>
                        <div class="col-sm-12">
                            <label for="gen" name="gen">Genero: </label>
                            <select class="form-control" name="gen">
                                <option value="f">Femenino</option>
                                <option value="m">Masculino</option>
                            </select>
                        </div>
                    </div>
                    <div class="btn-group">
                        <input type="submit" name="lugaAcceBton" value="Guardar" class="btn btn-success" />
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
