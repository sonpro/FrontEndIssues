<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_17_00.jsp
 *   Description        : 카드발급 안내 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ========================================================================================
 *   2013.12.16                     예기해             최초작성
 * 
 *  @author 
 *  @Since  
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
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //head end -->

<title>카드발급안내 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">카드발급안내</p>
        </div>
        <!-- //head title// --> 
    </div>
	<form name="frm" method="post">
	        <div id="body"> 
	            <!-- content start -->
	            <div id="content">
	                <div class="t20"></div>
	                <h3>카드발급안내</h3>
	                <!-- 카드내역 상세 정보 start -->
	                <div class="t10 b20 pop_wh">
	                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="카드발급안내 리스트 " class="tbl_type04">
	                    <caption>카드발급안내 리스트</caption>
	                    <colgroup>
	                        <col width="20%" />
	                        <col width="15%" />
	                        <col width="20%" />
	                        <col width="20%" />
	                        <col width="25%" />
	                    </colgroup>
	                    <thead>
	                    <tr>
	                        <th scope="col">카드사명</th>
	                        <th scope="col">사용여부</th>
	                        <th scope="col">담당자</th>
	                        <th scope="col">연락처</th>
	                        <th scope="col">비고</th>
	                    </tr>
	                    </thead>
	                    <tbody>
	                    <tr>
	                        <td class="ac">롯데카드</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">사원 김성흔</td>
	                        <td class="ac">02-2050-1308</td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">삼성카드</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">과장 박준형</td>
	                        <td class="ac">02-2172-8542</td>
	                        <td class="ac">연구비카드 발급필요</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">외환카드</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">차장 이창휘</td>
	                        <td class="ac">02-3671-1721</td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">IBK기업은행(BC)</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">전담 콜센터</td>
	                        <td class="ac">1588-2588<br />내선517</td>
	                        <td class="ac"><a href="#dummy" onclick="uf_frmNewWinNs(document.frm, '/jsp/pop/issu_gud_corp_crd.jsp', 'ISSU_CRD_CORP_POP', 526, 584);">[발급안내]</a></td>
	                    </tr>
	                    <tr>
	                        <td class="ac">경남은행(BC)</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">팀장 한동명</td>
	                        <td class="ac">055-290-8546</td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">대구은행(BC)</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">과장 최정훈</td>
	                        <td class="ac">053-740-2283</td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">부산은행(BC)</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">과장 신성희</td>
	                        <td class="ac">051-620-3858</td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">씨티은행(BC)</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">수석 이태랑</td>
	                        <td class="ac">02-3455-2096</td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">우리은행(BC)</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">영업점 문의</td>
	                        <td class="ac"></td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">하나카드</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">콜센터</td>
	                        <td class="ac">1599-1155</td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">하나SK카드(BC)</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">콜센터</td>
	                        <td class="ac">1599-1155</td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">현대카드</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">영업점문의</td>
	                        <td class="ac"></td>
	                        <td class="ac">연구비카드 발급필요</td>
	                    </tr>
	<!--                <tr>
	                        <td class="ac">KB국민은행(BC)</td>
	                        <td class="ac">준비중</td>
	                        <td class="ac">차장 나섭</td>
	                        <td class="ac">02-2073-0174</td>
	                        <td class="ac"></td>
	                    </tr> -->
	                    <tr>
	                        <td class="ac">NH농협</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">콜센터</td>
	                        <td class="ac">1644-4000</td>
	                        <td class="ac">연구비카드 발급필요</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">NH농협(BC)</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">과장 권혁찬</td>
	                        <td class="ac">02-2129-8943</td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">SC제일은행(BC)</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">차장 김종필</td>
	                        <td class="ac">02-3702-4766</td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">신한카드</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">전담 콜센터</td>
	                        <td class="ac">1566-0369</td>
	                        <td class="ac">연구비카드 발급필요</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">광주은행카드</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">차장 손영진</td>
	                        <td class="ac">062-239-6145</td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">전북은행카드</td>
	                        <td class="ac">가능</td>
	                        <td class="ac">차장 김영근</td>
	                        <td class="ac">063-250-7749</td>
	                        <td class="ac">기존법인카드 사용가능</td>
	                    </tr>
	                    </tbody>
	                    </table>
	                </div>
	                <!-- //카드내역 상세 정보 end// --> 
	            </div>
	        </div>
	</form>


<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 
