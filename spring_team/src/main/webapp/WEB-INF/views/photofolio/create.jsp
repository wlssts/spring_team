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
	</div>	<!-- End: Header Content --> 
</header>

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
								<h4>
									제목 :<input type="text" name="title" />
								</h4>
								<h4>
									썸네일 파일을 선택하세요. <input type='file' name='fileview' />
								</h4>
								<h4>
									고객사 : <input type="text" name="title" />
								</h4>
								<h4>
									타입 : <select name="types">
												<option value="" >--타입을 선택해주세요--
												</option>
												<option value="캘리그라피" >캘리그라피
												</option>
												<option value="캘리일러스트레이션" >캘리일러스트레이션
												</option>
												<option value="전각" >전각
												</option>
												<option value="디자인" >디자인
												</option>
											</select>
								</h4>


								<tr>
									<th valign="top"></th>
									<td>
										<textarea name="content" style="width: 940px; height: 960px;"></textarea>
									</td>
								</tr>

							</div>
						</div>
					</div>
					<div class="col-xs-12">

						<div class="slider_btn text-center"	style="margin-bottom: 20px; margin-left: 30px;">
							<a href="#" class="btn-primary">제출</a> 
							<a href="#" class="btn-primary">취소</a>
						</div>

					</div>	<!--/ Blog Item 1 -->

				</div>

			</div>	<!--/ Blog Area -->

		</div>
	</div> <!-- Container /- -->
</div>
	