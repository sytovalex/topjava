<%--
  Created by IntelliJ IDEA.
  User: av.sitov
  Date: 31.03.2017
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="f" uri="http://web.topjava.javawebinar.ru/functions"  %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>

<c:if test="${!empty listMeals}">
    <table class="tg" align="center" width="2">
        <tr>
            <th>Дата приема</th>
            <th>Название</th>
            <th>Каллорийность</th>
        </tr>
        <c:forEach items="${listMeals}" var="meal">
            <tr bgcolor = <c:out value="${meal.getExceed() ? 'red' : 'green'}" /> >
                <td>${f:formatLocalDateTime(meal.getDateTime(), 'yyyy-MM-dd hh:mm')}</td>
                <td>${meal.getDescription()}</td>
                <td>${meal.getCalories()}</td>
            </tr>
        </c:forEach>
    </table>

</c:if>


</body>
</html>
