<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<link href="${root }/css/nh/style.css" rel="stylesheet">

<header id="page-top" class="blog-banner"> <!-- Start: Header Content -->
	<div class="container" id="blog">
		<div class="row blog-header text-center wow fadeInUp" data-wow-delay="0.5s">
			<div class="col-sm-12">
				<!-- Headline Goes Here -->
				<h4 style="font-family: '휴먼편지체';">Project / Photofolio</h4>
				<h3 style="font-family: '휴먼편지체';">포토폴리오 작품</h3>
			</div>
		</div>	<!-- End: .row -->
	</div>	<!-- End: Header Content --> 
</header>

<section class="work-section"> 
	
	<div class="container">

	<br> <br>
		<div class="row">
			<div class="col-md-12">
				<!-- Start: Work filter -->
				<ul class="projects-titles">
					<li data-filter="*"><p style="font-family: '휴먼편지체'; font-weight:bold;">all</p></li>
					<li data-filter=".web"><p style="font-family: '휴먼편지체'; font-weight:bold;">광고</p></li>
					<li data-filter=".design"><p style="font-family: '휴먼편지체'; font-weight:bold;">패키지</p></li>
					<li data-filter=".graphics"><p style="font-family: '휴먼편지체'; font-weight:bold;">로고</p></li>
					<li data-filter=".graphics"><p style="font-family: '휴먼편지체'; font-weight:bold;">포스터</p></li>	
				</ul>
				<!-- End: Work filter -->
	
				<!-- Start: Work Item -->
				<div class="row projects-list">
	
					<c:forEach begin="0" end="8">
	
	
						<div class="col-sm-4 col-xs-12 ${'graphics'}">
	
							<div class="single-project-item">
								<a href="./read?photofoliono=1&pageName=project"><img src="${root}/images/photofolio/main.jpg"></a>
							</div>
						</div>
	
					</c:forEach>
	
				</div>
	
			</div>
	
	
			<!--  1,2,3 페이지 버튼-->
			<div class="col-lg-12" style="text-align: center;">
				<nav class="pagination">
					<ul class="pager">
						<li><a href="#"> &lt;</a></li>
						<li><a href="#">01</a></li>
						<li><a href="#">02</a></li>
						<li class="pagi-big"><a href="#"> 03 </a></li>
						<li><a href="#">03</a></li>
						<li><a href="#">04</a></li>
						<li><a href="#">&gt;</a></li>
					</ul>
				</nav>
			</div>	<!-- End: 페이지 버튼 -->
		</div>
	</div>
</section>

