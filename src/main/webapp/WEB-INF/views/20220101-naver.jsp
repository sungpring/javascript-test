<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<title id="browserTitleArea">네이버 뉴스 따라해보기</title>
<meta charset="UTF-8" />
<style type="text/css"> /*MIME type 설정*/
@charset "UTF-8";
.is_hidden{display:none!important}
.blind{position:absolute;overflow:hidden;clip:rect(0 0 0 0);width:1px;height:1px;margin:-1px}
/*블라인드 클래스를 clip:rect() 모두 0으로 주어서 안보이게끔 설정한 것이다.*/

a { text-decoration:none; } /* a 태그 밑줄 없애기 */
* {margin:0; padding:0;} /* 상단 여백 없애는 css */
.news_header { }
.Ngnb { position:absolute; background : #4063bf; height: 50px; width:100%;}
.Ngnb_both>div {display: inline-block;}
.Naver_logo {font-weight:bold; font-size:1.5em;}
.Nicon_service {font-weight:bold; font-size:1.2em;}

.Ngnb_left span {color:white;}
.Ngnb_left{ margin-left:250px; margin-top: 5px; }
.Ngnb_left>div { position:relative; display: inline-block; }
.Nservice_subitem span {opacity: 0.33;display: inline-block; vertical-align: top; }
.Nicon_family::after{ content:"|"; font-weight:100; font-size:13px; opacity: 0.33; margin-left:5px; padding-bottom: 13px;}

.Ngnb_right span {color:white;}
.Ngnb_right { float:right; margin-right:250px; margin-top: 13px; }
.Ngnb_right>div { position:relative; display: inline-block;  }

.Nlnb{ position:absolute; top:50px; height: 50px; width:100%; }

</style>
</head>
<body class="main_body">

<section class="news_header">
	<header class="nh_header" role="banner"><!--header 요소 안에  role 이라는 속성을 정의해주고 값을 banner 로 정의  -->
		<div class="Ngnb">
			<div class="Ngnb_inner">
				<div class="Ngnb_both">
					<div class="Ngnb_left">
						<div class="Ngnb_logo">
							<a href="https://www.naver.com" onclick="return false;" class="Nlogo_link">
								<span class="Naver_logo">N</span>
							</a>
						</div>
						<div class="Ngnb_service">
							<span class="Nservice_news">
								<a href="https://news.naver.com" onclick="return false;">
									<span class="Nicon_family Nicon_service">뉴스<!-- before 뉴스 --></span>
								</a>
							</span>
							<span class="Nservice_subitem">
								<a href="https://entertain.naver.com/home" onclick="return false;">
									<span class="Nicon_family Nicon_entertain">연애<!-- before 연예 --></span>
								</a>
							</span>
							<span class="Nservice_subitem">
								<a href="https://sports.naver.com/index" onclick="return false;">
									<span class="Nicon_family Nicon_sports">스포츠<!-- before 스포츠 --></span>
								</a>
							</span>
							<span class="Nservice_subitem">
								<a href="https://weather.naver.com/" onclick="return false;">
									<span class="Nicon_family Nicon_weather">날씨<!-- before 날씨 --></span>
								</a>
							</span>
							<span class="Nservice_subitem">
								<a href="https://contents.premium.naver.com/" onclick="return false;">
									<span class="Nicon_family Nicon_premium">프리미엄<!-- before 프리미엄 --></span>
								</a>
							</span>
						</div>
					</div>
					<div class="Ngnb_right">
						<div class="Ngnb_group">
							<div id="gnb" class="gnb_dark_type2">
								<strong class="blind">사용자 링크</strong>
								<ul class="gnb_lst" id="gnb_lst">
									<li class="gnb_login_li" id="gnb_login_layer" style="display:inline-block;">
										<a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.login" id="gnb_login_button">
											<span class="gnb_bg"></span>
											<span class="gnb_bdr"></span>
											<span class="gnb_txt">로그인</span>
										</a>
									</li>
									<li class="gnb_service_li gnb_lyr_opened" id="gnb_service_layer" style="display: inline-block;">
										<a href="javascript:;" class="gnb_service" onclick="gnbMoreLayer.clickToggle(); return false;">
											<span class="gnb_icon"></span>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="Ngnb_search is_hidden"></div>
						<div class="Ngnb_tool">
							<a href="javascript:;" class="Ntool_button" onclick="return false;">
								<span class="Nicon_search">검색</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- Global Navigator Bar -->
		<div class="Nlnb">
			<div class="Nlnb_inner">
				<div class="Nlnb_both">
					<div class="Nlnb_left _lnb_scroll">
						<div class="Nlnb_menu Ntype_scroll">
							<div class="Nlnb_menu_inner _scroll" style="touch-action:pan-y pinch-zoom; height:46px; position:relative; overflow:hidden;">
							<!-- pinch-zoom 핀치줌 (여러손가락을 사용한 확대 축소 가능) pay-y 의 경우 y축 즉 세로축 방향으로만 끌기 가능. x일 가로 경우  -->
								<ul class="Nlnb_menu_list" role="menu" style="position: absolute; transition-timing-function: cubic-bezier(0.1,0.57,0.1,1); transition-duration:0ms; transform: translate(0px, 0px) translateZ(0px);">
								<!-- transition-timing-function: cubic-bezier(0.1,0.57,0.1,1); css transition 움직임 속도를 지정할 수 있다. cubic-bezier 로 설정하면 그래프 모양으로 속도를 설정가능 
									 transition-duration 끝날 때까지 걸리는 시간을 정한다. 0ms 이므로 끝날때까지 0ms 시간 소요
									 transform 애니메이션의 방향을 설정할 수도 움직임을 설정할 수도 있다. 위의 경우 translate(0px, 0px) 첫번째는 가로축, 두번째는 세로축
								-->
									<li class="Nlist_item is_active"><a href="https://news.naver.com/" class="Nitem_link" role="menuitem" aria-selected="true" onclick="nclk(event,'lnb.pcmedia','','');"><span class="Nitem_link_menu">언론사별</span></a></li>
									<li class="Nlist_item"><a href="https://news.naver.com/main/main.naver?mode=LSD&amp;mid=shm&amp;sid1=100" class="Nitem_link" role="menuitem" aria-selected="false" onclick="return false;"><span class="Nitem_link_menu">정치</span></a></li>
									<li class="Nlist_item"><a href="https://news.naver.com/main/main.naver?mode=LSD&amp;mid=shm&amp;sid1=101" class="Nitem_link" role="menuitem" aria-selected="false" onclick="return false;"><span class="Nitem_link_menu">경제</span></a></li>
									<li class="Nlist_item"><a href="https://news.naver.com/main/main.naver?mode=LSD&amp;mid=shm&amp;sid1=102" class="Nitem_link" role="menuitem" aria-selected="false" onclick="return false;"><span class="Nitem_link_menu">사회</span></a></li>
									<li class="Nlist_item"><a href="https://news.naver.com/main/main.naver?mode=LSD&amp;mid=shm&amp;sid1=103" class="Nitem_link" role="menuitem" aria-selected="false" onclick="return false;"><span class="Nitem_link_menu">생활/문화</span></a></li>
									<!-- aria-selected 탭메뉴의 선택값을 알려준다. true 일 경우 선택이며, false 일 경우 선택되지 않음을 나타낸다. -->
									
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- Local Navigator Bar -->
	</header>
</section>

<hr>

<div id="ct" role="main" class="main_wrap"></div>

</body>
</html>