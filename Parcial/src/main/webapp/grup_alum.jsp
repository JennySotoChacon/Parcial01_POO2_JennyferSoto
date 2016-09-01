<%-- 
    Document   : grup_alum
    Created on : 01-sep-2016, 14:26:34
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
        <form action="grupAlumServ" method="Post">
            <div class="container">
                <div class="panel panel-default" style="padding: 15px;">
                    <h2>Grupos-Alumnos</h2>
                    <div class="form-group">                        
                        <div class="col-sm-12">
                            <label name="alumnos">Alumnos: </label>
                            <select name="cmbAlumnos" class="form-control">
                                <jsp:useBean id="beanAlumnosCtrl" class="com.sv.udb.controlador.AlumnosCtrl" scope="page"/>
                                <c:forEach items="${beanAlumnosCtrl.ConsTodo()}" var="fila">
                                    <c:choose>
                                        <c:when test="{fila.Codi_unid_orga eq cmbUnidad}">
                                            <option name="nombAlum" value="${fila.codiAlum}" selected="">${fila.nombAlum}</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option name="nombAlum" value="${fila.codiAlum}">${fila.nombAlum}</option>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-sm-12">
                            <label name="grupos">Grupos: </label>
                            <select name="cmbAlumnos" class="form-control">
                                <jsp:useBean id="beanGruposCtrl" class="com.sv.udb.controlador.GruposCtrl" scope="page"/>
                                <c:forEach items="${beanGruposCtrl.ConsTodo()}" var="fila">
                                    <c:choose>
                                        <c:when test="{fila.Codi_unid_orga eq cmbUnidad}">
                                            <option name="nombAlum" value="${fila.codiGrup}" selected="">${fila.nombGrup}</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option name="nombAlum" value="${fila.codiGrup}">${fila.nombGrup}</option>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </select>
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
