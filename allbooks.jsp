<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
function deleteConfirm() {
    return confirm("Are you sure? This action cannot be undone!");
}
</script>


<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f6f8;
    margin: 0;
    padding: 20px;
    text-align: center;
}

h2 {
    color: #333;
    margin-bottom: 20px;
}

table {
    margin: auto;
    width: 80%;
    border-collapse: collapse;
    background-color: white;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}

th {
    background-color: #4CAF50;
    color: white;
    padding: 12px;
}

td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

tr:hover {
    background-color: #f1f1f1;
}

tr:nth-child(even) {
    background-color: #fafafa;
}


 
    .add-book-btn
     {
    display: inline-block;
    padding: 10px 18px;
    background: linear-gradient(135deg, #6a11cb, #2575fc);
    color: #fff;
    font-weight: 500;
    border-radius: 25px;
    text-decoration: none;
    box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    transition: 0.3s;
}

.btn {
    text-decoration: none;
    padding: 6px 12px;
    margin: 2px;
    border-radius: 5px;
    font-size: 14px;
    color: white;
    display: inline-block;
    transition: 0.3s ease;
}

/* Edit button */
.edit-btn {
    background-color: #3498db;
}

.edit-btn:hover {
    background-color: #2980b9;
    transform: scale(1.05);
}

/* Delete button */
.delete-btn {
    background-color: #e74c3c;
}

.delete-btn:hover {
    background-color: #c0392b;
    transform: scale(1.05);
}

</style>



</head>

<body>

<h2>📚All Books</h2>

 <a href="addbook.jsp" class="add-book-btn">+Add new Book</a>

<table width=100% border="2">

<tr>
<th>ID</th>

<th>NAME</th>

<th>PRICE</th>

<th>QUANTITY</th>

<th>ACTION</th>


</tr>

<c:forEach var="book" items="${Books}">

<tr>
<td>${book.id} </td>
<td>${book.name} </td>
<td>💲${book.price} </td>
<td>${book.quantity} </td>

<td>
    
   
    <a href="edit?id=${book.id}" class="btn edit-btn">✏️ Edit</a>
    
   <a href="delete?id=${book.id}" 
   class="btn delete-btn" 
   onclick="return deleteConfirm()">
   🗑️ Delete
   </a>


</td>

</tr>

</c:forEach>






</table>

</body>
</html>






