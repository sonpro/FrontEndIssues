<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_08_10.jsp
 *   Description        : 자계좌이체 허용기준 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==================================================================================
 *   2013.12.23                     예기해                 
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
      <a href="T01_08_20.jsp" class="bt_tab_proof" title="2014년 5월 이후">2014년 5월 이후</a>
      <a href="T01_08_10.jsp" class="bt_tab_fix" title="2014년 4월까지">2014년 4월까지</a> 
      <a href="T01_08_00.jsp" class="bt_tab_proof" title="2013년 3월까지">2013년 3월까지</a> 
      </div>
    </div>
    <!-- //탭버튼//-->
    <!--(신)자계좌이체 허용기준 가이드 start -->
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
                <td rowspan="47" class="ac">직접비</td>
                <td class="ac">인건비</td>
                <td class="ac">인건비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">학생인건비</td>
                <td class="ac">학생인건비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td rowspan="17" class="ac">연구시설&middot;장비 및 재료비</td>
                <td class="ac">연구시설&middot;장비구입비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">연구시설&middot;장비설치비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">연구시설&middot;장비임차비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">연구시설&middot;장비사용비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">연구시설&middot;장비운영비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">건축비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">부지매입비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">부지조성비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">부지임차비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">건물구입비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">건물임차비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">시약&middot;재료구입비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">시험분석료</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">전산처리&middot;관리비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">시작품제작비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">시제품제작비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">시험설비제작비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td rowspan="22" class="ac">연구활동비</td>
              </tr>
              <tr>
                <td class="ac">국외여비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">인쇄비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">복사비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">수수료</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">공공요금&middot;세금</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">비품구입비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">기술정보수집비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">도서&middot;문헌구입비</td>
                <td class="ac">불가능</td>
              </tr>  
              <tr>
                <td class="ac">교육훈련비</td>
                <td class="ac">불가능</td>
              </tr>
                          
              <tr>
                <td class="ac">회의및 교육&middot;세미나개최비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">기술도입비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">특허정보조사비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">정보DB및 네트워크사용료</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">학회&middot;세미나참가비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">컨설팅비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">전문가활용비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">원고료</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">통역료</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">속기료</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">연구인력활용비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">세무과제관리비</td>
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td rowspan="5" class="ac">연구과제추진비</td>
                <td class="ac">국내여비 시내교통비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">사무용품비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td height="33" class="ac">연구환경유지비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">회의비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">야근식대</td>
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
                <td class="ac">간접비</td>
                <td class="ac">가능</td>
              </tr>
            </tbody>
          </table>
    </div>
    <!-- //(신)자계좌이체 허용기준 가이드 end// -->
    <p class="t10 txt_or b b20">※ 상황별 허용 : 허용비목, 외자구매, 협약전사용금액, 연구비잔액부족, 지체보상금제외이체, 지로직접납부, 자계좌이체 승인기관, 연구지원전문가 인건비(간접비)</p>
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
            <td rowspan="13" class="ac">비목별 허용</td>
            <td rowspan="13" class="ac">자계좌이체<br />허용비목</td>
            <td class="ac">내부인건비</td>
            <td rowspan="3">자계좌이체 후 관련규정 및 내부기준에 따라 지급</td>
          </tr>
          <tr>
            <td class="ac">외부인건비</td>
          </tr>
          <tr>
            <td class="ac">연구수당</td>
          </tr>
          <tr>
            <td class="ac">간접비</td>
            <td>비영리기관인 경우만 해당</td>
          </tr>
          <tr>
            <td class="ac">국내여비<br />(시내교통비)</td>
            <td rowspan="2">자계좌이체 후 관련규정 및 내부기준에 따라 지급</td>
          </tr>
          <tr>
            <td class="ac">국외여비</td>
          </tr>
          <tr>
            <td class="ac">전문가활용비</td>
            <td>원천징수 발생에 따라 자계좌이체 허용</td>
          </tr>
          <tr>
            <td class="ac">공공요금 · 세금</td>
            <td rowspan="5">일괄구매로 집행된 경우에 한해 허용하며 관련 증빙 필수</td>
          </tr>
          <tr>
            <td class="ac">사무용품비</td>
          </tr>
          <tr>
            <td class="ac">복사비</td>
          </tr>
          <tr>
            <td class="ac">비품구입비</td>
          </tr>
          <tr>
            <td class="ac">시약 · 재료구입비</td>
            </tr>
          <tr>
            <td class="ac">시험분석료</td>
            <td>공인시험분석서를 발행하는 비영리기관에 한해 자체 시험분석 소요경비 인정</td>
          </tr>
          <tr>
            <td rowspan="6" class="ac">상황별 허용</td>
            <td class="ac">외자구매</td>
            <td class="ac">전체 비목</td>
            <td>환율변화 등을 고려하여 원화로 자계좌이체 후 지급가능</td>
          </tr>
          <tr>
            <td class="ac">협약전사용금액</td>
            <td class="ac">전체 비목</td>
            <td>사업기간 내, 연구비 지급 이전에 사용한 내역에 대한 사후처리 가능</td>
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
            <td>지로 납부로 인해 직접 이체가 곤란한 경우 자계좌 이체 가능</td>
          </tr>
          <tr>
            <td class="ac">연구지원전문가<br />인건비</td>
            <td class="ac">간접비</td>
            <td>연구지원전문가 과정을 수료한 인력의 인건비</td>
          </tr>
          <tr>
            <td  class="ac">기타</td>
            <td class="ac">자계좌이체<br />승인기관</td>
            <td class="ac">전체 비목</td>
            <td>그 외 전담기관의 과제담당 사업부서에서 사유를 검토하고 타당하다고 인정한 경우(이 경우 모든 등록건에 대해서 타 계좌 이체는 허용안됨)</td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //상황별 허용 리스트 리스트 end// -->
    <!-- 증빙구분 start -->
    <div class="t20"></div>
    <div class="pop_line_gbox">
      <div class="pop_line_gboxc">
      <ul>
        <li>증빙구분: 전자세금계산서증빙, 카드증빙, 기타증빙</li>
        <li>자계좌이체: 전담기관인 사업비계좌에서 연구기관 연구비계좌로 연구개발비 이체 후 연구기관에서 출금하여 사용하는 경우</li>
        <li>타계좌이체: 전담기관의 사업비계좌에서 연구기관 연구비계좌로 입금됨과 동시에 거래처 계좌로 출금됨(거래투명성확보)</li>
      </ul>
      <p class="txt_or">* RCMS에서는 거래투명성 확보를 위하여 자계좌이체케이스를 증빙구분 및 비목에 따라 제한적으로 허용합니다.</p>    
      </div>
    </div>
    <!-- //증빙구분 end// -->    
    </div>
  <!-- //content end// -->
</div>


<!-- //content end// -->

<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 
