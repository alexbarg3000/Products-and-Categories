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
                <h1><c:out value="${category.name}"/></h1>
                <h2>Products:</h2>
                <c:forEach items="${category.products}" var="prod">
                    <h3>-<c:out value="${prod.name}"/></h3>
                </c:forEach>
            </div>
            <div id="rightpanel">
                <form:form action="/attachproduct" method="post" modelAttribute="categoryProductObj">
                    <h2>
                        <form:label cssClass="label left" path="product">Add Product:</form:label>
                        <form:select cssClass="box" path="product">
                            <c:forEach items="${products}" var="prod">
                                <form:option value="${prod.id}"><c:out value="${prod.name}"/></form:option>
                            </c:forEach>
                        </form:select>
                    </h2>
                    <form:hidden path="category" value="${category.id}" />
                    <input id="btn" type="submit" value="Create"/>
                </form:form>
            </div>
        </div>



    </div>
</body>
</html>
