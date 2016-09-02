<%-- 
    Document   : listado
    Created on : 01-sep-2016, 15:48:55
    Author     : Owner
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <li><a href="#">Grupos-Alumnos</a></li>
        <li><a href="#">listado de grupos</a></li>
        <li><a href="#" class="active">Hecho por: Jennyfer Soto</a></li>
        <li class="slider"></li>
      </ul>
        <!--FIN MENU-->
        <form action="" method="Post">
            <div class="container">
                <div class="panel panel-default" style="padding: 15px;">
                    <h2>Grupos-Alumnos</h2>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <jsp:useBean id="no" class="com.sv.udb.controlador.gruposAlumnos" scope="page"/>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${gruposAlumnos.ConsTodo()}" var="fila">
                                        <tr>
                                            <c:if test="${fila.codiGrup.codiGrup ==codi}">


                                                <td><c:out value="${fila.codiAlum.nombAlum}"></c:out></td>
                                                <td><c:out value="${fila.codiAlum.apelAlum}"></c:out></td>

                                            </c:if>

                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>

