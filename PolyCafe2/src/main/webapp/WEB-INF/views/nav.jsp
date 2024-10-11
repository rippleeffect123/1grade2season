<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${sessionScope.member == null}">
	<div class="row mt-2">
	<div class="col-7"></div>
	<div class="row">
		<div class="col">
			<a href="${pageContext.request.contextPath}/login"
				class="btn btn-sm btn-primary d-grid">로그인</a>
		</div>

		<div class="col">
			<div>
				<a href="${pageContext.request.contextPath}/signup1"
					class="btn btn-sm btn-secondary d-grid">회원가입1</a>
			</div>
		</div>
		<div class="col">
			<div>
				<a href="${pageContext.request.contextPath}/signup2"
					class="btn btn-sm btn-secondary d-grid">회원가입2</a>
			</div>
		</div>
		<div class="col">
			<div>
				<a href="${pageContext.request.contextPath}/signup3"
					class="btn btn-sm btn-secondary d-grid">회원가입3 (JQeury)</a>
			</div>
		</div>
		</div>
	</div>
</c:if>

<c:if test="${sessionScope.member != null}">
	<div class="row mt-2">
		<div class="col-9"></div>
		<div class="col">
			<div>${sessionScope.member.name}님반갑습니다~</div>
		</div>
		
		<div class="col">
			<div>
				<a href="${pageContext.request.contextPath}/cart"
					class="btn btn-sm btn-primary">장바구니</a>
			</div>
		</div>
		
		<div class="col">
			<div>
				<a href="${pageContext.request.contextPath}/logout"
					class="btn btn-sm btn-primary">로그아웃</a>
			</div>
		</div>
	</div>
</c:if>