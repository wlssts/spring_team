<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<!-- CSS Begins
================================================== -->
<!--Animate Effect-->
<link href="${root }/css/nh/animate.css" rel="stylesheet">
<link href="${root }/css/nh/hover.css" rel="stylesheet">

<!--Owl Carousel -->
<link href="${root }/css/nh/owl.carousel.css" rel="stylesheet">

<!-- Slick Carousel -->
<link rel="stylesheet" type="text/css" href="${root }/css/nh/slick.css" />
<link rel="stylesheet" type="text/css" href="${root }/css/nh/slick-theme.css" />

<!-- For Image Preview -->
<link rel="stylesheet" href="${root }/css/nh/magnific-popup.css">

<!--BootStrap -->
<link href="${root }/css/nh/bootstrap.min.css" rel="stylesheet">
<link href="${root }/css/nh/normalize.css" rel="stylesheet">

<!-- Main Style -->
<link href="${root }/css/nh/style.css" rel="stylesheet">
<link href="${root }/css/nh/responsive.css" rel="stylesheet">


<header id="page-top" class="blog-banner"> <!-- Start: Header Content -->
	<div class="container" id="blog">
		<div class="row blog-header text-center wow fadeInUp"
			data-wow-delay="0.5s">
			<div class="col-sm-12">
				<!-- Headline Goes Here -->
				<h4 style="font-family: '휴먼편지체';">Project / Photofolio</h4>
				<h3 style="font-family: '휴먼편지체';">포토폴리오 작품</h3>
			</div>
		</div>
		<!-- End: .row -->
	</div>

	<!-- End: Header Content --> 
</header>

<!-- Start : Blog Page Content 
==================================================-->
<div class="blog_container blog_page_one">
	<div class="container">
		<div class="row">
			<!-- Blog Area -->
			<div class="col-sm-8 col-xs-12 blog-area">
				<div class="row">
					<div class="col-xs-12">
						<div class="blog-warp-1 wow fadeInLeft" data-wow-delay="0.9s">
							<div class="blog_imgg">
								<img src="${root }/images/blog_3.jpg" alt="" />
								<div class="blog_datee">
									<p>
										<i class="fa fa-calendar"></i> October 24, 2014
									</p>
								</div>
							</div>
							<div class="blog_content_warp">
								<h5 style="font-size: 200%;">포토폴리오 타이틀</h5>
								<h5>고객사 : ${'초코파이' }</h5>
								<p>Lorem ipsum dolor sit amet, in urna molestie
									tristique.Cong erment sed at facilisis lacinia aliquam fusce
									wisi, porta ligula nibh vel congue diam. Sed ligula erat
									molestie cras morbi in facilisis eu elit Lorem ipsum dolor sit
									amet, in urna molestie tristique.Cong erment sed at facilisis
									lacinia aliquam fusce wisi, porta ligula nibh vel congue diam.
									Sed ligula erat molestie cras morbi in in urna molestie
									tristique. Cong erment sed at facilisis lacinia aliquam fusce
									wisi</p>

								<tr>
									<th valign="top"></th>
									<td>
										<textarea name="content" style="width: 940px;" readonly="readonly"></textarea>
									</td>
								</tr>

							</div>
						</div>
					</div>
					<div class="col-xs-12"></div>
					<!--/ Blog Item 1 -->

				</div>

			</div>
			<!--/ Blog Area -->

		</div>
	</div>
	<!-- Container /- -->
</div> <!--  End : Blog Page Content ==================================================-->

