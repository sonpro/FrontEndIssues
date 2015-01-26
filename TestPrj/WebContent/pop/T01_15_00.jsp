<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_25_00.jsp
 *   Description        : 카드내역 상세조회 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.30                     예기해             
 *
 *  @author     예기해 
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

<title>카드내역 상세조회 &gt; RCMS 실시간통합연구비관리시스템 C-1 </title>
</head>
<body>
 
	<div id="head"> 
	    <!-- head title -->
	    <div class="title">
	        <p class="pop_title">카드내역 상세조회</p>
	    </div>
	    <!-- //head title// --> 
	</div>

        <div id="body"> 
            <form name="frm" method="post">
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>카드내역상세</h3>
                <!-- 카드내역 상세 정보 start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="카드내역상세정보" class="tbl_type02">
                    <caption>카드내역상세정보</caption>
					<colgroup>
						<col width="25%" />
						<col width="75%" />
					</colgroup>
					<tbody>
					<tr>
						<th scope="row">카드번호</th>
						<td colspan="2" class="ll">1111-2222-3333-4444</td>
					</tr>
					<tr>
						<th scope="row">카드사</th>
						<td colspan="2" class="ll">A 카드</td>
					</tr>
					<tr>
						<th scope="row">유효기간</th>
						<td colspan="2" class="ll">2099/10</td>
					</tr>
					<tr>
						<th scope="row">결제은행</th>
						<td colspan="2" class="ll">A 은행</td>
					</tr>
					<tr>
						<th scope="row">결제계좌번호</th>
						<td colspan="2" class="ll">100-00-000000</td>
					</tr>
					<tr>
						<th scope="row">결제일</th>
						<td colspan="2" class="ll">27</td>
					</tr>
					<tr>
						<th scope="row">카드구분</th>
						<td colspan="2" class="ll">기업(법인)카드</td>
					</tr>
					<tr>
						<th scope="row">사용자</th>
						<td colspan="2" class="ll">이총괄</td>
					</tr>
					<tr>
						<th scope="row">상태</th>
						<td colspan="2" class="ll">등록완료</td>
					</tr>
					</tbody>
					</table>
                </div>
                <!-- //카드내역 상세 정보 end// --> 
            </div>
            <!-- //content end// -->
            </form>
        </div>



<!-- //content end// -->
<div id="foot"> 
    <!-- pop_footer start -->
    <p class="fl"><img src="/pop/pop_copyright.gif" alt="COPYRIGHT 2012 MKE, KEIT ALL RIGHTS RESERVED."/></p>
    <p class="ar"><a href="#pop" onclick="self.close(); return false;"><img src="/pop/bt_close.gif" alt="닫기"/></a></p>
    <!-- //pop_footer end// --> 
</div>



</body>
</html> 