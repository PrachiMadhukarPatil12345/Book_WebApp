<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #667eea, #764ba2);
        margin: 0;
        padding: 0;
    }

    .container {
        width: 350px;
        margin: 80px auto;
        background: #fff;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    label {
        font-weight: bold;
        display: block;
        margin-top: 10px;
        color: #555;
    }

    input {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 6px;
        transition: 0.3s;
    }

    input:focus {
        border-color: #667eea;
        outline: none;
        box-shadow: 0 0 5px rgba(102,126,234,0.5);
    }

    button {
        width: 100%;
        padding: 10px;
        margin-top: 20px;
        border: none;
        background: #667eea;
        color: white;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        transition: 0.3s;
    }

    button:hover
     {
        background: #5a67d8;
    }
    
    .allbook
     {
    display: inline-block;
    padding: 10px 18px;
    background-color: #4CAF50;   /* green */
    color: white;
    text-decoration: none;
    border-radius: 6px;
    font-weight: bold;
    transition: 0.3s ease;
}

.allbook:hover 
{
    background-color: #45a049;
    transform: scale(1.05);
}

</style>

</head>




<body>

<div class="container">

    <h2>Edit Book</h2>
    
    <c:if test="${msg!=null}">  
    
    <h3>${msg}</h3>
    
              </c:if>
    
    <a href="/allbooks" class ="allbook" >All Books</a>
  
    <form action="editbook" method ="post">   <!-- it calls addbook api -->
    
    <input type="hidden"  value="${book.id}" placeholder=" Enter id">
    
    
    
        <label>Book ID:</label>
        <input type="text" name="id" value="${book.id}" readonly>

        <label>Book Name:</label>
        <input type="text" name="name" value="${book.name}" required>

        <label>Price:</label>
        <input type="number" name="price" value="${book.price}" step="0.01" required>

        <label>Quantity:</label>
        <input type="number" name="quantity" value="${book.quantity}" required>

        <button type="submit">Edit Book </button>
    </form>
</div>





</body>
</html>



