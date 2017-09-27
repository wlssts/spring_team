<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="root" value="${pageContext.request.contextPath }" />

<div class="container" align="center">

	<h2>비밀번호 입력</h2>
	<form name="frm" method="POST" action="./passwdCheck" onsubmit="">
		<input type="password" name="passwd">
		<input type="hidden" name="qnano" value="qnano">
		<input type="hidden" name="col" value="col">
		<input type="hidden" name="word" value="word">
		<input type="hidden" name="nowPage" value="nowPage">
		<button class="btn btn-success" type="submit">확인</button>
		<button class="btn btn-success" onclick="history.back()">취소</button>
	</form>


</div>