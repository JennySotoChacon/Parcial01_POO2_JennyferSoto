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
                            <label name="grupos">Grupos: </label>
                            <select name="cmbGrupos" class="form-control">
                                <jsp:useBean id="beanGruposCtrl" class="com.sv.udb.controlador.GruposCtrl" scope="page"/>
                                <c:forEach items="${beanGruposCtrl.ConsTodo()}" var="fila">
                                    <c:choose>
                                        <c:when test="{fila.codiGrup eq cmbAlumnos}">
                                            <option name="nombGrup" value="${fila.codiGrup}" selected="">${fila.nombGrup}</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option name="nombGrup" value="${fila.codiGrup}">${fila.nombGrup}</option>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </select>
                        </div>
                    <div class="panel panel-default"style="padding: 15px;">
                    <jsp:useBean id="beanGrupos" class="com.sv.udb.controlador.gruposAlumnos" scope="page"/>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Alumnos</th>
                                <th>Seleccione</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${LugaAcceCtrl.ConsTodo()}" var="fila">
                                <tr>
                                    <td><c:out value="${fila.codiAlum}"></c:out></td>
                                    <td> <input type="radio" name="codiRadi" value="${fila.codiAlum}"/></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                    </div>
                    <div class="btn-group">
                        <input type="submit" name="grupAlumBton" value="Guardar" class="btn btn-success" />
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>

