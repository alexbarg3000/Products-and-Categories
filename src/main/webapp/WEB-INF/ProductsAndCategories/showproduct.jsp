<%--
  Created by IntelliJ IDEA.
  User: Alexsander
  Date: 1/10/2021
  Time: 7:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <link rel="stylesheet" href="../../../resources/static/css/style.css">
</head>
<body>
<div class="container">

    <div id="container">
        <div id="leftpanel">
            <h1><c:out value="${product.name}"/></h1>
            <h2>Categories:</h2>
            <c:forEach items="${product.categories}" var="cat">
                <h3>-<c:out value="${cat.name}"/></h3>
            </c:forEach>
        </div>
        <div id="rightpanel">
            <form:form action="/attachcategory" method="post" modelAttribute="categoryProductObj">
                <h2>
                    <form:label cssClass="label left" path="category">Add Category:</form:label>
                    <form:select cssClass="box" path="category">
                        <c:forEach items="${categories}" var="cat">
                            <form:option value="${cat.id}"><c:out value="${cat.name}"/></form:option>
                        </c:forEach>
                    </form:select>
                </h2>
                <form:hidden path="product" value="${product.id}" />
                <input id="btn" type="submit" value="Create"/>
            </form:form>
        </div>
    </div>


</div>
</body>
</html>
