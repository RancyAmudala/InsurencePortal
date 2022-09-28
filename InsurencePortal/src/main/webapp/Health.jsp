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
</head>
<body style="background-color:#CCEEFF;">
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/health"
        user="root" password="root123"
    />
     
    <sql:query var="health"   dataSource="${myDS}">
        SELECT * FROM schems;
    </sql:query>
     
    <div align="center">
        <table border="10" cellpadding="25">
            <caption><h2>List of Health Schemes</h2></caption>
            <tr>
                <th>Plan Name</th>
                <th>Plan No.</th>
                <th>UIN No.</th>
            </tr>
            <c:forEach var="schems" items="${health.rows}">
                <tr>
                    <td><c:out value="${schems.Pname}" /></td>
                    <td><c:out value="${schems.PlanNo}" /></td>
                    <td><c:out value="${schems.UINno}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>