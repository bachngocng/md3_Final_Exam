<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <a href="/products">Product List</a>
    <h1>Product Detail</h1>
    <form action="/products?action=view" method="post">
        <div class="mb-3">
            <label for="productId" class="form-label">ProductId:</label>
            <input type="text" class="form-control" id="productId" name="id" value="${product.id}" disabled>
        </div>
        <div class="mb-3">
            <label for="productName" class="form-label">ProductName:</label>
            <input type="text" class="form-control" id="productName" name="name" value="${product.name}" disabled>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Price:</label>
            <input type="text" class="form-control" id="price" name="price" value="${product.price}" disabled>
        </div>
        <div class="mb-3">
            <label for="quantity" class="form-label">Quantity:</label>
            <input type="text" class="form-control" id="quantity" name="quantity" value="${product.quantity}" disabled>
        </div>
        <div class="mb-3">
            <label for="color" class="form-label">Color:</label>
            <input type="text" class="form-control" id="color" name="color" value="${product.color}" disabled>
        </div>
        <div class="mb-3">
            <label for="category_id" class="form-label">Category:</label>
            <input type="text" class="form-control" id="category_id" name="category_id" value="${product.category_id}" disabled>
        </div>
        <a href="/products" class="btn btn-secondary">Back to Product List</a>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>