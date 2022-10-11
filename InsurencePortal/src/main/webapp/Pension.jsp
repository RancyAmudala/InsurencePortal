<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Schemes Record</title>

<!-- css -->
<link rel="stylesheet" href="css/pensionbg.css">
<link rel="stylesheet" href="css/table.css">
<link rel="stylesheet" href="css/products.css">


</head>
<body style="background-color:#fff">
<div class="pensionbg">

    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/insurance"
        user="root" password="Root@123"
    />
     
    <sql:query var="insurance"   dataSource="${myDS}">
        SELECT * FROM pension;
    </sql:query>
     
    <div align="center">
        <table border="10" cellpadding="25">
            <caption><h1 class="color-h1">Pension Plans</h1>
            <h5 class="color-h5">Timely Planning is the way to #RetireOnYoursTerms!
            </br>
			Start saving today to enjoy a worry-free retirement life. 
			</br>
			Buy a retirement plan now.</h5>
            <h2 class="color-h2">List of Pension Schemes</h2></caption>
            <tr>
            	<th>Serial No.</th>
                <th>Plan Name</th>
                <th>Plan No.</th>
                <th>UIN No.</th>
                
            </tr>
            <c:forEach var="pension" items="${insurance.rows}">
                <tr>
                	<td><c:out value="${pension.id}" /></td>
                    <td><a href="${pension.details}"><c:out value="${pension.Pname}" /></a></td>
                    <td><c:out value="${pension.PlanNo}" /></td>
                    <td><c:out value="${pension.UINno}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>