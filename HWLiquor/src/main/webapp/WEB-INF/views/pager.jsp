<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/pager.css">
<script type="text/javascript" src="/resources/script/page.js"></script> 
</head>
<body>
<div class="page">
            <span><button class="p_rev"><a href="?page=1${pager.query}"><img src="${pageContext.request.contextPath}/resources/images/doublerev-gray.png" alt="처음으로"></a></button></span>
            <span><button class="p_rev"><a href="?page=${pager.prev}${pager.query}"><img src="${pageContext.request.contextPath}/resources/images/rev-gray.png" alt="뒤로가기"></a></button></span>
            
            <c:forEach var="page" items="${pager.list}">
            <span><a href="?page=${page}${pager.query}" class="page-link ${pager.page == page ? 'active' : ''}"><button class="p_btn">${page}</button></a></span>
            </c:forEach>
           
            <span><button class="p_next"><a href="?page=${pager.next}${pager.query}"><img src="${pageContext.request.contextPath}/resources/images/next-gray.png" alt="다음"></a></button></span>
            <span><button class="p_next"><a href="?page=${pager.last}${pager.query}"><img src="${pageContext.request.contextPath}/resources/images/nextpage-gray.png" alt="마지막"></a></button></span>
</div>
</body>
</html>