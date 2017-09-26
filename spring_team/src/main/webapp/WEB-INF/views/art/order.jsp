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
function aorder(){
	var url = "orderCheck";
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

    
	<!-- 주문  ==================================================--> 
	<div class = "container">
		<form name="cart_form" id="cart_form" method="post" target="actionFrame" action="order">
		 	 <div style = "margin-top:5vh;"><b>주문 / 결제</b></div>
		 	 <hr>
		 	 
		 	  <table style = "margin-top:2%; ">
	                        <colgroup>
	                            <col width="35%">
	                            <col width="15%">
	                            <col width="10%">
	                            <col width="10%">
	                            <col width="10%">
	                        </colgroup>
	                        	                        
<!-- 	                         style="border-bottom: 0.7px solid #eae8fc;" -->
	                        <thead>
	                            <tr style = "padding:20%;">
	                                <th>주문상품</th>
	                                <th>수량</th>
	                                <th>상품금액</th>
	                                <th>배송비</th>
	                            </tr>
	                        </thead>
	                        
	                        <tbody>
	                            <tr>
	                                <td>
			      						   <table>
												<tbody>
												<tr>
													<td width="80">
														<img src="${root }/css/ksa/images/0.jpg" width="60" onclick = "javascrpit:aread()">
													</td>
													<td>
														<a href="./artread" title="캘리그라피 엽서" style = "text-decoration: none;">캘리그라피 엽서</a>
													</td>
												</tr>
												</tbody>
											</table>
	                                </td>
	                                <td><input type="number" min="1" value = "1" style = "width:35%;"></td>
	                                <td><b>17,500원</b></td>
									<td rowspan="1"><div>택배(선불)<Br>2,500원</div></td>
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
		 	 
		 	 
			<!-- 		 	 ---------------------- -->
		 	 <Br>
		 	 <div><b>회원 정보</b></div><Br>
		 	 <p><b style="color:red">*</b> 는 필수 입력란입니다.</p>
		 	 <table class="table section01">
			<tbody>
			<tr>
				<td>주문자 <b style="color:red">*</b></td>
				<td>
					<input type = "text" name = "mname" value ="" class="form-control"  style="float:left; width:146px;">　　
				</td>
			</tr>
			<tr>
				<td>이메일 <b style="color:red">*</b></td>
				<td>
				<div class="form-group">
					<input style="float:left;width:146px" type="text" name="order_email_1" value="" class="form-control" id="email-id">
					<p style="float:left;margin-left:5px;height:30px;line-height:30px;vertical-align: middle">@</p>
					<select id="email_selector" style="float:left; margin-left:5px;padding-left:8px;height:30px ; width:120px" onchange="$('#email-domain').val(this.value);">
						<option value="">선택</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
						<option value="nate.com">nate.com</option>
					</select>
				</div>
			</td>
		</tr>
		<tr>
			<td>핸드폰 <b style="color:red">*</b></td>
			<td>
				<div class="form-group">
					<input style="margin-left:5px;float:left;width:83px" type="text" id="order_cellphone_iny1" class="form-control" name="order_cellphone[]" value="">
					<div style="height:30px;margin-left:5px;line-height:30px;vertical-align: middle;float:left;">-</div>
					<input style="margin-left:5px;float:left;width:83px" type="text" id="order_cellphone_iny2" class="form-control" name="order_cellphone[]" value="">
					<div style="height:30px;margin-left:5px;line-height:30px;vertical-align: middle;float:left;">-</div>
					<input style="margin-left:5px;float:left;width:83px" type="text" id="order_cellphone_iny3" class="form-control" name="order_cellphone[]" value="">
				</div>
			</td>
		</tr>
	</tbody>
</table>
<br><Br>

		 <div><b>배송 정보</b></div><Br>
		 
	 	 <table class="table section01"  style="float:left;width: 50%;">
			<tbody>
			<tr>
				<td>받는분 <b style="color:red">*</b></td>
					<td>
					<input type = "text" name = "mname" value ="" style="float:left; width:146px" class="form-control">　　
					<label class="small"><input type="radio" id="name" name="mname" value="">기존 정보와 동일</label>　
					<label class="small"><input type="radio" id="name" name="mname" value="">새로운 배송지</label>
				</td>
			</tr>
		<tr>
			<td>전화</td>
			<td>
				<div class="form-group">
					<input style="margin-left:5px;float:left;width:83px" type="text" id="order_cellphone_iny1" class="form-control" name="order_cellphone[]" value="">
					<div style="height:30px;margin-left:5px;line-height:30px;vertical-align: middle;float:left;">-</div>
					<input style="margin-left:5px;float:left;width:83px" type="text" id="order_cellphone_iny2" class="form-control" name="order_cellphone[]" value="">
					<div style="height:30px;margin-left:5px;line-height:30px;vertical-align: middle;float:left;">-</div>
					<input style="margin-left:5px;float:left;width:83px" type="text" id="order_cellphone_iny3" class="form-control" name="order_cellphone[]" value="">
				</div>
			</td>
		</tr>
		<tr>
			<td>핸드폰 <b style="color:red">*</b></td>
			<td>
				<div class="form-group">
					<input style="margin-left:5px;float:left;width:83px" type="text" id="order_cellphone_iny1" class="form-control" name="order_cellphone[]" value="">
					<div style="height:30px;margin-left:5px;line-height:30px;vertical-align: middle;float:left;">-</div>
					<input style="margin-left:5px;float:left;width:83px" type="text" id="order_cellphone_iny2" class="form-control" name="order_cellphone[]" value="">
					<div style="height:30px;margin-left:5px;line-height:30px;vertical-align: middle;float:left;">-</div>
					<input style="margin-left:5px;float:left;width:83px" type="text" id="order_cellphone_iny3" class="form-control" name="order_cellphone[]" value="">
				</div>
			</td>
		</tr>
			<tr>
			<td>우편번호 <b style="color:red">*</b></td>
			<td>
				<div class="form-group">
					<input style="margin-left:5px;float:left;width:83px" type="text" id="order_cellphone_iny1" class="form-control" name="order_cellphone[]" value="">　
					<input type = "button" class = "btn btn-default" value = "주소검색" style = "color : black;"><Br><Br>
					<input type="text" class="form-control" style="margin-left:5px;float:left;width:400px"><br><Br>
					<input type="text" class="form-control" style="margin-left:5px;float:left;width:400px">
				</div>
			</td>
		</tr>
		<tr class="goods_delivery_info">
				<td>배송 메시지</td>
				<td class="fx12">
				<div style="padding:5px; border:1px solid #ddd;">
				<textarea name="memo" style="padding:0px; width:100%; border:0px;" rows="5"></textarea>
				</div></td>
			</tr>
	</tbody>
</table>
			
		<div class="col-xs-3" style="float: right;margin: 0 10% 10% 0; border: 2px solid black;padding:2em;">
			<table class="table table04">
				<thead>
					<tr>
						<th colspan="2">최종금액</th>
						</tr>
					</thead>
				<tbody>
				<tr>
					<td colspan="2">
						<div>
							<p>은행<select style="margin-left: 50%;">
								<option value ="">선택</option>
								<option>국민</option>
								<option>신한</option>
								<option>기업</option>
								<option>하나</option>
								<option>외환</option>
								<option>우리</option>
								<option>농협</option>
							</select></p>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div>
							<p>계좌번호</p>
							<input type="text" name = "account" value = "" class = "form-control">
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div>
							<p>예금주명</p>
							<input type="text" name = "account_name" value = "" class = "form-control">
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div>
							<p>최종 결제금액<b style="margin-left: 57%; font-size: 1.5em;">14,000</b>원</p>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					  <button type="button" class="btn btn-primary" style="width:100%;height: 40%;margin-top:1em;" id = "pay"
					  onclick = "jacascript:aorder()">
					  주문하기</button>
					<div class="pay_layer hidden" style="text-align: center; margin-top: 20px; display: block;">
						<div><img src="/data/skin/default/images/design/img_paying.gif" width="200"></div>
						<div style="padding-top:20px;">
						<img src="/data/skin/default/images/design/progress_bar.gif" width="200"></div>
					</div>
					</td>
				</tr>
				</tbody>
			</table>
		</div>
		</form>
		</div>
		
