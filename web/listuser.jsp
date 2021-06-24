<%-- 
    Document   : listuser
    Created on : Nov 19, 2020, 9:48:44 PM
    Author     : pmoreno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <table border=1>
        <thead>
            <tr>
                <th>User Name</th>
                <th>Email</th>
                <th>Registration Date</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.uname}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><fmt:formatDate pattern="yyyy-MM-dd" value="${user.registeredon}" /></td>
                    <td><a href="UsersController?action=edit&userId=<c:out value="${user.uname}"/>">Update</a></td>
                    <td><a href="UsersController?action=delete&userId=<c:out value="${user.uname}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
        </table>
        <p><a href="UsersController?action=insert">Add User</a></p>
        <p><a href="uploads.jsp">Upload File</a></p>
        <p><a href="multipleuploads.jsp">Multiple Uploads</a></p>
    </body>
</html>
