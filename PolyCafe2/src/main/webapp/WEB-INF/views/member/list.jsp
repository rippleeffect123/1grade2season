<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<div>
			<h3>회원 목록</h3>
		</div>
		
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>성명</th>
						<th>전화번호</th>
						<th>역할</th>
						<th>포인트</th>
						<th>관리</th>
					</tr>					
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="7">검색 된 회원이 없습니다</td>
						</tr>
					</c:if>
					
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.id}</td>
							<td>${item.passwd}</td>
							<td>${item.name}</td>
							<td>${item.tel}</td>
							<td>${item.role}</td>
							<td>${item.points}</td>
							<td><a href="update/${item.id}">변경</a> <a href="delete/${item.id}">삭제</a></td>
						</tr>
					</c:forEach>
					
				</tbody>
				
				<tfoot>
				</tfoot>
			</table>
		</div>		
		<div>
			<div><a href="add">등록</a></div>
			<div><a href="..">이전</a></div>
		</div>
	</div>
</body>
</html>