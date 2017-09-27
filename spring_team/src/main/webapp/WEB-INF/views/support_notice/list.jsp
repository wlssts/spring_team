<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<script type="text/javascript">
	function read(noticeno) {
		var url = "./read";
		url += "?noticeno=" + noticeno;
		url += "&col=${col}";
		url += "&word=${word}";
		url += "&nowPage=${nowPage}";

		location.href = url;
	}
</script>
<DIV class="container" align="center">


	<h2>게시판 목록</h2>
	<TABLE class="table table-hover">
		<TR>
			<TH>번호</TH>
			<TH>제목</TH>
			<TH>성명</TH>
			<TH>조회수</TH>
			<TH>등록일</TH>
		</TR>
		<c:choose>
			<c:when test="${empty list }">
				<tbody>
					<tr>
						<td colspan="8">등록된 글이 없습니다.</td>
					</tr>
				</tbody>
			</c:when>
			<c:otherwise>
				<c:forEach var="dto" items="${list }">

					<tr>
						<td>${dto.noticeno}</td>
						<td><a href="javascript:read('${dto.noticeno}')">${dto.title}</a></td>
						<td>운영자</td>
						<td>${dto.viewcnt}</td>
						<td>${dto.wdate}</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</TABLE>

	<div class="slider_btn"
		style="margin-bottom: 20px; text-align: center;">
		<form name="frm" method="post" action="list">
			<select name="col">
				<option value="title"
					<c:out value="${col eq 'title' ? 'selected' : '' }" />>제목</option>
				<option value="content"
					<c:out value="${col eq 'content' ? 'selected' : '' }" />>내용</option>
				<option value="total"
					<c:out value="${col eq 'total' ? 'selected' : '' }" />>전체</option>
			</select> <input type="text" placeholder="검색어 입력" name="word" value="${word }"
				class="d1">
			<button class="btn btn-success">검색</button>
		</form>
	</div>

</DIV>
<DIV class='bottom'>${paging }</DIV>
