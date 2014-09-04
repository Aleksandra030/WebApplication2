<%-- 
    Document   : ulogovanikorisnik
    Created on : Apr 24, 2014, 10:30:12 PM
    Author     : ANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:useBean id="korisnik" scope="session" class="domen.Korisnik" >
        <jsp:setProperty name="korisnik" property="ime" value="default ime" />
        <jsp:setProperty name="korisnik" property="prezime" value="default prezime" />
    </jsp:useBean>
    <body>
        Trenutno ulogovani korisnik je <strong>${korisnik.ime}, ${korisnik.prezime}</strong>
        <a href="./odjavise">odjavi se</a>
        <br/>
        ime korisnika:<jsp:getProperty name="korisnik" property="ime" />
        <br/>
        prezime korisnika:<jsp:getProperty name="korisnik" property="prezime" />
    </body>
</html>
