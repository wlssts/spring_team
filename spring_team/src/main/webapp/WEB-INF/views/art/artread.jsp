<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


<!-- 부트스트랩 
======================================================= -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 부트스트랩 
======================================================= -->



<!-- 페이지 이동 ======= -->
<script type="text/javascript">
function acart(){
	var url = "./cart";
	location.href = url;
}
function aorder(){
	var url = "./order";
	location.href = url;
}
function awishlist(){
	var url = "${root}/mypage/wishlist";
	location.href = url;
}
function amake(){
	var url = "./make";
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


     <!--Start: Work Section 
==================================================-->
    <section class="single-work-page">
        <div class="container">
            <div class="row">
            
				<!-- 큰 이미지 ====================================-->
                <div class="col-sm-8 col-xs-12">
                    <div class="portfolioitem col-sm-12">
                        <div class="carousel slide" data-ride="carousel" id="blog-post-slider">
<!--                             <a class="post-thumbnail" data-animsition-out="fade-out-up-sm" data-animsition-out-duration="500" href="single-blog.html"> -->
                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active"><img alt="blog" src="${root }/css/ksa/images/0.jpg"  style = "margin:0 auto;">
                                    </div>
                                    <div class="item"><img alt="blog" src="${root }/css/ksa/images/0.jpg"  style = "margin:0 auto;">
                                    </div>
                                </div>
                                <!-- Controls -->
<!--                             </a> -->
							<!-- 양쪽 사진이동 버튼 -->
                            <a class="left carousel-control" data-slide="prev" href="#blog-post-slider" role="button">
                                <span aria-hidden="true" class="fa fa-angle-left"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" data-slide="next" href="#blog-post-slider" role="button">
                                <span aria-hidden="true" class="fa fa-angle-right"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        
						<!--  작은이미지 -->
                         <div class="instagram-item">
                            <ul class="instagram-photo-list" style = "width:50%; height:50%; margin:0 auto; margin-top:4vh;">
                 		   <c:forEach var="i" begin="0" end="2">
                                <li>
                                    <a href="#"><img class="img-responsive" alt="" src="${root }/css/ksa/images/0.jpg">
                                    </a>
                                </li>
                           </c:forEach>
                            </ul>
                        </div>
                    
                    </div>
                    
				<!-- 글 내용 ====================================-->
                    <div class="portfoliodesc">
                        <div class="col-sm-12">
                            <div class="project-details" style = "text-align:center; margin-top : 10vh;">
                                <h4><B>PROJECT OVERVIEW</b></h4>
                                <hr>
                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Invidunt ut labore et dolore magna stet clita kasd gubergrenLorem ipsum dolor sit amet, consetetur sadipscing elitr</p>
                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren accusam et justo duo</p>
                            	
                            	<img src = "${root }/css/ksa/images/00.jpg" style = "margin-top:5vh;">
                            	
                            	<c:forEach var = "i" begin = "0" end = "2">
                            	<img src = "${root }/css/ksa/images/2.jpg" style = "margin-top:5vh;">
                            	</c:forEach>
                            	
                            </div>
                        </div>
                    </div>
                </div>
				<!-- 글 내용 ====================================-->
	
                           
			<!-- 오른쪽 주문 폼 ====================================-->
			<form>
                <div class="col-sm-4 col-xs-12">
                    <div class="portfolio-single-detail">
                        <h4>꽃을 그리는 캘리그라피 엽서</h4>
                        <hr>
                        <ul class="list-unstyled project-detail-list margin-bottom-50">
                            <li>
                           	 <strong>옵션 : </strong> 
                             <select>
                             	<option>상품 옵션 선택1</option>
                             	<option>상품 옵션 선택2</option>
                             	<option>상품 옵션 선택3</option>
                             </select>
                            </li>
                            <li>
                            	<strong>수량 : </strong> 
                            	<input type = "number" value = "1" min = "1" style = "width:38%;">
                            </li>
                            <li><strong>가격 : </strong> 15000 원</li>
                        </ul>
                        <hr>
                      	<input type = "Button" class = "btn btn-default" onclick="acart()" value = "장바구니" style = "margin-right:5px;">
                      	<input type = "Button" class = "btn btn-default" onclick="aorder()" value = "주문하기" style = "margin-right:5px;">
                      	<input type = "Button" class = "btn btn-default" onclick="awishlist()" value = "찜리스트">
                    </div>
                </div>
				</form><!--/ portfolio item -->
            </div><!-- row /- -->
            <br><Br>
            <hr>
            
            
          <!-- 기타 사항 ====================================-->
			<div class="list-comments">
                    <div class="comments-section-title">
                        <h4>기타 사항</h4>
                    </div>
                        <!-- 내비바 -->
                        <ul class="comments">
                            <li>
                                <div class="comment">
											<nav class="navbar navbar-default">
											  <div class="container-fluid">
											    <div class="navbar-header">
											      <a class="navbar-brand" href="#">♥</a>
											    </div>
											    <ul class="nav navbar-nav">
											      <li class="active"><a href="#">ART SHOP</a></li>
											      <li><a href="#">제작 공정</a></li>
											      <li><a href="#">상품 후기</a></li>
											      <li><a href="#">문의 사항</a></li>
											      <li><a href="#">배송 공지</a></li>
											    </ul>
											  </div>
											</nav>
											                                
									<!-- Q & A ====================================-->
										<DIV class="container" align="center" style="width:80%;">
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
										                  <td>
										                  	 <c:forEach begin="1" end="${dto.indent }" step="1" var="int">
										                       	 &nbsp;&nbsp;&nbsp;
										                     </c:forEach> 
										                     <c:if test="${dto.indent>0 }">
										                        <img src="${root }/images/qna_re.jpg">
										                     </c:if> 
										                     <a href="javascript:read('${dto.qnano }')"> 
										                     <img src="${root }/images/qna_lock.jpg" style="width: 18px; height: 18px;">${dto.title }</a> 
										                     <c:if test="${Utility.compareDay(dto.wdate().substring(0,10))}">
										                        <img src="${root }/images/qna_new.gif">
										                     </c:if> ${dto.title }
										                  </td>
										                  <td>${dto.content }</td>
										                  <td>${dto.wdate }</td>
										               </tr>
										            </c:forEach>
										         </c:otherwise>
										      </c:choose>
										      
										   </TABLE>
										   <br> <br>
										   <div class="slider_btn" style="margin-bottom: 20px; text-align: center;">
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
										         </select> 
										         <input type="text" name="word" value="${word}">
										         <button class="btn btn-success">검색</button>
										         <button class="btn btn-success" type="button" onclick="location.href='./create'">등록</button>
										         <button class="btn btn-success" type="button" onclick="amake()">제작공정</button>
										      </form>
										   </div>
										<DIV class='bottom'>${Utility.paging3(total, nowPage, recordPerPage, col, word)}</div>
                               		 </div>
                              	<!-- Q & A ====================================-->
                            </li>
                        </ul>
                        <!--/ .comments -->
                    </div>
                  <!-- 기타 사항 ====================================-->
                   
    
        </div><!-- Container /- -->
    </section>
    
    <!-- End: Work Section 
==================================================-->

