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

</head>
<body style="background-color:#fff;">
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/insurance"
        user="root" password="Root@123"
    />
     
    <sql:query var="insurance"   dataSource="${myDS}">
        SELECT * FROM life;
    </sql:query>
     
    <div align="center">
        <table border="10" cellpadding="25">
            <caption><caption><h1 class="color-h1">Savings Plans</h1>
             <h5 class="color-h5">Realize your life goals without any risk. 
             Enjoy guaranteed returns1 from your policy at regular intervals 
             to meet your various financial goals.</h5>
            <h2 class="color-h2">List of Savings Plans</h2></caption>
            <tr>
            	<th>Serial No.</th>
                <th>Plan Name</th>
                <th>Plan No.</th>
                <th>UIN No.</th>
            </tr>
            <c:forEach var="life" items="${insurance.rows}">
                <tr>
                	<td><c:out value="${life.id}" /></td>
                    <td><a href="${life.details}"><c:out value="${life.Pname}" /></a></td>
                    <td><c:out value="${life.PlanNo}" /></td>
                    <td><c:out value="${life.UINno}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>