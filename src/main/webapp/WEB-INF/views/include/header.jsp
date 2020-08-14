<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="/resources/css/mainIndex.css">
<link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/notosanskr.css">
<link rel="stylesheet" href="//fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&amp;display=swap">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>페쓰으루우움</title>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var doc_h = $('body').height() - 395; //상하단 만큼빼줌
						$('#contents').css({
							'min-height' : doc_h
						});
						/*header*/
						$('.headerMenu .header #nav li')
								.mouseover(
										function() {
											var navHt = $(
													'.headerMenu .header #nav li')
													.outerHeight() - 1;
											var gnbHt = $(this).find(
													'.navbarMenu').outerHeight();
											$('.headerMenu .header #nav .navbarMenu').css({
														'top' : navHt
													});
											$('.backgroundCover').css({
												'height' : gnbHt
											});
											if ($(this).children('.navbarMenu').length > 0) {
												$(this).find('.pageOne').addClass(
														'active');
												$('.backgroundCover').stop().show();
												$(this).children('.navbarMenu')
														.stop().show();
											}
										})
								.mouseout(
										function() {
											$(this).find('.pageOne').removeClass(
													'active');
											$('.backgroundCover').stop().hide();
											$('.headerMenu .header #nav li .navbarMenu')
													.stop().hide();
										});
						$('#icoHam').click(function() {
							$("#navPrdList").show();
							$('.backgroundCover').stop().show();
						});
						//top_header fixed
						var hdHt = $('.top_header').outerHeight();
						$(window).scroll(function() {
							var winTop = $(window).scrollTop();
							if (winTop >= hdHt) {
								$('.top_header').addClass('fixed');
								$('.top_header').siblings('.header_color').css({
									'padding-top' : hdHt
								});
							} else {
								$('.top_header').removeClass('fixed');
								$('.top_header').siblings('.header_color').css({
									'padding-top' : '0'
								});
							}
						});
						//fixed_btn ( top_btn )
						$(window).scroll(function() {
							var winTop = $(window).scrollTop();
							if (winTop >= 400) {
								$('.btnTop').addClass('on');
							} else {
								$('.btnTop').removeClass('on');
							}
						});
						//btnTop ( top_btn )
						$('.btnTop').click(function(event) {
							event.preventDefault();
							$('html,body').animate({
								scrollTop : 0
							}, 500, 'linear');
							return false;
						});
					});
</script>
</head>