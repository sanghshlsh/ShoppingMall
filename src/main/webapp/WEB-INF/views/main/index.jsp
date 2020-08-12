<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/mainIndex.css">
<link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/notosanskr.css">
<link rel="stylesheet" href="//fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&amp;display=swap">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>페쓰으루우움</title>
</head>


<body>

	<nav class="navbar navbar-expand-md fixed-top" style="background: #213f85; height: 50px;">
		<a class="navbar-brand" href="/customerservice/main" id="send"> SEND YOUR LOVE TO PETS</a>
		<!-- Toggler/collapsibe Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><span class="navbar-text" style="font-size: 16px; color: white;"><img src="https://www.pethroom.com/web/upload/images/mobile/ico_tel.png" height="17px;">
						1644-9603 ( MON - FRI 9:30 - 17:00, lunch 11:50 - 13:00 )</span></li>
			</ul>
		</div>
		<ul class="nav justify-content-end">
			<li class="nav-item"><span class="navbar-text" style="font-size: 16px; color: white; padding-right: 35px;"> "Pets, Just Enjoy The Bathroom!" </span></li>
		</ul>
	</nav>
	<div class="arrow" style="vertical-align: top; padding-left: 145px;">
		<img src="https://www.pethroom.com/web/upload/images/topBan_ar.png">
	</div>

	<div class="hoverMenu" id="hoverMenu">
		<ul class="hoverList">
			<li><a onclick="javascript:window.open('https://lc1.lunasoft.co.kr/lunachat/api-connect/@페스룸/main', 'lunachat', 'width=1024, height=800');" style="cursor: pointer">KAKAO Chat</a></li>
			<li><a href="/customerservice/faq">FAQs</a></li>
			<li><a href="/customerservice/qna">Q&A</a></li>
			<li><a href="#">MEMBERSHIP<span style="font-size: 12px;">(Coming soon)</span></a></li>
		</ul>

	</div>

	<ul class="nav justify-content-end" id="joinList">
		<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
		<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
		<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>
		<li class="nav-item"><a class="nav-link" href="#" style="padding-right: 100px;">주문관리</a></li>
	</ul>

	<div class="header" id="header">
		<nav class="navbar navbar-expand-md">
			<a class="navbar-brand" href="/"><img src="https://www.pethroom.com/web/upload/category/editor/2020/01/02/768b248922ce8fe4d74a541c074f7dd7.png" alt="" id="logo"></a>

			<ul class="navbar-nav">
				<li class="dropdown mega-dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> ABOUT <span class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-5">
							<ul class="left1">
								<li class="dropdown-header">ABOUT</li>
								<li><a href="#">PHILOSOPHY</a></li>
								<li><a href="#">SOCIAL ACTIVITY</a></li>
								<li><a href="#">GLOBAL</a></li>
								<li><a href="#">ROOMMATE</a></li>
								<li><a href="#">PARTNERS</a></li>
								<li><a href="#">PEOPLE</a></li>
							</ul>
						</li>
						<li class="col-sm-7">
							<ul class="left2">
								<li class="dropdown-header">OUR BRANDS</li>
								<li><a href="#">BOSS AND ALEX</a></li>
								<li><a href="https://www.pethroom.com/product/take-care-set/109/category/46/display/1/"><img src="https://www.pethroom.com/web/upload/images/navBan_05.png" alt="" class="btLine"></a></li>
							</ul>
						</li>
					</ul></li>
				<li class="dropdown mega-dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> PRODUCT <span class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-4">
							<ul class="left1">
								<li class="dropdown-header">한눈에 모아보기</li>
							</ul>
						</li>
						<li class="col-sm-4">
							<ul class="left1">
								<li class="dropdown-header">MY PET</li>
								<li><a href="#">FOR DOG</a></li>
								<li><a href="#">FOR CAT</a></li>
							</ul>
						</li>
						<li class="col-sm-4">
							<ul class="left1">
								<li class="dropdown-header">ALL PRODUCTS</li>
							</ul>
						</li>
						<li class="col-sm-4">
							<ul class="left1">
								<li class="dropdown-header">BEST & STEADY</li>
							</ul>
						</li>
						<li class="col-sm-4">
							<ul class="left1">
								<li class="dropdown-header">NEW PRODUCT</li>
							</ul>
						</li>
						<li class="col-sm-4">
							<ul class="left1">
								<li class="dropdown-header">SPECIAL SET</li>
							</ul>
						</li>
						<li class="col-sm-4">
							<ul class="left2">
								<li class="dropdown-header">목욕/미용 용품</li>
								<li><a href="#">Relax Shower릴렉스 샤워 (샤워기)</a></li>
								<li><a href="#">Healing Brush 힐링 브러쉬 (죽은털제거 빗)</a></li>
								<li><a href="#">Sponge Towel스펀지 타올</a></li>
								<li><a href="#">Bubble Shampoo버블 샴푸</a></li>
								<li><a href="#">Deep Clean Bath Bomb딥클린 배쓰 밤 (입욕제)</a></li>
								<li><a href="#">Magic Glove매직 글러브</a></li>
								<li><a href="#">Dry Jacket드라이 자켓</a></li>
							</ul>
						</li>
						<li class="col-sm-4">
							<ul class="left2">
								<li class="dropdown-header">배변용품</li>
								<li><a href="#">Dust Free Bentonite더스트 프리 벤토나이트 (먼지없는 벤토모래)</a></li>
								<li><a href="#">Odour Free Tofu오도어 프리 두부 (악취없는 두부모래)</a></li>
								<li><a href="#">Clean-Up Mat 클린-업 매트 (사막화 막는 매트)</a></li>
							</ul>
						</li>
						<li class="col-sm-4">
							<ul class="left3">
								<li class="dropdown-header">야외/관리 용품</li>
								<li><a href="#">Paw Care Essence포우 케어 에센스 (발 보습제)</a></li>
								<li><a href="#">Nature Ear Cleaner네이처 이어 클리너 (귀 세정제)</a></li>
								<li><a href="#">Comfort-X Harness컴포트 X 하네스 (하네스: 몸통)</a></li>
								<li><a href="#">Comfort Leash컴포트 리쉬 (리드줄)</a></li>
								<li><a href="#">Happy Cat Spray & Powder해피캣 스프레이/파우더</a></li>
							</ul>
						</li>
						<li class="col-sm-4">
							<ul class="left3">
								<li class="dropdown-header">위생용품</li>
								<li><a href="#">Pet-Doctor Spray Plus+펫-닥터 스프레이 플러스+(살균소취제)</a></li>
								<li><a href="#">Dental Clean Toothpaste덴탈 클린 치약</a></li>
							</ul>
						</li>
					</ul></li>
				<li class="dropdown mega-dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> REVIEW <span class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-5">
							<ul class="left1">
								<li class="dropdown-header">REVIEW</li>
								<li><a href="#">BEST REVIEW</a></li>
								<li><a href="#">ALL REVIEW</a></li>
							</ul>
						</li>
						<li class="col-sm-5">
							<ul class="left3">
								<li class="dropdown-header">REVIEW EVENT</li>
								<li><a>매달 베스트 포토리뷰 5명에게 5만원 상당의 페스룸 제품을 드립니다.</a></li>
							</ul>
						</li>
					</ul></li>
				<li class="dropdown mega-dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> C/S CENTER <span class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-5">
							<ul class="left1">
								<li class="dropdown-header">C/S CENTER</li>
								<li><a href="#">NOTICE</a></li>
								<li><a href="#">Q&A</a></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">EVENT</a></li>
							</ul>
						</li>
						<li class="col-sm-7">
							<ul class="left2">
								<li class="dropdown-header">SEND YOUR LOVE TO PETS</li>
								<li><a>PETHROOM은 여러분들과 반려동물의 행복한 일상을 만들기 위해 최선을 다하고 있습니다.</a></li>
								<li><a><img src="https://www.pethroom.com/web/upload/images/navBan_03.png" alt=""></a></li>
							</ul>
						</li>
					</ul></li>
				<li class="inquiry"><a href="#">INQUIRY</a></li>
			</ul>
			<form class="form-inline" action="/action_page.php">
				<input class="form-control mr-sm-2" type="text" placeholder="검색창 스타일 이따가 고침">
				<button class="btn btn-success" type="submit">Search</button>
			</form>
			<!-- /.nav-collapse -->
		</nav>
	</div>

	<div class="container" id="contents">

		<div class="row" id="brand_info" style="text-align: center;">
			<img src="https://www.pethroom.com/web/upload/images/mban_01.png" alt="" width="auto;">
		</div>

		<div class="row" id="video_wrap">
			<div style="text-align: center;">
				<a href="https://www.pethroom.com/product/take-care-set/109/category/46/display/1/"><img src="https://www.pethroom.com/web/upload/images/take_care_1.png" alt="" width="auto;"></a>
			</div>
		</div>
	</div>

	<div class="container-fluid" id="footer">
		<div class="fixed">
			<ul class="btm_link" style="font-size: 14px;">
				<li><a href="https://www.pethroom.com/member/agreement.html">이용약관</a></li>
				<li><a href="https://www.pethroom.com/member/privacy.html"><strong>개인정보처리방침</strong></a></li>
				<li><a href="https://www.pethroom.com/shopinfo/guide.html">이용안내</a></li>
				<li><a href="https://www.pethroom.com/shopinfo/returns.html">반품&환불규정</a></li>
			</ul>
			<div class="footers">
				<div class="fontLogo">
					<img src="https://www.pethroom.com/web/upload/images/logo_b.png" alt="">
				</div>
				<div class="cs_info">
					<div class="tel">
						<img src="https://www.pethroom.com/web/upload/images/ico_bt1.png" alt="" class="icon icon2"> 1644-9603
					</div>
					<div class="time">
						<div class="timep" style="font-size: 12px;">
							MON-FRI<br> 9:30 - 17:00 (lunch 11:50 - 13:00)<br>
						</div>
						<span class="email" style="font-size: 12px;"><img src="https://www.pethroom.com/web/upload/images/ico_bt2.png" alt="" class="icon">contact@bmsmile.com</span>
					</div>
				</div>
				<div class="com_info_desc" style="font-size: 12px;">
					Company Name : BMSMILE Corporation <br> Business License No : 394-81-01000 <a href="https://www.ftc.go.kr/info/bizinfo/communicationList.jsp" target="_blank">[사업자정보확인]</a><br>
					E-Commerce Registration : 2020-Seoul Gangnam-01687.<br> Address : 15th floor, Seowoo building, 314, Gangnam-daero,<br> Gangnam-gu, Seoul, Republic of Korea / Tel. 1644-9603 <br>
					CEO : Bongsu Park Personal / Info Manager : Heejin Kang<br>
				</div>
				<div class="bsns_wrap">
					<ul class="sns">
						<li><a href="https://www.facebook.com/pethroom" target="_blank"><img src="https://www.pethroom.com/web/upload/images/ico_btsns_01.png" alt="facebook"></a></li>
						<li><a href="https://www.instagram.com/pethroom_official/" target="_blank"><img src="https://www.pethroom.com/web/upload/images/ico_btsns_02.png" alt="insta"></a></li>
						<li><a href="https://www.youtube.com/channel/UCZ9vgzJjPJGVxBqKDGv_YGg/featured" target="_blank"><img src="https://www.pethroom.com/web/upload/images/ico_btsns_03.png" alt="youtube"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(
				function() {
					$(".dropdown").hover(
							function() {
								$('.dropdown-menu', this).not(
										'.in .dropdown-menu').stop(true, true)
										.slideDown("400");
								$(this).toggleClass('open');
							},
							function() {
								$('.dropdown-menu', this).not(
										'.in .dropdown-menu').stop(true, true)
										.slideUp("400");
								$(this).toggleClass('open');
							});
				});
	</script>
</body>

</html>