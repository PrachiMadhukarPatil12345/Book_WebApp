<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Search</title>

<style>
    body {
        font-family: Arial, sans-serif;
          background: #f5f5dc;
        background: #eef7f1;
      
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container
     {
        background: white;
        padding: 25px 35px;
        border-radius: 10px;
        box-shadow: 0 6px 12px rgba(0,0,0,0.1);
        text-align: center;
        width: 300px;
    }

    h2 {
        margin-bottom: 20px;
        color: #333;
    }

    label
     {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        text-align: left;
    }

    input[type="number"] 
    {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    input[type="submit"]
     {
        width: 100%;
        padding: 10px;
        background: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover
     {
        background: #0056b3;
    }
    
    
     .card {
        background: #fff;
        padding: 25px 30px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        width: 320px;
    }

    .card h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    .row {
        margin: 10px 0;
        font-size: 16px;
    }

    .label {
        font-weight: bold;
        color: #555;
    }

    .value {
        color: #007bff;
    }
    
    
    
   
    .add-book-btn {
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

.add-book-btn:hover {
    box-shadow: 0 6px 14px rgba(0,0,0,0.3);
    transform: translateY(-2px);
    background-color: #ff5722; /* hover color (orange) */
}

    
    
    
    
    
    
    
</style>

</head>
<body>

<div class="container">
    <h2>Book Search</h2>

    <form action="search">  
    
   <a href="addbook.jsp" class="add-book-btn">+Add new Book</a>
   
   
    
        <label>Book Id</label>
        <input type="number" name="id" placeholder="Enter Book Id">

        <input type="submit" value="Search">
        
        
        
        
        
        
        
        
        
        
        
        
        <h4 style='color:red' >${Message}</h4>
        
                 
         <c:if test="${not empty Book}">
        
     <div class="card">
    <h2>Book Details</h2>

    <div class="row">
        <span class="label">Book Id:</span>
        <span class="value">${Book.id}</span>
    </div>
    
<br>
    <div class="row">
        <span class="label">Name:</span>
        <span class="value">${Book.name}</span>
    </div>
    
    <br>
    

    <div class="row">
        <span class="label">Price:</span>
        <span class="value">${Book.price}</span>
    </div>
    
    <br>

    <div class="row">
        <span class="label">Quantity:</span>
        <span class="value">${Book.quantity}</span>
    </div>
</div>
           <br>
           
           </c:if> 
           
           
    </form>
    
    
</div>




</body>
</html>

































