<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Schemes Records</title>

<!-- css -->
<link rel="stylesheet" href="css/products.css">
<link rel="stylesheet" href="css/table.css">
<link rel="stylesheet" href="css/homebg.css">

</head>
<body style="background-color:#fff;">
<div class="homebg">
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/insurance"
        user="root" password="Root@123"
    />
     
    <sql:query var="insurance"   dataSource="${myDS}">
        SELECT * FROM home;
    </sql:query>
     
    <div align="center">
        <table border="10" cellpadding="25">
            <caption><h1 class="color-h1">Home Insurance Plans</h1>
            <h5 class="color-h5">Your cozy home, rented or owned is your world 
            </br>Secure it today!</h5>
            <h2 class="color-h2">List of Schemes</h2></caption>
            <tr>
            	<th>Serial No.</th>
                <th>Plan Name</th>
                <th>Plan No.</th>
                <th>UIN No.</th>
            </tr>
            <c:forEach var="home" items="${insurance.rows}">
                <tr>
                	<td><c:out value="${home.id}" /></td>
                    <td><a href="${home.details }"><c:out value="${home.Pname}" /></a></td>
                    <td><c:out value="${home.PlanNo}" /></td>
                    <td><c:out value="${home.UINno}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>    
   