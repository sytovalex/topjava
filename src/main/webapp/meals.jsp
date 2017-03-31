<%--
  Created by IntelliJ IDEA.
  User: av.sitov
  Date: 31.03.2017
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>

<c:if test="${!empty listMeals}">
    <table class="tg" align="center" width="2">
        <tr>
            <th width="200">Дата приема пищи</th>
            <th width="120">Название приема пищи</th>
            <th width="150">Каллорийность</th>
        </tr>
        <c:forEach items="${listMeals}" var="meal">
            <tr bgcolor = <c:out value="${meal.getExceed() ? 'greed' : 'red'}" /> >
                <td><fmt:formatDate pattern="dd/MM/yyyy HH:mm:ss" value="${meal.getDateTime()}" /></td>
                <td>${meal.getDescription()}</td>
                <td>${meal.getCalories()}</td>
            </tr>
        </c:forEach>
    </table>

</c:if>


</body>
</html>
