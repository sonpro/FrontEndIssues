<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_01_00.jsp
 *   Description        : 기업기본정보 조회
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29     				예기해        		
 *
 *  @author 예기해
 *  @Since  2013. 10. 29
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>

<!-- //head start -->
<%@ include file="/inc/jspHead.jsp" %>
<!-- //head end -->

<title>기업기본정보 조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body class="line">
<script type="text/javascript">
    //PrintObjectTag();
    PrintObjectTag_c();
    PutBannerUrl();
</script>
<script type="text/javascript" src="http://ck.softforum.co.kr/CKKeyPro/rcms/CKKeyPro3.js"></script>

<!---_BEGIN_ENC_--->

<form name='xecure'><input type=hidden name='p'></form>
<ul id="accessibility">
    <li><a href="#header">주메뉴바로가기</a></li>
    <li><a href="#contaniner">컨텐츠바로가기</a></li>
    <li><a href="#footer">하단바로가기</a></li>
</ul>
<hr/>
<noscript><p id="warning_script">자바스크립트가 동작하지 않을 시 디자인이 정상적으로 보이지 않을 수 있습니다.</p></noscript>
<div id="wrapper">

    <!-- //header topMenu start// -->
	<%@ include file="/inc/topMenu.jsp" %>
    <!-- //header topMenu end// -->
    
    <!-- contaniner start -->
    <div id="contaniner">
        <!-- left start -->
        <div class="snb">
            <!-- left menu start -->
            




                    <div><img src="/images/pefo/sub_navt4.gif" alt="이용환경관리" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t04/t41/T41_01_00.jsp'); return false;" class="menu_txt_on">기본설정</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_01_00.jsp'); return false;" class="menu_3dep_on">기업기본정보 조회</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_02_00.jsp'); return false;" class="menu_3dep">회원정보 조회</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_08_00.jsp'); return false;" class="menu_3dep">협약정보 확인</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_04_00.jsp'); return false;" class="menu_3dep">펌뱅킹 이용신청</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_03_00.jsp'); return false;" class="menu_3dep">과제별 권한 관리</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_05_00.jsp'); return false;" class="menu_3dep">이체비밀번호 등록</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_06_00.jsp'); return false;" class="menu_3dep">연구비카드사 등록</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_07_00.jsp'); return false;" class="menu_3dep">연구비카드 과제 등록</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_txt">부가설정</a></div>

                                <ul>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">자주쓰는 사업자</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">자주쓰는 입금계좌</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">기관별 권한관리</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">지방비분리회계관리</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_txt">기관계좌관리</a></div>

                                <ul>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">인건비성 지급계좌 설정</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">자계좌이체용 계좌 설정</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">카드결제 지정계좌 설정</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>

                        </div>
                    </div>
                    <div><img src="/images/pefo/subm_bg2.gif" alt="" /></div>

            <!-- //left menu end// -->
            
        </div>
        <!-- //left end// -->


        <form name="frm" method="post">
        <!-- content start -->
        <div id="content">
            <!-- pagenav start -->
            



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u41_01_00_t.gif" alt="기업기본정보 조회"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>이용환경관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " />기본설정</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">기업기본정보 조회</span></li>
						
                    </ul>
                </div>
            </div>                
            <!-- //pagenav end// -->
            <div class="t20"></div>
            <h3>기본정보</h3>      
            <!-- 기본정보 start -->
            <div class="t10 b15">
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="기본정보" class="tbl_type02">
                <caption>기본정보</caption>
				<colgroup>
					<col width="25%" />
					<col width="30%" />
					<col width="20%" />
					<col width="25%" />
				</colgroup>
				<tbody>
				<tr>
					<th scope="row">사업체구분</th>
					<td colspan="3" class="ll">중소기업(벤처)</td>
				</tr>
				<tr>
					<th scope="row">법인번호/주민등록번호</th>
					<td colspan="3" class="ll">110111-1731135</td>
				</tr>
				<tr>
					<th scope="row">본사/지사구분</th>
					<td colspan="3" class="ll"></td>
				</tr>
				<tr>
					<th scope="col">사업자번호</th>
					<td>111-11-11111</td>
					<th scope="col">사업체명</th>
					<td class="ll">㈜RCMS</td>
				</tr>
				<tr>
					<th scope="col">전화번호</th>
					<td>02-784-1690</td>
					<th scope="col">FAX번호</th>
					<td class="ll">02-700-0000</td>
				</tr>
				<tr>
					<th scope="col">기업상태</th>
					<td>정상</td>
					<th scope="col">과세유형</th>
					<td class="ll">일반</td>
				</tr>
				</tbody>
				</table>
            </div>
            <!-- //기본정보 end// --> 
            <h3>인건비내역</h3>      
            <!-- 인건비내역 start -->
            <div class="t10">
				<table width="704" border="0" cellspacing="0" cellpadding="0" summary="인건비내역" class="tbl_type02">
				<caption>인건비내역</caption>
				<colgroup>
					<col width="25%" />
					<col width="30%" />
					<col width="20%" />
					<col width="25%" />
				</colgroup>
				<tbody>
				<tr>
					<th scope="row">사업체주소</th>
					<td colspan="3" class="ll">서울 영등포구 여의도동 KB타워 00층 ㈜RCMS</td>
				</tr>
				<tr>
					<th scope="row">홈페이지주소</th>
					<td colspan="3" class="ll">www.webcash.co.kr</td>
				</tr>
				<tr>
					<th scope="row">설립일자</th>
					<td colspan="3" class="ll">1999-07-09</td>
				</tr>
				<tr>
					<th scope="col">업태</th>
					<td>서비스업</td>
					<th scope="col">업종</th>
					<td class="ll">소프트웨어 개발,자문</td>
				</tr>
				<tr>
					<th scope="row">공장등록여부</th>
					<td colspan="3" class="ll">미등록</td>
				</tr>
				<tr>
					<th scope="col">연건평</th>
					<td>0 평</td>
					<th scope="col">대지</th>
					<td class="ll">0 평</td>
				</tr>
				<tr>
					<th scope="col">연구소설립여부</th>
					<td>Y</td>
					<th scope="col">부설연구소설립일</th>
					<td class="ll">2003-03-27</td>
				</tr>
				<tr>
					<th scope="col">벤처기업여부</th>
					<td></td>
					<th scope="col">사업체상태</th>
					<td class="ll">정상</td>
				</tr>
				<tr>
					<th scope="col">이노비즈기업여부</th>
					<td></td>
					<th scope="col">경영혁신기업여부</th>
					<td class="ll"></td>
				</tr>
				</tbody>
				</table>
            </div>
            <!-- //인건비내역 end// --> 
        </div>
        <!-- //content end// -->
        </form>
        


    </div>
    <!-- //contaniner end//-->
    <div class="cb"></div>

    <!-- footer start -->
	<%@ include file="/inc/jspFooter.jsp" %>
    <!-- //footer end// -->
    
    <!-- 퀵메뉴 start -->
	<%@ include file="/inc/quickMenu.jsp" %>
    <!-- //퀵메뉴 end// -->

</div><!-- wrapper end -->





</body>
</html>