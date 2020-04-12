<%--
  Created by IntelliJ IDEA.
  User: maxim
  Date: 4/11/2020
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upload contacts</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <form role="form" class="form-horizontal" enctype="multipart/form-data" action="/upload_contacts/upload" method="post">
        <h3>Upload contacts</h3>

        <input type="text" name="description" />
        <input type="file" name="file" />
        <input type="submit" class="btn btn-primary" value="Upload">
    </form>
</div>

<script>
    $('.selectpicker').selectpicker();
</script>
</body>
</html>
