<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Schemes Record</title>


<!-- css -->

<link rel="stylesheet" href="css/products.css">
<link rel="stylesheet" href="css/table.css">
<link rel="stylesheet" href="css/healthbg.css">

</head>
<body style="background-color:#fff;">
    <div class="healthbg">
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/insurance"
        user="root" password="Root@123"
    />
     
    <sql:query var="insurance"   dataSource="${myDS}">
        SELECT * FROM health;
    </sql:query>
    <div align="center">
        <table border="10" cellpadding="25">
            <caption><h1 class="color-h1">Health Plans</h1>
            <h5 class="color-h5">We will take care of your health expenses; you only focus on getting well.</h5>
            <h2 class="color-h2">List of Schemes</h2></caption>
            <tr>
            	<th>Serial No.</th>
                <th>Plan Name</th>
                <th>Plan No.</th>
                <th>UIN No.</th>
            </tr>
            <c:forEach var="health" items="${insurance.rows}">
                <tr>
                	<td><c:out value="${health.id }"/></td>
                    <td><a href="${health.details}"><c:out value="${health.Pname}" /></a></td>
                    <td><c:out value="${health.PlanNo}" /></td>
                    <td><c:out value="${health.UINno}" /></td>

                </tr>
            </c:forEach>
            </table>
            </br>
            <a href="index.jsp"><button type="submit">Go Back</button></a>
    </div>
    </div>
</body>
</html>
