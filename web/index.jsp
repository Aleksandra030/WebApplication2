<%-- 
    Document   : index
    Created on : Apr 24, 2014, 7:56:55 PM
    Author     : ANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="./prijaviSe">
            <table border="0">
             
                <tbody>
                    <tr>
                        <td>Korisnicko ime</td>
                        <td><input type="text" name="korisnickoime" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Korisnicka sifra</td>
                        <td><input type="password" name="koriisnickasifra" value="" size="30" /></td>
                    </tr>
                    <tr>
                        
                        <td colspan="2"><input type="submit" value="Uloguj se" name="Prijavi se" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
