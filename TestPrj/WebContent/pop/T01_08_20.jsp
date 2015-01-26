<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_08_00.jsp
 *   Description        : 자계좌이체 허용기준 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==================================================================================
 *   2014. 7. 3 		                  유선진				최초작성                 
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

<title>자계좌이체 허용기준 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">자계좌이체 허용기준</p>
        </div>
        <!-- //head title// --> 
    </div>

        <div id="body">
  <!-- content start -->
  <div id="content">
    <!-- 탭버튼 -->
    <div class="t20 b10">
      <div class="tab_line"> 
      <a href="T01_08_20.jsp" class="bt_tab_fix" title="2014년 5월 이후">2014년 5월 이후</a>
      <a href="T01_08_10.jsp" class="bt_tab_proof" title="2014년 4월까지">2014년 4월까지</a> 
      <a href="T01_08_00.jsp" class="bt_tab_proof" title="2013년 3월까지">2013년 3월까지</a> 
      </div>
    </div>
    <!-- //탭버튼//-->
    <!-- (구)자계좌이체 허용기준 가이드 start -->
	<div class="pop_wh">
       <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="(신)자계좌이체 허용기준 상세표" class="tbl_type04">
            <caption>
              (신)자계좌이체 허용기준 상세표
            </caption>
            <colgroup>
              <col width="" />
              <col width="" />
              <col width="" />
              <col width="" />
            </colgroup>
            <thead>
              <tr>
                <th scope="col">비목</th>
                <th scope="col">세목</th>
                <th scope="col">세세목</th>
                <th scope="col">자계좌이체</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td rowspan="14" class="ac">직접비</td>
                <td rowspan="3" class="ac">인건비</td>
                <td class="ac">내부인건비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">외부인건비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">학생인건비</td>
                <td class="ac">가능</td>
              </tr>
             <tr>
                <td class="ac">연구수당</td>
                <td class="ac">연구수당</td>
                <td class="ac">가능</td>
              </tr>
                <tr>
                <td class="ac">간접비</td>
          
                <td class="ac">간접비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td rowspan="7" class="ac">연구활동비</td>
              </tr>
              <tr>
                <td class="ac">국외여비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">전문가활용비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">공공요금&middot;세금</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">복사비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">비품구입비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">시험분석료</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td rowspan="2" class="ac">연구과제추진비</td>
                <td class="ac">국내여비 시내교통비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">사무용품비</td>
                <td class="ac">가능</td>
              </tr>
            </tbody>
          </table>
    </div>
    <!-- //(신)자계좌이체 허용기준 가이드 end// -->
   <div class="t20"></div>
    <h3>상황별 허용</h3>
    <!-- 상황별 허용 리스트 리스트 start -->
    <div class="t10 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="상황별 허용 리스트" class="tbl_type04">
        <caption>
상황별 허용 리스트
        </caption>
        <colgroup>
        <col width="20%"/>
        <col width="16%" span="2"/>
        <col width="*"/>
        </colgroup>
        <thead>
          <tr>
            <th scope="col">집행종류구분</th>
            <th scope="col" >내용</th>
            <th scope="col" >해당비목(세세목)</th>
            <th scope="col">비고</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td rowspan="6" class="ac">상황별 허용</td>
            <td class="ac">외자구매</td>
            <td class="ac">전체 비목</td>
            <td>환율변화 등을 고려하여 원화로 자계좌이체 후 지급가능</td>
          </tr>
          <tr>
            <td class="ac">협약전사용금액</td>
            <td class="ac">전체 비목</td>
            <td>사업기간 내, 연구비 지급 이전에 사용한 내역에 대한 사후처리 가능(단, 법인명의의 계좌이체 또는 법인카드 사용 원칙)</td>
          </tr>
          <tr>
            <td class="ac">연구비 잔액부족</td>
            <td class="ac">전체 비목</td>
            <td>연구비 잔액이 부족하여 내부 자금과 함계 사용할 경우 해당 연구비의 자계좌이체 가능</td>
          </tr>
          <tr>
            <td class="ac">지체보상금 제외<br />이체</td>
            <td class="ac">전체 비목</td>
            <td>잔금 지급시 지체보상금을 제외하고 지급할 경우 해당 연구비의 자계좌 이체 가능</td>
          </tr>
          <tr>
            <td class="ac">지로 직접납부</td>
            <td class="ac">전체비목</td>
            <td>지로 납부로 인해 직접 이체가 곤란한 경우 자계좌 이체 가능(수행기관 내부 자금 사용 후 사업비 계좌에서 해당 계좌로 계좌이체 사용)</td>
          </tr>
          <tr>
            <td class="ac">연구지원전문가<br />인건비</td>
            <td class="ac">간접비<br />(인력지원비)</td>
            <td>중소·중견기업이 신규채용을 통해 해당 과제에 참여시키는 연구지원전문가 인건비가 사업계획서에 산정되어 있는 경우</td>
          </tr>
          <tr>
            <td  class="ac">기타</td>
            <td class="ac">자계좌이체<br />승인기관</td>
            <td class="ac">전체 비목</td>
            <td>그 외 전담기관의 과제담당 사업부서에서 사유를 검토하고 타당하다고 인정한 경우(이 경우 모든 등록건에 대해서 타계좌 이체는 허용안됨)</td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //증빙구분 end// -->    
  </div>
  <!-- //content end// -->
</div>


<!-- //content end// -->

<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 
