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
<script type="text/javascript">
function uf_setCookie(){
    var todate = new Date().getDate();
    setCookieTraning("RCMS0131", currentNowDate, "1");
    self.close();
}
</script>
<title>비목별 사용내역 조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">비목별 사용내역 조회</p>
        </div>
        <!-- //head title// --> 
    </div>

    <div id="body"> 
  <!-- content start -->
  <div id="content">
   <p class="pop_text t20">사업비 산정, 관리 및 사용, 정산에 관한 요령 <strong>제11조 11항 및 제17조 8항</strong>에 따라 직접비 중 연구과제추진비로 사용한 금액에 대해서는 정산하지 아니하는 것을 원칙으로 합니다. 다만 필요한 경우 사용내역을 확인할 수 있으며, 불인정 사유 발생시 환수할 수 있습니다. 또한 최초협약예산을 초과하여 집행할 수 없으며 실제 사용금액에 대한 증빙자료를 자체적으로 보관하여야 합니다. </p>
   <p class="pop_text t10">따라서, 연구과제추진비는 RCMS에서 분기별로 해당금액을 이체하여 사용할 수 있으며 아래와 같은 <span class="txt_or b">연구과제추진비 사용목록 서식 및 그에 따른 각 항목별 증빙서류를 보관하고 있다가 전담기관의 요청이 있을시 제출</span>하여야 합니다. (수행기관이 원할 경우 타 비목과 동일하게 모든 사용건별로 RCMS를 통하여 사용 및 증빙을 등록하는 것도 가능합니다. 이때에는 아래 연구과제추진비 사용목록을 따로 관리하실 필요는 없습니다.) </p>
   <p class="pop_title01">연구과제추진비 사용목록 서식(필수항목)</p>
    <!-- 연구과제추진비 이체시 수행기관 안내 start -->
    <div class="t10 b10 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="연구과제추진비 이체시 수행기관 안내" class="tbl_type04">
        <caption>
        비목별 사용내역 조회
        </caption>
        <colgroup>
        <col width="" />
        <col width="" />
        <col width="" />
        <col width="" />
        <col width="" />
        <col width="" />
        <col width="" />
        </colgroup>
        <thead>
          <tr>
            <th scope="row" rowspan="2">집행일</th>
            <th scope="row" rowspan="2">지급처</th>
            <th scope="row" colspan="3">집행액</th>
            <th scope="row" rowspan="2">사용목적</th>
            <th scope="row" rowspan="2">사용구분</th>
          </tr>
          <tr>
            <th scope="row">공급가액</th>
            <th scope="row">부가세</th>
            <th scope="row">집행액(RCMS청구액)</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </tbody>
      </table> 
    </div>
    <!-- //연구과제추진비 이체시 수행기관 안내 end// -->
     <ul class="text_list">
       <li>사용구분에 국내여비, 시내교통비, 사무용품비, 연구환경유지비, 회의비, 식대로 구분하여 기재</li>
       <li>집행액(RCMS청구액)은 영리기관일 경우 공급가액을, 비영리기관일 경우 공급가액과 부가세의 합계로 기재</li>
       <li>분기별 연구과제추진비 사용목록 서식은 분기별 연구과제추진비 이체의 증빙으로 등록 요망</li>
       <li>상기 서식외에 필요시 추가적인 항목 기재 가능하며 자정이후 사용 항목 및 클린카드 사용제외 항목은 집행 항목으로 등록할 수 없음</li>
     </ul>
  </div>
  <!-- //content end// -->
    </div>
<div class="ar">
    <input id="Today" type="checkbox" onclick="uf_setCookie();"/>
    <label for="Today" onclick="uf_setCookie();">오늘은 더이상 창을 열지 않습니다.</label>
</div>



<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 
