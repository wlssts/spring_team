<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.apache.velocity.runtime.directive.Include"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />


<!-- css 경로 지정 
======================================================= -->

<!-- Favicons -->
<link rel="icon" type="/image/png" href="${root}/css/ksa/images/favicon.png">
<link rel="apple-touch-icon" href="${root}/css/ksa/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"	href="${root}/css/ksa/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="${root}/css/ksa/images/apple-touch-icon-114x114.png">

<!-- CSS Begins
================================================== -->
<!--Animate Effect-->
<link href="${root}/css/ksa/css/animate.css" rel="stylesheet">
<link href="${root}/css/ksa/css/hover.css" rel="stylesheet">

<!--Owl Carousel -->
<link href="${root}/css/ksa/css/owl.carousel.css" rel="stylesheet">

<!-- Slick Carousel -->
<link rel="stylesheet" type="text/css" href="${root}/css/ksa/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${root}/css/ksa/css/slick-theme.css" />

<!-- For Image Preview -->
<link rel="stylesheet" href="${root}/css/ksa/css/magnific-popup.css">

<!--BootStrap -->
<link href="${root}/css/ksa/css/bootstrap.min.css" rel="stylesheet">
<link href="${root}/css/ksa/css/normalize.css" rel="stylesheet">

<!-- Main Style -->
<link href="${root}/css/ksa/css/style.css" rel="stylesheet">
<link href="${root}/css/ksa/css/responsive.css" rel="stylesheet">

<!--DEFAULT COLOR/ CURRENTLY USING , Replace Your Color-->
<link rel="stylesheet" href="${root}/css/ksa/css/colors/default-color.css">

<!-- jquery -->
<script src="${root}/css/ksa/js/jquery-1.12.4.min.js" type="text/javascript"></script>

<!-- css 경로 지정 
======================================================= -->



<!-- 페이지 이동 ======= -->
<script type="text/javascript">
function aread(){
	var url = "./artread";
	location.href = url;
}
</script>
<!-- 페이지 이동 ======= -->



    <!-- 왕은실의 캘리그라피 ====================================-->
    <header id="page-top" class="blog-banner">
        <div class="container" id="blog">
            <div class="row blog-header text-center wow fadeInUp" data-wow-delay="0.5s">
                <div class="col-sm-12">
                    <h4><a href="#"> 왕은실 </a> 아트상품</h4>
                    <h3>ARTSHOP</h3>
                </div>
            </div>
        </div>
    </header>
    <!-- 왕은실의 캘리그라피 ====================================-->




    <!-- Start : Blog Page Content 
==================================================-->
    <div class="blog_container blog_page_three">
        <div class="container">
            <div class="row">
            
           		 
         <!-- 카테고리 ====================================-->
         <div class='ribbon' style="margin-top:4vh; margin-left:30%; font-size: 1.2em; ">
			<a href='#'><span><b>전각(돌도장)</b></span></a>
			<a href='#'><span><B>엽서 및 카드</B></span></a>
			<a href='#'><span><b>책(전시도록)</b></span></a>
		</div>
   		<!-- 카테고리 ====================================-->
            
            
             <!-- 페이지 영역 ==============================-->
                <div class="col-sm-12 col-xs-12 blog-area">
                    <div class="row">
                    
                <!-- 상품 반복 9개 ====================================-->
                    <c:forEach var="i" begin="0" end="8">
                    	<div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="blog-warp-1 wow fadeInLeft" data-wow-delay="0.9s">
                                <div class="blog_imgg">
                                    <img src="${root }/css/ksa/images/0.jpg" alt="" />
                                    <div class="blog_datee">
                                        <p><i class="fa fa-calendar"></i> 왕은실 ARTSHOP</p>
                                    </div>
                                </div>
                                <div class="blog_content_warp">
                                    <h5><a href="blog.html">꽃을 그리는 캘리그라피 엽서</a></h5>
                                    <p>10월 전시회 기념 디자인 캘리그라피 엽서 판매 </p>
                                    <aside class="widget widget-tags">
				                        <a title="Install" href="javascript:aread()">상품 보기</a> 
				                    </aside>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
               	<!-- 상품 반복 9개 ====================================-->
                    
                    
                <!-- 페이지 번호 ====================================-->
                        <div class="col-lg-12" style="text-align: center">
                            <nav class="pagination">
                                <ul class="pager">
                                    <li><a href="#">&lt;</a></li>
                                    <li><a href="#">01</a></li>
                                    <li class="pagi-big"><a href="#"> 02 </a></li>
                                    <li><a href="#">03</a></li>
                                    <li><a href="#">&gt;</a></li>
                                </ul>
                            </nav>
                        </div>
                   <!-- 페이지 번호 ====================================-->     
 
 
                    </div><!--  row -->
                </div><!-- 페이지 영역 -->
            </div><!--  row -->
        </div><!-- Container /- -->
    </div><!--  blog_container blog_page_three -->
    
    
    
    <!--  End : Blog Page Content
==================================================-->


