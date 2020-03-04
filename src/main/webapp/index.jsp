<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style>
@import url('https://fonts.googleapis.com/css?family=Spartan:400,700|Trade+Winds&display=swap');
</style>
</head>
<body>
<center>
<h2>Product List</h2>
<p><a href='<c:url value="/create" />'>Create new</a></p>
<table>
<tr><th>Name</th><th>Price</th><th></th></tr>
<c:forEach items="${products}" var="product">
 <tr><td>${product.name}</td>
    <td>${product.price}</td>
    <td>
    <a href='<c:url value="/edit?id=${product.id}" />'>Edit</a> |
    <form method="post" action='<c:url value="/delete" />' style="display:inline;">
        <input type="hidden" name="id" value="${product.id}">
        <input type="submit" value="Delete">
    </form>
 </td></tr>
</c:forEach>
</table>
</center>
</body>
</html>
