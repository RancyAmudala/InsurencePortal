<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Schems Records</title>

<!-- Main css -->
<link rel="stylesheet" href="css/vehiclebg.css">
<link rel="stylesheet" href="css/products.css">
<link rel="stylesheet" href="css/table.css">

</head>
<body style="background-color:#fff;">
<div class="vehiclebg">
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/insurance"
        user="root" password="Root@123"
    />
     
    <sql:query var="insurance"   dataSource="${myDS}">
        SELECT * FROM vehicle;
    </sql:query>
     
    <div align="center">
        <table border="10" cellpadding="25">
            <caption><h1 class="color-h1">Vehicle Insurance Plans</h1>
             <h5 class="color-h5"> A comprehensive vehicle insurance policy helps 
             you save money when your vehicle is damaged in an accident or due to 
             a natural calamity</h5>
            <h2 class="color-h2">List of Vehicle Insurance Schemes</h2></caption>
            <tr>
            	<th>Serial No.</th>
                <th>Plan Name</th>
                <th>Plan No.</th>
                <th>UIN No.</th>
            </tr>
            <c:forEach var="vehicle" items="${insurance.rows}">
                <tr>
                	<td><c:out value="${vehicle.id }"/></td>
                    <td><a href="${vehicle.details}"><c:out value="${vehicle.Pname}" /></a></td>
                    <td><c:out value="${vehicle.PlanNo}" /></td>
                    <td><c:out value="${vehicle.UINno}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>