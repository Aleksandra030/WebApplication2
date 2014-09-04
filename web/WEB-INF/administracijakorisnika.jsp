<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : administracijakorisnika
    Created on : Apr 25, 2014, 5:03:16 PM
    Author     : ANA
--%>

<%@page import="java.util.List"%>
<%@page import="domen.Korisnik"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="ulogovanikorisnik.jsp" %>
        <%@include 
            file="glavnimeni.jsp"%>
        <h1>Administracija korsinika</h1>
        <br/>
        <form action="/">
            <table border="1">
                <thead>
                    <tr>
                        <th>Ime</th>
                        <th>Prezime</th>
                        <th>Akcija</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Korisnik> lista= (List<Korisnik>)session.getAttribute("korisnici");
                        for(Korisnik k:lista){
                        %>
                    <tr>
                        <td><%=k.getIme()%></td>
                        <td><%=k.getPrezime()%></td>
                        <td><a href="./obrisikorisnika?korisnickoime=<%=k.getKorisnickoIme()%>">obrisi korsinika</a> <br/> izmeni</td>
                    </tr>
                   
                        <%}%>
                </tbody>
            </table>
                 <%=session.getAttribute("poruka")%>
                 <br/>
                 prikaz preko jstl-a
                 <br/>
                 <table border="1">
                     <thead>
                         <tr>
                             <th>Ime</th>
                             <th>Prezime</th>
                             <th>Akcija</th>
                         </tr>
                     </thead>
                     <tbody>
                     <c:forEach var="korisnik" items="${korisnici}">
                         
                         <tr>
                             <td>${korisnik.ime}</td>
                             <td>${korisnik.prezime}</td>
                             <td>
                                 
                                 <a href="./obrisikorisnika?korisnickoIme=${korisnik.korisnickoIme}}">obrisi korisnika</a>
                                 <br/>
                                 <a href=
                                    <c:url value="./obrisiKorisnika">
                                        <c:param name="korisnickoIme" value="${korisnik.korisnickoIme}"></c:param>
                                            
                                    </c:url>
                             </a>
                             </td>
                             
                         </tr>
                         
                     </c:forEach>
                         
                     </tbody>
                 </table>

        </form>
    

    </body>
</html>
