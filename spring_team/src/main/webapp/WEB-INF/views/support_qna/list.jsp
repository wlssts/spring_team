<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<script type="text/javascript">
	function check(qnano) {
		var url = "./checkForm";
		url += "?qnano=" + qnano;
		url += "&col=${col}";
		url += "&word=${word}";
		url += "&nowPage=${nowPage}";

		location.href = url;
	}
</script>
<DIV class="container" align="center">
	<h2>Q & A</h2>
	<TABLE class="table table-hover">
		<TR>
			<TH>번호</TH>
			<TH>제목</TH>
			<TH>내용</TH>
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
						<td>${dto.qnano }</td>
						<td><c:forEach begin="1" end="${dto.indent }" step="1"
								var="int">
								&nbsp;&nbsp;&nbsp;
							</c:forEach> <c:if test="${dto.indent>0 }">
								<img src="${root }/images/qna_re.jpg">
							</c:if> <a href="javascript:check('${dto.qnano }')"> <img
								src="${root }/images/qna_lock.jpg"
								style="width: 18px; height: 18px;">${dto.title }</a> <c:if
								test="${Utility.compareDay(dto.wdate().substring(0,10))}">
								<img src="${root }/images/qna_new.gif">
							</c:if></td>
						<td>${dto.content }</td>
						<td>${dto.wdate }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</TABLE>
	<br> <br>
	<div class="slider_btn"
		style="margin-bottom: 20px; text-align: center;">
		<form name="frm" method="post" action="list">
			<select name="col">
				<option value="name"
					<c:out value="${col eq 'name' ? 'selected' : '' }" />>작성자</option>
				<option value="title"
					<c:out value="${col eq 'title' ? 'selected' : '' }" />>제목</option>
				<option value="content"
					<c:out value="${col eq 'content' ? 'selected' : '' }" />>내용</option>
				<option value="total"
					<c:out value="${col eq 'total' ? 'selected' : '' }" />>전체</option>
			</select> <input type="text" name="word" value="${word}">
			<button class="btn btn-success">검색</button>
			<button class="btn btn-success" type="button"
				onclick="location.href='./createForm.jsp'">등록</button>
		</form>
	</div>
</DIV>
<DIV class='bottom'>${paging }</div>
