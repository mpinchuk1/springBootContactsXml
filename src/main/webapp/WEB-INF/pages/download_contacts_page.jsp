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
    <title>Download contacts</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <form role="form" class="form-horizontal" action="/download_contacts/download" method="get">
        <h3>Select group of contacts, what you want to download</h3>
        <select class="selectpicker form-control form-group" name="group">
            <option value="-1">Default</option>
            <c:forEach items="${groups}" var="group">
                <option value="${group.id}">${group.name}</option>
            </c:forEach>
        </select>

        <input type="submit" class="btn btn-primary" value="Download">
    </form>
</div>

<script>
    $('.selectpicker').selectpicker();
</script>
</body>
</html>
