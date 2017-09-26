<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<!-- Main Style -->
<link href="${root}/css/academy/style.css" rel="stylesheet">


<script type="text/javascript">
function read(num){
	location.href= "./read?pageName=academy";
}
</script>

<!-- header -->
<header id="page-top" class="blog-banner">
    <!-- Start: Header Content -->
    <div class="container" id="blog">
        <div class="row blog-header text-center wow fadeInUp" data-wow-delay="0.5s">
            <div class="col-sm-12">
                <!-- Headline Goes Here -->
                <h4 style="font-family: '휴먼편지체';"> Academy / Gallery </h4>
                <h3 style="font-family: '휴먼편지체';"> 수강생 작품 </h3> 
            </div>
        </div>
        <!-- End: .row -->
    </div>
    <!-- End: Header Content -->
</header>
<!--/. header -->
<!-- Start:Our Work Section ==================================================-->
    <section class="work-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Start: Work filter -->
				<ul class="projects-titles">
					<li data-filter="*" >전체보기</li>
					<li data-filter=".web">일반과정</li>
					<li data-filter=".design">전문과정</li>
					<li data-filter=".graphics">심화과정</li>
					<li data-filter=".development">작가과정</li>
					<li data-filter=".photoshop">먹그림</li>
					<li data-filter=".photoshop">수체화</li>
					<li data-filter=".photoshop">특강</li>
					<li data-filter=".photoshop">더보기</li>
				</ul>
				<!-- End: Work filter -->

				<!-- Start: Work Item -->
				<div class="row projects-list">
					<c:forEach begin="0" end="8" varStatus="status">
						<div class="col-sm-4 col-xs-12" >
							<div class="single-project-item">
								<a href="javascript:read('${status.current}')"><img src="${root}/images/academy/대표이미지.jpg"></a> 
							</div>
						</div>
					</c:forEach>
				</div>
				
				<!-- End: Work Item --> 
			</div>
		</div>
		<div class="col-lg-12" style="margin-top: 50px;">
			<nav class="pagination">
				<ul class="pager" style="float: right">
					<li><a href="#"> &lt;</a></li>
					<li><a href="#">01</a></li>
					<li class="pagi-big"><a href="#"> 02 </a></li>
					<li><a href="#">03</a></li>
					<li><a href="#">04</a></li>
					<li><a href="#">05</a></li>
					<li><a href="#">&gt;</a></li>
				</ul>
			</nav>
		</div>
	</div>
    </section>
<!-- End:Our Work Section 
==================================================-->
