<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


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
function alist(){
	var url = "./artlist";
	location.href = url;
}
function myinfo(){
	var url = "../mypage/myinfo";
	location.href = url;
}
</script>
<!-- 페이지 이동 ======= -->

        <div class="container" style = "margin-bottom:10vh;">
            <div class="row">
            
			
			<!-- 최종결제금액 -->
			<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script> 
			<script type="text/javascript"> 
			var _nasa={};
			_nasa["cnv"] = wcs.cnv("1","19,500");
			</script>


			<div style="height:60px"></div>
			<div>
				<p style = "font-size:20px; font-weight: bolder;">주문내역</p>
			</div>
			<!-- 결제정보/배송지정보 -->
			<table width="100%" border="0">
			<col width="49%" valign="top" />
			<col width="2%" valign="top" />
			<col width="49%" valign="top" />
			<tr>
				<td valign="top">

					<!-- 결제정보 -->
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td valign="bottom" align="left" height="25"><img src="/data/skin/default/images/design/order_stit_paymentinfo.gif" /></td>
						</tr>
						<tr><td height="8"></td></tr>
						<tr><td height="2" bgcolor="545454"></td></tr>
						<tr><td height="23"></td></tr>
					</table>

					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<col width="90" />
						<tr>
							<td>주문번호</td>
							<td class="fx12">2017092215475718053</td>
						</tr>
						<tr><td height="15"></td></tr>
						<tr>
							<td>결제방식</td>
							<td class="fx12">무통장</td>
						</tr>

						<tr><td height="15"></td></tr>
						<tr>
							<td>입금계좌</td>
							<td class="fx12">기업은행 027-136516-01-023</td>
						</tr>
						
					    <tr><td height="15"></td></tr>
						<tr>
							<td>예금주</td>
							<td class="fx12"><font color="black">김성아</font></td>
						</tr>
						<tr><td height="15"></td></tr>
						<tr>
							<td>결제금액</td>
							<td class="fx12"><font color="black"><strong>19,500원</strong></font></td>
						</tr>
						<tr><td height="15"></td></tr>
					</table>

				</td>
				<td></td>
				<td valign="top">
					<!-- 배송지정보 -->
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td valign="bottom" align="left" height="25"></td>
						</tr>
						<tr><td height="8"></td></tr>
						<tr><td height="2" bgcolor="545454"></td></tr>
						<tr><td height="23"></td></tr>
					</table>

					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<col width="90" />
						<tr>
							<td>받는사람</td>
							<td class="fx12">성아</td>
						</tr>
						<tr><td height="15"></td></tr>
						<tr>
							<td>연락처</td>
							<td class="fx12">전화번호 02-3666-6666 / 휴대폰 010-9097-7846</td>
						</tr>
						<tr><td height="15"></td></tr>
						<tr class="goods_delivery_info">
							<td>주소</td>
							<td class="fx12">
							    (07803)<br>
							<span style="font-weight:bold;">(도로명)</span> 서울특별시 강서구 강서로 375<br>								
							(공통상세) 12
							</td>
						</tr>
						<tr class="goods_delivery_info"><td height="15"></td></tr>
						<tr class="goods_delivery_info">
							<td>배송구분</td>
							<td class="fx12">
							택배 (선불 또는 착불)
							</td>
						</tr>
						<tr><td height="15"></td></tr>
						<tr class="goods_delivery_info">
							<td>배송메세지</td>
							<td class="fx12">ㄴㅇㄹㄴㅇㄹ</td>
						</tr>
						<tr class="goods_delivery_info">
							<td height="20px;"></td>
							<td></td>
						</tr>
						<tr class="goods_delivery_info">
						<td colspan="2" align="right"><br><Br>
						<input type="button" class = "btn btn-default" value="쇼핑계속" onclick="javascript:alist()" style= "color:black;">
						<input type="button" class = "btn btn-default" value="주문내역 확인" onclick="javascript:myinfo()" style= "color:black;">
						</td>
						</tr>
					</table>
				</td>
			</tr>
			</table>

</div>
</div>
