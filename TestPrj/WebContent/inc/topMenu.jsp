<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<div id="header">
	<div class="header_con">
		<div class="logoImg">
			<h2>
				<a href="/traning/t01/t11/T11_01_00.jsp" title="RCMS 수행기관"><img
					src="/images/common/rcms_logo.gif" alt="RCMS 수행기관" /></a>
			</h2>

			<p class="login_info">
				[<b>이총괄</b>]님 반갑습니다. <a href="#"
					onclick="uf_sbhm_list(document.frm); return false;">(과제책임자)</a>
			    &nbsp;&nbsp;<img src="/traning/img/ing.gif" alt="시뮬레이션 구동중"/>
			</p>

		</div>

		<div class="allmenu" id="allmenu" style="display: none;">
			<iframe id="allmenu_iframe"
				style="position: absolute; z-index: -1; width: 100%; height: 590px; top: 0; left: 0; margin: 0; padding: 0; scrolling: no;"
				frameborder="0" src="" title="전체메뉴 IFRAME"> </iframe>
            <div class="title">
                <img src="/images/common/allmenu_title.gif" alt="RCMS 전체메뉴보기"/>
                <span class="close">
                    <a href="#" onclick="$('#allmenu').toggle();">
                        <img src="/images/common/bt_close.gif" alt="닫기"/>
                    </a>
                </span>
            </div>
			<div class="menu_box">
				<ul class="menu_bg">
					<li class="noline">
						<ul class="menu_list">
							<li class="menu_1dep">수행기관
								<ul class="sub_menu">
									<li class="menu_2dep"><a href="#"
										onclick="fn_url('/traning/t01/t11/T11_01_00.jsp'); return false;">연구비관리</a></li>
									<li><a href="#"
										onclick="fn_url('/traning/t01/t11/T11_01_00.jsp'); return false;">현황조회</a></li>
									<li><a href="#"
										onclick="fn_url('/traning/t01/t12/T12_01_00_0.jsp'); return false;">연구비사용관리</a></li>
									<li><a href="#"
										onclick="fn_url('/traning/t01/t14/T14_01_00.jsp'); return false;">현물등록관리</a></li>
								</ul>
								<ul class="sub_menu">
									<li class="menu_2dep"><a href="#"
										onclick="fn_url('/traning/t02/t21/T21_01_00.jsp'); return false;">연구비복원</a></li>
									<li><a href="#"
										onclick="fn_url('/traning/t02/t21/T21_01_00.jsp'); return false;">요청내역조회</a></li>
									<li><a href="#"
										onclick="fn_url('/traning/t02/t22/T22_01_00.jsp'); return false;">연구비이체취소
											요청</a></li>
									<li><a href="#"
										onclick="fn_url('/traning/t02/t23/T23_01_00.jsp'); return false;">카드결제복원요청</a></li>
									<li><a href="#"
										onclick="fn_url('/traning/t02/t24/T24_01_00.jsp'); return false;">부가세
											복원요청</a></li>
								</ul>
								<ul class="sub_menu">
									<li class="menu_2dep"><a href="#"
										onclick="fn_url('/traning/t03/t31/T31_01_00.jsp'); return false;">온라인정산</a></li>
									<li><a href="#"
										onclick="fn_url('/traning/t03/t31/T31_01_00.jsp'); return false;">연구비사용증빙관리</a></li>
									<li><a href="#"
										onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">카드내역
											조회</a></li>
									<li><a href="#"
										onclick="fn_url('/traning/t03/t33/T33_01_00.jsp'); return false;">정산서류작성</a></li>
									<li><a href="#"
										onclick="fn_url('/traning/t03/t34/T34_01_00.jsp'); return false;">정산진행현황</a></li>
									<li><a href="#"
										onclick="fn_url('/traning/t03/t35/T35_01_00.jsp'); return false;">과제별
											상시점검</a></li>
								</ul>
								<ul class="sub_menu">
									<li class="menu_2dep"><a href="#"
										onclick="fn_url('/traning/t04/t41/T41_08_00.jsp'); return false;">이용환경관리</a></li>
									<li><a href="#"
										onclick="fn_url('/traning/t04/t41/T41_08_00.jsp'); return false;">기본설정</a></li>
									<li><a href="#"
										onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">부가설정</a></li>
									<li><a href="#"
										onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">기관계좌관리</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="line"><ul class="menu_list ">
							<li class="menu_1dep">정보마당
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">공지사항</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">자료실</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">관련사이트 정보</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">비목/증빙 정보</a></li>
								</ul>
							</li>
						</ul></li>
					<li class="line"><ul class="menu_list ">
							<li class="menu_1dep">고객센터
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">고객지원 안내</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">자주묻는질문</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">질의및응답</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">사용자매뉴얼</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">전담기관매뉴얼</a></li>
								</ul>
								<ul class="sub_menu">
									<li class="menu_2dep"><a
										href="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">동영상가이드</a></li>
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">RCMS 홍보영상</a></li>
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">RCMS 전문교육</a></li>
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">RCMS
											소개(요약) 동영상</a></li>
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">RCMS 전담기관
											교육</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">프로그램다운로드</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">문의처안내</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">모바일 웹서비스</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">교육신청</a></li>
								</ul>
							</li>
						</ul></li>
					<li class="line"><ul class="menu_list ">
							<li class="menu_1dep">RCMS소개
								<ul class="sub_menu">
									<li class="menu_2dep"><a
										href="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">RCMS란</a></li>
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">RCMS 란?</a></li>
								</ul>
								<ul class="sub_menu">
									<li class="menu_2dep"><a
										href="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">기능소개</a></li>
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">주요기능</a></li>
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">연구비관리</a></li>
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">시스템연계</a></li>
								</ul>
							</li>
						</ul></li>
					<li class="line"><ul class="menu_list ">
							<li class="menu_1dep">ETC
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">찾아오시는길</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">사이트맵</a></li>
								</ul>
							</li>
						</ul>
						<ul class="menu_list t20">
							<li class="menu_1dep">로그인/회원가입
								<ul class="sub_menu">
									<li class="menu_2dep"><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">로그인</a></li>
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">로그인(전담기관)</a></li>
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">로그인(수행기관)</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">회원가입</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">아이디찾기</a></li>
								</ul>
								<ul class="sub_menu01">
									<li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;">패스워드찾기</a></li>
								</ul>
							</li>
						</ul></li>
				</ul>
			</div>
		</div>
		<form name="gMenuFrm" method="post"></form>
		<!-- sta menu start -->



		<script type="text/javascript">
			function toggleLoginWidget() {
				var obj = document.getElementById("topLoginWidget");
				if (obj != undefined) {
					if (obj.style.display == "" || obj.style.display == "none") {
						obj.style.display = "block";
					} else {
						obj.style.display = "none";
					}
				}
			}
		</script>
		<div class="sta">
			<ul>
				<li>&nbsp;</li>
			</ul>
		</div>
		<div id="topLoginWidget" class="login" style="display: none;">
			<ul>
			    <li>&nbsp;</li>
			</ul>
		</div>

		<!-- //sta menu end// -->
		<!-- content menu start -->
		<div class="contentmenu">


			<div class="contmenu">
				<ul>
				    <li><a href="#" onclick="thisClose(); return false;"><img
                            src="/traning/img/logout.gif" alt="시뮬레이션 나가기" /></a></li>
				</ul>
			</div>
		</div>
		<!-- //content menu end// -->
		<!-- main menu start -->
		<div class="mainmenu">





			<div class="menu">
				<ul>

					<li><a href="#"
						onclick="fn_url('/traning/t01/t11/T11_01_00.jsp'); return false;"
						onmouseover="toggle_gnbover(1, 'sub')"
						onfocus="toggle_gnbover(1, 'sub')"><img
							src="/images/menu/sum_01.gif" alt="연구비관리" name="m1" id="m1" /></a>

						<div id="sub1" style="display: none">
							<ul>

								<li><a href="#"
									onclick="fn_url('/traning/t01/t11/T11_01_00.jsp'); return false;"
									onmouseover="toggle_gnsover(1,1)"
									onmouseout="toggle_gnsout(1,1)" onfocus="toggle_gnsover(1,1)"
									onblur="toggle_gnsout(1,1)"><img
										src="/images/menu/sum_0101.gif" alt="현황조회" id="msub_0101" /></a></li>

								<li><a href="#"
									onclick="fn_url('/traning/t01/t12/T12_01_00_0.jsp'); return false;"
									onmouseover="toggle_gnsover(1,2)"
									onmouseout="toggle_gnsout(1,2)" onfocus="toggle_gnsover(1,2)"
									onblur="toggle_gnsout(1,2)"><img
										src="/images/menu/sum_0102.gif" alt="연구비사용관리" id="msub_0102" /></a></li>

								<li><a href="#"
									onclick="fn_url('/traning/t01/t14/T14_01_00.jsp'); return false;"
									onmouseover="toggle_gnsover(1,4)"
									onmouseout="toggle_gnsout(1,4)" onfocus="toggle_gnsover(1,4)"
									onblur="toggle_gnsout(1,4)"><img
										src="/images/menu/sum_0105.gif" alt="현물등록관리" id="msub_0104" /></a></li>

							</ul>
						</div></li>

					<li><a href="#"
						onclick="fn_url('/traning/t02/t21/T21_01_00.jsp'); return false;"
						onmouseover="toggle_gnbover(2, 'sub')"
						onfocus="toggle_gnbover(2, 'sub')"><img
							src="/images/menu/sum_02.gif" alt="연구비복원" name="m2" id="m2" /></a>

						<div id="sub2" style="display: none">
							<ul>

								<li><a href="#"
									onclick="fn_url('/traning/t02/t21/T21_01_00.jsp'); return false;"
									onmouseover="toggle_gnsover(2,1)"
									onmouseout="toggle_gnsout(2,1)" onfocus="toggle_gnsover(2,1)"
									onblur="toggle_gnsout(2,1)"><img
										src="/images/menu/sum_0201.gif" alt="요청내역조회" id="msub_0201" /></a></li>

								<li><a href="#"
									onclick="fn_url('/traning/t02/t22/T22_01_00.jsp'); return false;"
									onmouseover="toggle_gnsover(2,2)"
									onmouseout="toggle_gnsout(2,2)" onfocus="toggle_gnsover(2,2)"
									onblur="toggle_gnsout(2,2)"><img
										src="/images/menu/sum_0202.gif" alt="연구비이체취소 요청"
										id="msub_0202" /></a></li>

								<li><a href="#"
									onclick="fn_url('/traning/t02/t23/T23_01_00.jsp'); return false;"
									onmouseover="toggle_gnsover(2,3)"
									onmouseout="toggle_gnsout(2,3)" onfocus="toggle_gnsover(2,3)"
									onblur="toggle_gnsout(2,3)"><img
										src="/images/menu/sum_0203.gif" alt="카드결제복원요청" id="msub_0203" /></a></li>

								<li><a href="#"
									onclick="fn_url('/traning/t02/t24/T24_01_00.jsp'); return false;"
									onmouseover="toggle_gnsover(2,4)"
									onmouseout="toggle_gnsout(2,4)" onfocus="toggle_gnsover(2,4)"
									onblur="toggle_gnsout(2,4)"><img
										src="/images/menu/sum_0204.gif" alt="부가세 복원요청" id="msub_0204" /></a></li>

							</ul>
						</div></li>

					<li><a href="#"
						onclick="fn_url('/traning/t03/t31/T31_01_00.jsp'); return false;"
						onmouseover="toggle_gnbover(3, 'sub')"
						onfocus="toggle_gnbover(3, 'sub')"><img
							src="/images/menu/sum_03.gif" alt="온라인정산" name="m3" id="m3" /></a>

						<div id="sub3" style="display: none">
							<ul>

								<li><a href="#"
									onclick="fn_url('/traning/t03/t31/T31_01_00.jsp'); return false;"
									onmouseover="toggle_gnsover(3,1)"
									onmouseout="toggle_gnsout(3,1)" onfocus="toggle_gnsover(3,1)"
									onblur="toggle_gnsout(3,1)"><img
										src="/images/menu/sum_0301.gif" alt="연구비사용증빙관리" id="msub_0301" /></a></li>

								<li><a href="#"
									onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;"
									onmouseover="toggle_gnsover(3,2)"
									onmouseout="toggle_gnsout(3,2)" onfocus="toggle_gnsover(3,2)"
									onblur="toggle_gnsout(3,2)"><img
										src="/images/menu/sum_0302.gif" alt="카드내역 조회" id="msub_0302" /></a></li>

								<li><a href="#"
									onclick="fn_url('/traning/t03/t33/T33_01_00.jsp'); return false;"
									onmouseover="toggle_gnsover(3,3)"
									onmouseout="toggle_gnsout(3,3)" onfocus="toggle_gnsover(3,3)"
									onblur="toggle_gnsout(3,3)"><img
										src="/images/menu/sum_0303.gif" alt="정산서류작성" id="msub_0303" /></a></li>

								<li><a href="#"
									onclick="fn_url('/traning/t03/t34/T34_01_00.jsp'); return false;"
									onmouseover="toggle_gnsover(3,4)"
									onmouseout="toggle_gnsout(3,4)" onfocus="toggle_gnsover(3,4)"
									onblur="toggle_gnsout(3,4)"><img
										src="/images/menu/sum_0304.gif" alt="정산진행현황" id="msub_0304" /></a></li>

								<li><a href="#"
									onclick="fn_url('/traning/t03/t35/T35_01_00.jsp'); return false;"
									onmouseover="toggle_gnsover(3,5)"
									onmouseout="toggle_gnsout(3,5)" onfocus="toggle_gnsover(3,5)"
									onblur="toggle_gnsout(3,5)"><img
										src="/images/menu/sum_0305.gif" alt="과제별 상시점검" id="msub_0305" /></a></li>

							</ul>
						</div></li>

					<li><a href="#"
						onclick="fn_url('/traning/t04/t41/T41_08_00.jsp'); return false;"
						onmouseover="toggle_gnbover(4, 'sub')"
						onfocus="toggle_gnbover(4, 'sub')"><img
							src="/images/menu/sum_04.gif" alt="이용환경관리" name="m4" id="m4" /></a>

						<div id="sub4" style="display: none">
							<ul>

								<li><a href="#"
									onclick="fn_url('/traning/t04/t41/T41_08_00.jsp'); return false;"
									onmouseover="toggle_gnsover(4,1)"
									onmouseout="toggle_gnsout(4,1)" onfocus="toggle_gnsover(4,1)"
									onblur="toggle_gnsout(4,1)"><img
										src="/images/menu/sum_0401.gif" alt="기본설정" id="msub_0401" /></a></li>

								<li><a href="#"
									onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;"
									onmouseover="toggle_gnsover(4,2)"
									onmouseout="toggle_gnsout(4,2)" onfocus="toggle_gnsover(4,2)"
									onblur="toggle_gnsout(4,2)"><img
										src="/images/menu/sum_0402.gif" alt="부가설정" id="msub_0402" /></a></li>

								<li><a href="#"
									onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;"
									onmouseover="toggle_gnsover(4,3)"
									onmouseout="toggle_gnsout(4,3)" onfocus="toggle_gnsover(4,3)"
									onblur="toggle_gnsout(4,3)"><img
										src="/images/menu/sum_0403.gif" alt="기관계좌관리" id="msub_0403" /></a></li>

							</ul>
						</div></li>

				</ul>
			</div>

			<script type="text/javascript">
				var tmenug = new Array();
				var tmenus = new Array();

				tmenug[1] = "sum_01.gif";
				tmenus[1] = new Array();

				tmenus[1][1] = "sum_0101.gif";

				tmenus[1][2] = "sum_0102.gif";

				tmenus[1][3] = "sum_0103.gif";

				tmenus[1][4] = "sum_0105.gif";

				tmenug[2] = "sum_02.gif";
				tmenus[2] = new Array();

				tmenus[2][1] = "sum_0201.gif";

				tmenus[2][2] = "sum_0202.gif";

				tmenus[2][3] = "sum_0203.gif";

				tmenus[2][4] = "sum_0204.gif";

				tmenug[3] = "sum_03.gif";
				tmenus[3] = new Array();

				tmenus[3][1] = "sum_0301.gif";

				tmenus[3][2] = "sum_0302.gif";

				tmenus[3][3] = "sum_0303.gif";

				tmenus[3][4] = "sum_0304.gif";

				tmenus[3][5] = "sum_0305.gif";

				tmenug[4] = "sum_04.gif";
				tmenus[4] = new Array();

				tmenus[4][1] = "sum_0401.gif";

				tmenus[4][2] = "sum_0402.gif";

				tmenus[4][3] = "sum_0403.gif";

				tmenus[4][4] = "jeonm_0406.gif";
				
			</script>
		</div>
		<!-- //main menu end// -->
	</div>
</div>