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
<link rel="stylesheet" href="css/products.css">

<!-- Main css -->
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
        SELECT * FROM travel;
    </sql:query>
     
    <div align="center">
        <table border="10" cellpadding="25">
            <caption><h1 class="color-h1">Travel Insurance Plans</h1>
            <h5 class="color-h5">Secure your travel plan with a brand trusted by millions</h5>
            <h2 class="color-h2">List of Travel Insurance Schemes</h2></caption>
            <tr>
            	<th>Serial No.</th>
                <th>Plan Name</th>
                <th>Plan No.</th>
                <th>UIN No.</th>
            </tr>
            <c:forEach var="travel" items="${insurance.rows}">
                <tr>
                	<td><c:out value="${travel.id }"/></td>
                    <td><a href="${travel.details}"><c:out value="${travel.Pname}" /></a></td>
                    <td><c:out value="${travel.PlanNo}" /></td>
                    <td><c:out value="${travel.UINno}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>