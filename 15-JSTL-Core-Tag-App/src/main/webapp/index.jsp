<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %><!-- tag of JSP page directive to show output dinamically -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>JSTL Core Tags</h1>
    <hr><!-- horizontal rule -->
    <%-- 
    <c:out value="Preethaa"></c:out>
    <c:import url="navbar.jsp" var="data"></c:import>
    <!-- to print the value of data variable dianamicaly means whatever we'll write in navbar.jsp page it'll show 
    those-->
    <h2>
        <c:out value="${data}"></c:out>
    </h2>
    <hr>
    <c:set var="result" value="400*3" scope="session"></c:set>
    <!-- to print the value of result variable dianamicaly-->
    <h2>
        <c:out value="${result}"></c:out><!--output: 400*3 -->
    </h2>
    <hr>
    <c:set var="result" value="${400*3}" scope="session"></c:set>
    <!-- to print the value of result variable dianamicaly-->
    <h2>
        Before removing:<c:out value="${result}"></c:out><!--output: 1200 -->
    </h2>
    <hr>
    <c:remove var="result"/>
    After removing:<c:out value="${result}"></c:out>
    --%>
    <%-- 
    <c:catch var="exception">
        <%
        int a=2/0;
        String name=null;
        name.toUpperCase();
        %>
    </c:catch>
    <c:if test="${exception!=null}">
        <p>${exception}</p>
        <p>${exception.message}</p>
    </c:if>
    --%>
    <%--
    <c:set value="${20}" var="age"></c:set>
    <c:if test="${age>18}">
        <h1>Adault</h1>
    </c:if>
    --%>
    <%--
    <c:set value="${20}" var="age"></c:set>
    <c:choose>
        <c:when test="${age>10}">
            <h1>Adult</h1>
        </c:when>
        <c:when test="${age<10}">
            <h1>Child</h1>
        </c:when>
        <c:otherwise>
            <h1>Invalid</h1>
        </c:otherwise>
    </c:choose>
    --%>
    <%--
    <c:forEach var="num" begin="1" end="10">
    <c:out value="${num}"></c:out>
    </c:forEach>
    --%>
    <%--
    <c:forTokens items="Preethaa-Dutta" delims="-" var="newString">
    <c:out value="${newString }"></c:out><p>
    </c:forTokens>
    --%>
    <c:url value=""></c:url>
</body>
</html>