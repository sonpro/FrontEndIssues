<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_27_10.jsp
 *   Description        : 기타증빙가능비목
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ========================================================================================
 *   2013.12.19                     예기해             최초작성
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

<title>기타증빙가능비목 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">기타증빙가능비목</p>
        </div>
        <!-- //head title// --> 
    </div>

<div id="body">
  <!-- content start -->
  <div id="content">
    <!-- 탭버튼 -->
    <div class="t20 b10">
      <div class="tab_line"> 
      <a href="T01_27_20.jsp" class="bt_tab_proof" title="2014년 5월 이후">2014년 5월 이후</a>
      <a href="T01_27_10.jsp" class="bt_tab_fix" title="2014년 4월까지">2014년 4월까지</a> 
      <a href="T01_27_00.jsp" class="bt_tab_proof" title="2013년 3월까지">2013년 3월까지</a>  
      </div>
    </div>
    <!-- //탭버튼//-->
    <!--((신)기타증빙 가능비목 가이드 start -->
    <div class="pop_wh">
       <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="(신)기타증빙 가능비목 상세표" class="tbl_type04">
            <caption>
              (신)기타증빙 가능비목 상세표
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
                <th scope="col">기타증빙</th>
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
                <td class="ac">불가능</td>
              </tr>
              <tr>
                <td class="ac">시험분석료</td>
                <td class="ac">불가능</td>
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
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">복사비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">수수료</td>
                <td class="ac">가능</td>
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
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">도서&middot;문헌구입비</td>
                <td class="ac">가능</td>
              </tr>  
              <tr>
                <td class="ac">교육훈련비</td>
                <td class="ac">가능</td>
              </tr>
                          
              <tr>
                <td class="ac">회의및 교육&middot;세미나개최비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">기술도입비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">특허정보조사비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">정보DB및 네트워크사용료</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">학회&middot;세미나참가비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">컨설팅비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">전문가활용비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">원고료</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">통역료</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">속기료</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">연구인력활용비</td>
                <td class="ac">가능</td>
              </tr>
              <tr>
                <td class="ac">세무과제관리비</td>
                <td class="ac">가능</td>
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
    <!-- //(신)기타증빙 가능비목 가이드 end// -->
</div>
  <!-- //content end// -->
</div>  



<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 
