<%-- 
    Document   : shoppinglist
    Created on : Feb. 9, 2022, 1:00:21 p.m.
    Author     : peony
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    
    <body>
        <h1>Shopping List</h1>
        <p>Hello,${name} <a href="ShoppingList?action=logout">Logout</a></p>
        
        <h2>List</h2>
        
    <form action="shoppinglist" method="post">
        <input type="hidden" name="action" value="add">
        
        <label for="item">Add items:</label>
        <input type="text" name="item">
        <button type="submit">Add</button>
    </form>
        
        <form action="shoppinglist" method="post">
              <input type="hidden" name="action" value="delete">
            <c:forEach items="${items}" var="item">
            <p>
            <input type="radio" name="item" value="a${item}">
            ${item}
            </p><!-- comment -->
            </c:forEach>
            
            <button type="submit">Delete</button>
        </form>
    </body>
</html>
