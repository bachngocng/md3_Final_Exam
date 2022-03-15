<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <a href="/products">Product List</a>
    <h1>ADD NEW</h1>
    <form action="/products?action=create" method="post">
        <div class="mb-3">
            <label for="productName" class="form-label">Product Name:</label>
            <input type="text" class="form-control" id="productName" name="name"  placeholder="Enter Product Name">
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Price:</label>
            <input type="text" class="form-control" id="price" name="price"  placeholder="Enter Product Price">
        </div>
        <div class="mb-3">
            <label for="quantity" class="form-label">Quantity:</label>
            <input type="text" class="form-control" id="quantity" name="quantity"  placeholder="Enter Product Quantity" >
        </div>
        <div class="mb-3">
            <label for="color" class="form-label">Color:</label>
            <input type="text" class="form-control" id="color" name="color" placeholder="Enter Product Color" >
        </div>
        <div class="mb-3">
            <select name="category_id" style="width: 300px;height: 30px">
                <option style="text-align: center">Select Category</option>
                <c:forEach var="category" items="${categories}">
                    <option value="${category.id}" style="text-align: center">${category.name}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Create New</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>