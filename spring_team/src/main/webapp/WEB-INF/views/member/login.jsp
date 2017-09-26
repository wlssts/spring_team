<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<style>
legend{
font-family: "휴먼편지체";
font-weight: bold;
font-size: 300%;
}

th{
font-family: "휴먼편지체";
font-size: :"120%";
font-weight: bold;
}

</style>

<script src="${root}/js/duplicate.js"></script> 
<div class="container" align="center">
<FORM name='loginfrm' id = "loginfrm" method='POST' action='${root}/member/login'>
	<fieldset style="border:3; solid #808080; width:400px; margin-bottom: 10px; margin-top: 50px; ">
 		<legend>로그인</legend>
 	<TABLE  class="table text-center">
	    <TR>
	      <TH>아이디</TH>
	      <TD><input type="text" name="id" id = "log_id" value='${c_id_val}' class = "form-control"></td>
	      <td>
	      <c:choose>
	      	<c:when test="${c_id == 'Y' }">
	         <input type='checkbox' name='c_id' value='Y' checked='checked'> ID 저장 
	      	</c:when>
	      	<c:otherwise>
	         <input type='checkbox' name='c_id' value='Y' > ID 저장 
	      	</c:otherwise>
	      </c:choose>
	      </TD>
	    </TR>
	    <TR>
	      <TH>비밀번호</TH>
	      <TD colspan="2"><input type="password" name="passwd" id = "log_passwd" class = "form-control"></TD>
	    </TR>
  </TABLE>
  </fieldset>
</FORM>
  <div class="slider_btn" style="margin-bottom: 20px;text-align: center;">
	  <a class="btn-primary" id="loginCheck">로그인</a>
	  <a class="btn-primary" onclick="history.back()">취소</a>
  </div>
</div>
