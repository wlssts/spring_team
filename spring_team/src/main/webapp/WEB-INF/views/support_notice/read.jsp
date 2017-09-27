<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<script type="text/javascript">

</script>

		<DIV class="container" align="center">
			<h2>글 조회</h2>

			<TABLE class="table table-hover wtable" style="width: 90%;">
				
				<TR>
					<TH width="100px">제목</TH>
					<TD>${dto.title}</TD>
				</TR>
				<TR>
					<TH>내용</TH>
					<TD style="word-break: break-all">${dto.content}</TD>
				</TR>
				<TR>
					<TH>작성자</TH>
					<TD>운영자</TD>
				</TR>
				<TR>
					<TH>날짜</TH>
					<TD>${dto.wdate}</TD>
				</TR>
				<TR>
					<TH>조회수</TH>
					<TD>${dto.viewcnt}</TD>
				</TR>
			</TABLE>

			<DIV class='bottom'>
				<input type="button" value='등록'
					onclick="location.href='createForm.jsp'"> <input
					type='button' value='목록' onclick="blist()"> <input
					type="button" value='수정' onclick="bupdate()"> <input
					type='button' value='삭제' onclick="bdelete()"> <input
					type='button' value='답변' onclick="breply()">
			</DIV>

		</DIV>


</html>