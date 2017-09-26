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


<!-- 페이지 이동 ======= -->
<script type="text/javascript">
function aread(){
	var url = "./artread";
	location.href = url;
}
function alist(){
	var url = "./artlist";
	location.href = url;
}
function aorder(){
	var url = "./order";
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
     
     
	<!-- 장바구니 ==================================================--> 
	<div class = "container">
		<form name="cart_form" id="cart_form" method="post" target="actionFrame" action="order">
			 	 <div style = "margin-top:5vh;">
			 		 <b>장바구니</b>
			 	 </div>
		 		 <hr>
		 		 
                    <table style = "margin-top:2%; ">
	                        <colgroup>
	                            <col width="5%">
	                            <col width="35%">
	                            <col width="15%">
	                            <col width="10%">
	                            <col width="10%">
	                            <col width="10%">
	                        </colgroup>
	                        	                        
							<!-- style="border-bottom: 0.7px solid #eae8fc;" -->
	                        <thead>
	                            <tr style = "padding:20%;">
	                                <th><a href="javascript:void(0);" class="btn_select_all">전체</a></th>
	                                <th>주문상품</th>
	                                <th>수량</th>
	                                <th>상품금액</th>
	                                <th>배송비</th>
	                                <th></th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                            <tr>
	                                <td><input type="checkbox" name="cart_option_seq[]" value="1"></td>
	                                <td>
			      						   <table>
												<tbody>
												<tr>
													<td width="80">
														<img src="${root }/css/ksa/images/0.jpg" width="60" onclick = "javascript:aread()">
													</td>
													<td>
														<a href="./artread" title="캘리그라피 엽서" style = "text-decoration: none;">캘리그라피 엽서</a>
													</td>
												</tr>
												</tbody>
											</table>
	                                </td>
	                                <td>
	                                	<input type="number" min="1" value = "1" style = "width:35%;"> 
	                                	<input type = "submit" class = "btn btn-default" value = "수정" style = "color:black;">
	                                </td>
	                                <td><b>17,500원</b></td>
									<td rowspan="1"><div>택배(선불)<Br>2,500원</div></td>
									<td>
									<input type="button" class="btn btn-default" onclick="location.href='${root}/art/order'" value = "구매하기"  style = "color:black;"><br>
									<input  type="button" class="btn btn-default" onclick = "location.href='${root}/art/cart'" value = "삭제하기"  style = "color:black;"></td>
	                            </tr>
	                        </tbody>
	                    </table>
	                    
	                    <hr>
	                    <Br>
	                    
	                    <table style="width:80%; margin: 0 auto;">
	                    	<tr style="text-align: right">
	                    		<td>총 주문 금액<Br><Br><b>17,500원</b></td>
	                    		<td>+</td>
	                    		<td>배송비<Br><Br>2,500원</td>
	                    		<td>=</td>
	                    		<td>최종 결제 금액<Br><Br><b>20,000원</b></td>
	               			</tr>
	                    </table>
	                    <hr>
	                    <Br>
	                    
				<!-- 주문 버튼 ================================= -->
                    <div style="float: right; margin: 0 3% 5% 5%;">
                        <a class="btn btn-default" href = "javascript:alist()"  style = "color:black;">계속 쇼핑</a>
                        <a class="btn btn-default" href = "javascript:aorder()"  style = "color:black;">선택상품 주문</a>
                        <a class="btn btn-default" href = "javascript:aorder()"  style = "color:black;">전체상품 주문</a>
                    </div>
               <!-- 주문 버튼 ================================= -->
               
			</form>
		</div><!-- container -->

