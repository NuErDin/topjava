<%@ page import="org.example.topjava.util.DateTimeUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Meal list</title>
   <style>
       .normal {color: green;}
       .exceeded {color: red;}
   </style>
</head>
<body>
    <section>
        <h2><a href="index.html">Home</a></h2>
        <h3>Meal list</h3>
        <hr>
        <table border="1" cellpadding="8" cellspacing="0">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Calories</th>
                </tr>
            </thead>
            <c:forEach items="${mealList}" var="meal">
                <jsp:useBean id="meal" scope="page" type="org.example.topjava.to.MealWithExceed" />
                <tr class="${meal.exceed ? 'exceeded' : 'normal'}">
                    <td>
                        <%=DateTimeUtil.toString(meal.getDateTime())%>
                    </td>
                    <td>
                        ${meal.description}
                    </td>
                    <td>
                        ${meal.calories}
                    </td>
                </tr>
            </c:forEach>
        </table>
    </section>
</body>
</html>