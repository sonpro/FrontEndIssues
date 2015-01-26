<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T24_01_00.jsp
 *   Description        : 부가세 복원요청
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29                   예기해             
 *
 *  @author 예기해
 *  @Since  2014. 01. 16
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

<title>부가세 복원요청 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body class="line">

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
           
                    <div><img src="/images/pefo/sub_navt2.gif" alt="연구비복원" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t02/t21/T21_01_00.jsp'); return false;" class="menu_txt">요청내역조회</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t02/t21/T21_01_00.jsp'); return false;" class="menu_3dep">요청내역조회</a></li>
                        
                                </ul>
                                <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_txt">연구비이체취소 요청</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_3dep">연구비이체취소 요청</a></li>
                        
                                </ul>
                                <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t02/t23/T23_01_00.jsp'); return false;" class="menu_txt">카드결제복원요청</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t02/t23/T23_01_00.jsp'); return false;" class="menu_3dep">카드결제복원요청</a></li>
                        
                                </ul>
                                <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t02/t24/T24_01_00.jsp'); return false;" class="menu_txt_on">부가세 복원요청</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t02/t24/T24_01_00.jsp'); return false;" class="menu_3dep_on">부가세 복원요청</a></li>
                        
                                </ul>
                                <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>

                        </div>
                    </div>
                    <div><img src="/images/pefo/subm_bg2.gif" alt="" /></div>

            <!-- //left menu end// -->
            
        </div>
        <!-- //left end// -->


        <!-- content start -->
        <div id="content">
            <!-- pagenav start -->
           
    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u24_01_00_t.gif" alt="부가세 복원요청"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>연구비복원</li>
                       <li><img src="/images/common/arr.gif" alt=" " />부가세 복원요청</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">부가세 복원요청</span></li>
                        
                    </ul>
                </div>
            </div>                
            <!-- //pagenav end// -->
            <div class="t30"></div>

            <!-- ================== 2014 그리드 교체 작업======================== -->
            <!-- **********************  rMateGrid setting START ***********************  -->
            <script type="text/javaScript">
            //레이아웃 설정(증빙구분 전체)
            var layoutStr_a = "\
            <?xml version=\"1.0\" encoding=\"utf-8\"?>\
            <rMateGrid>\
                <NumberFormatter id=\"numfmt\" />\
                <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
                <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
                <DataGrid id=\"dg1\" lockedColumnCount=\"2\"  styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
                    <columns>\
                        <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                        <DataGridSelectorColumn id=\"selector\"     dataField=\"selector\"          headerText=\"선택\"                   width=\"50\" visible=\"true\" textAlign=\"center\" allowAllSelection=\"false\" allowMultipleSelection=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"EXCTN_EXEC_DT\"       dataField=\"EXCTN_EXEC_DT\"           headerText=\"사용일자/결재일자\"      width=\"130\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"VAT_PROC_DV_NM\"      dataField=\"VAT_PROC_DV_NM\"          headerText=\"부가세복원여부\"         width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"VAT_PROC_DV\"         dataField=\"VAT_PROC_DV\"             headerText=\"부가세복원여부코드\"     width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"TRNS_AMT\"            dataField=\"TRNS_AMT\"                headerText=\"이체금액/매입합계\"      width=\"130\"  visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"            headerText=\"공급금액\"               width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"             headerText=\"부가가치세액\"           width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"    dataField=\"RTRT_FIX_VAT_AMT\"        headerText=\"복원부가가치세액\"       width=\"110\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"TRSC_EVDC_DV\"        dataField=\"TRSC_EVDC_DV\"            headerText=\"증빙구분\"               width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_TYP_DV_NM\"      dataField=\"RTRT_TYP_DV_NM\"          headerText=\"최종복원유형구분\"       width=\"110\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_ST_NM\"          dataField=\"RTRT_ST_NM\"              headerText=\"복원상태\"               width=\"110\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RCV_ACCT_BNK_CD_NM\"  dataField=\"RCV_ACCT_BNK_CD_NM\"      headerText=\"입금은행\"               width=\"80\"   visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RCV_ACCT_NO\"         dataField=\"RCV_ACCT_NO\"             headerText=\"입금계좌번호\"           width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RCV_ACCT_OWAC_NM\"    dataField=\"RCV_ACCT_OWAC_NM\"        headerText=\"수취인\"                 width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"TRSC_PFMC_ST\"        dataField=\"TRSC_PFMC_ST\"            headerText=\"사용상태\"               width=\"110\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"BUY_DT\"              dataField=\"BUY_DT\"                  headerText=\"매입일자\"               width=\"80\"   visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"CRD_NO\"              dataField=\"CRD_NO\"                  headerText=\"카드번호\"               width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"BUY_CLCT_NO\"         dataField=\"BUY_CLCT_NO\"             headerText=\"매입번호\"               width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"SPLR_CO_NM\"          dataField=\"SPLR_CO_NM\"              headerText=\"가맹점명\"               width=\"150\"  visible=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_TYP_DV\"         dataField=\"RTRT_TYP_DV\"             headerText=\"복원유형구분\"           width=\"0\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_ST\"             dataField=\"RTRT_ST\"                 headerText=\"복원상태코드\"           width=\"0\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"GRIDKEY\"             dataField=\"GRIDKEY\"                 headerText=\"GRIDKEY\"                width=\"0\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                    </columns>\
                     <footers>\
                     <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{EXCTN_EXEC_DT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\"     formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                     </DataGridFooter>\
                 </footers>\
                </DataGrid>\
                <Style>\
                .gridStyle { alternatingItemColors: 0xFFFFFF,0xFFFFFF; headerColors: 0xE3E9F1,0xE3E9F1; \
                fontFamily: 돋움; fontSize: 12; color: 0x000000; \
                horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
                verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
                selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
                .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
                .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
                </Style>\
            </rMateGrid>\
            ";
            
            
            //레이아웃 설정(증빙구분 전자세금계산서/기타증빙)
            var layoutStr = "\
            <?xml version=\"1.0\" encoding=\"utf-8\"?>\
            <rMateGrid>\
              <NumberFormatter id=\"numfmt\" />\
              <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
              <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
              <DataGrid id=\"dg1\" lockedColumnCount=\"2\"  styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
                    <columns>\
                        <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                        <DataGridSelectorColumn id=\"selector\"     dataField=\"selector\"          headerText=\"선택\"                       width=\"50\" visible=\"true\" textAlign=\"center\" allowAllSelection=\"false\" allowMultipleSelection=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"EXCTN_EXEC_DT\"       dataField=\"EXCTN_EXEC_DT\"           headerText=\"사용일자\"              width=\"80\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"VAT_PROC_DV_NM\"      dataField=\"VAT_PROC_DV_NM\"          headerText=\"부가세복원여부\"         width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"TRNS_AMT\"            dataField=\"TRNS_AMT\"                headerText=\"이체금액\"              width=\"100\"  visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"    formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"            headerText=\"공급금액\"               width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"             headerText=\"부가가치세액\"           width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"TRSC_EVDC_DV\"        dataField=\"TRSC_EVDC_DV\"            headerText=\"증빙구분\"               width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"TRSC_PFMC_ST\"        dataField=\"TRSC_PFMC_ST\"            headerText=\"사용상태\"               width=\"110\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_TYP_DV_NM\"      dataField=\"RTRT_TYP_DV_NM\"          headerText=\"최종복원유형구분\"       width=\"120\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_ST_NM\"          dataField=\"RTRT_ST_NM\"              headerText=\"복원상태\"               width=\"110\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RCV_ACCT_BNK_CD_NM\"  dataField=\"RCV_ACCT_BNK_CD_NM\"      headerText=\"입금은행\"               width=\"80\"   visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RCV_ACCT_NO\"         dataField=\"RCV_ACCT_NO\"             headerText=\"입금계좌번호\"           width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RCV_ACCT_OWAC_NM\"    dataField=\"RCV_ACCT_OWAC_NM\"        headerText=\"수취인\"                 width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"VAT_PROC_DV\"         dataField=\"VAT_PROC_DV\"             headerText=\"부가세복원여부코드\"     width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_TYP_DV\"         dataField=\"RTRT_TYP_DV\"             headerText=\"복원유형구분\"           width=\"150\"  visible=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_ST\"             dataField=\"RTRT_ST\"                 headerText=\"복원상태코드\"           width=\"150\"  visible=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"GRIDKEY\"             dataField=\"GRIDKEY\"                 headerText=\"GRIDKEY\"                 width=\"150\"  visible=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
                    </columns>\
                     <footers>\
                     <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn label=\"총\" textAlign=\"right\" />\
                         <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\"     formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"     formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{TRSC_PFMC_ST}\"     formatter=\"{numfmt}\" textAlign=\"right\" />\
                   </DataGridFooter>\
               </footers>\
              </DataGrid>\
              <Style>\
              .gridStyle { alternatingItemColors: 0xFFFFFF,0xFFFFFF; headerColors: 0xE3E9F1,0xE3E9F1; \
              fontFamily: 돋움; fontSize: 12; color: 0x000000; \
              horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
              verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
              selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
              .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
              .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
                </Style>\
            </rMateGrid>\
            ";
            
            
            //레이아웃 설정(증빙구분 카드증빙)
            var layoutStr_c = "\
            <?xml version=\"1.0\" encoding=\"utf-8\"?>\
            <rMateGrid>\
                <NumberFormatter id=\"numfmt\" />\
                <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
                <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
                <DataGrid id=\"dg1\" lockedColumnCount=\"2\"  styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
                    <columns>\
                        <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                        <DataGridSelectorColumn id=\"selector\"     dataField=\"selector\"          headerText=\"선택\"                   width=\"50\" visible=\"true\" textAlign=\"center\" allowAllSelection=\"false\" allowMultipleSelection=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"EXCTN_EXEC_DT\"       dataField=\"EXCTN_EXEC_DT\"           headerText=\"결재일자\"              width=\"80\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"TRSC_PFMC_ST\"        dataField=\"TRSC_PFMC_ST\"            headerText=\"결재상태\"              width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"BUY_DT\"              dataField=\"BUY_DT\"                  headerText=\"매입일자\"              width=\"80\"   visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"VAT_PROC_DV_NM\"      dataField=\"VAT_PROC_DV_NM\"          headerText=\"부가세복원여부\"        width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"SUM_AMT\"             dataField=\"SUM_AMT\"                 headerText=\"매입합계\"              width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"            headerText=\"공급금액\"              width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"             headerText=\"부가가치세액\"          width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"    dataField=\"RTRT_FIX_VAT_AMT\"        headerText=\"복원부가가치세액\"      width=\"110\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"RTRT_TYP_DV_NM\"      dataField=\"RTRT_TYP_DV_NM\"          headerText=\"최종복원유형구분\"      width=\"110\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_ST_NM\"          dataField=\"RTRT_ST_NM\"              headerText=\"복원상태\"              width=\"110\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"CRD_NO\"              dataField=\"CRD_NO\"                  headerText=\"카드번호\"              width=\"124\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"BUY_CLCT_NO\"         dataField=\"BUY_CLCT_NO\"             headerText=\"매입번호\"              width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"SPLR_CO_NM\"          dataField=\"SPLR_CO_NM\"              headerText=\"가맹점명\"              width=\"150\"  visible=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"VAT_PROC_DV\"         dataField=\"VAT_PROC_DV\"             headerText=\"부가세복원여부코드\"    width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_TYP_DV\"         dataField=\"RTRT_TYP_DV\"             headerText=\"복원유형구분\"          width=\"150\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_ST\"             dataField=\"RTRT_ST\"                 headerText=\"복원상태코드\"          width=\"150\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"GRIDKEY\"             dataField=\"GRIDKEY\"                 headerText=\"GRIDKEY\"               width=\"150\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                    </columns>\
                     <footers>\
                     <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn label=\"총\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{BUY_DT}\"     formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SUM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                     </DataGridFooter>\
                 </footers>\
                </DataGrid>\
                <Style>\
                .gridStyle { alternatingItemColors: 0xFFFFFF,0xFFFFFF; headerColors: 0xE3E9F1,0xE3E9F1; \
                fontFamily: 돋움; fontSize: 12; color: 0x000000; \
                horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
                verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
                selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
                .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
                .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
                </Style>\
            </rMateGrid>\
            ";
            
            
                //그리드 레이아웃 호출 
                var rMateGridInitLayout = function() {
                    
                    gridApp = FABridge.gridBridge.root();
                    gridRoot = gridApp.getGridRoot();
                    gridApp.setLayout(layoutStr_a);
            
                    //클릭 이벤트 추가
                    var itemClickHandler = function(event) {
                        var rowIndex = event.getRowIndex();
                        var columnIndex = event.getColumnIndex();
                        var dataRow = gridRoot.getItemAt(rowIndex);
            
                        var columns = dataGrid.getColumns();
                        var ii = 0;
                        var jj = 0;
                        for ( var i = 0; i < columns.length; i++){
                            if (columns[i].getVisible()) {              
                                jj++;
                                if (jj == columnIndex){
                                    break;
                                }
                            } else{
                                ii++;
                            }
                        }
                        columnIndex = columnIndex + ii;
                        var column = columns[columnIndex];
                        var dataField = column.getDataField();    
                        
                        //checkbox 선택시 합산
                        if (dataField == "selector") { 
                            uf_Click("");
                        };         
                        
                    };        
                    
                    //더블클릭 상세보기 이벤트 추가
                    var itemDoubleClickHandler = function(event) {
                        
                        var rowIndex = event.getRowIndex();
                        var columnIndex = event.getColumnIndex();
                        var dataRow = gridRoot.getItemAt(rowIndex);
                        var column = dataGrid.getColumns()[columnIndex];
                        var dataField = column.getDataField();
                        
                        layerDetail(dataGrid,dataRow);
                        
                    };
                    
                    
                    //그리드 이벤트 등록
                    var layoutCompleteHandler = function(event) {
                        dataGrid = gridApp.getDataGrid();            
                        
                        //이벤트 등록
                        //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
                        dataGrid.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트 
                    };
            
                    
                    //layout 출력 후 실행될 이벤트 등록
                    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
                    
                    //data 출력 후 실행할 이벤트 등록
                    gridRoot.addEventListener("dataComplete", setTotCnt);   //전체 조회건수 출력
            
                };
            
                //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
                FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);
            
                
                //로딩 후 rMadeGrid 출력
                function rMateGridSetData() {       
                    gridApp = FABridge.gridBridge.root();
                    gridApp.setData(JSON.stringify(gridData)); //데이터 출력
                };
                
              
                //전체 자료수 출력
                function setTotCnt(){
                    $("#InqPrsTotlNcnt").html(getGridRowCount_rMate());
                }
                
            
                //전체선택/해제시
                function gridAllCheck() {       
                    gridAllCheck_rMate(gridRoot);   
                    uf_Click("");   
                }       
                
            </script>
            <!-- **********************  rMateGrid setting END ***********************  -->
            <!-- ================== 2014 그리드 교체 작업======================== -->

            <% 
               boolean isSbjtAutoSchMulti = false;  //과제조회 자동완성 멀티체크기능 true:멀티 false:싱글  
               boolean beSearchBtn        = false;  //조회버튼 생성구분(실행메소드:uf_beSearchBtn();)
            %> 

            <!-- ================== 2014 그리드 교체 작업======================== -->
            <!-- //auto search start -->
            <%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
            <!-- //auto search end -->
            <!-- ================== 2014 그리드 교체 작업======================== -->

 

            <!-------------------------------------------------------------------------------->
            <!--  공통부 끝 -->
            <!-------------------------------------------------------------------------------->
            <div class="cb b10"></div>
            <form name="frm" method="post">
            <input type="hidden" name="ISSU_BNK_CD"         value=""  />                <!-- 가상계좌발급은행코드 -->
            <input type="hidden" name="EXIST_VACC"          value="N" />                <!-- 가상계좌발급여부 -->
            <input type="hidden" name="VrtlAcctNo"          value=""  />                <!-- 가상계좌번호 -->
            <input type="hidden" name="PayPlanDtlsRegNcnt"  value="0" />                <!-- 부가세복원요청건수 -->
            <input type="hidden" name="PlanAmt"             value="0" />                <!-- 부가세복원요청금액 -->
            <input type="hidden" name="PrsPgno"             value="0" />                <!-- 현재페이지번호-->
            <input type="hidden" name="TrSupYn"             value="N" />                <!-- 거래계속여부-->
            <input type="hidden" name="SacPrgrSt"           value="" />                 <!-- 정산진행상태-->
            <input type="hidden" name="SearchOnly"          value="N" />                <!-- 취소부가세조회여부 2012.02.09 유기성 -->
            <input type="hidden" name="SBJT_LIST_SCH_AUTO"  id="SBJT_LIST_SCH_AUTO" value="N" />
            <input type="hidden" name="SBJT_DET_SCH_AUTO"   id="SBJT_DET_SCH_AUTO"  value="Y" />                 
            <input type="hidden" id="gridRowCnt"            value="" />                 <!-- 조회된 건수-->
            
            <!-- 가상계좌발급정보 start -->
                    <h3>가상계좌발급정보</h3>
                    <div class="t10">
                        <table width="704" border="0" cellspacing="0" cellpadding="0"
                            summary="가상계좌발급정보" class="tbl_type03">
                            <caption>가상계좌발급정보</caption>
                            <colgroup>
                                <col width="18%" />
                                <col width="14%" />
                                <col width="13%" />
                                <col width="10%" />
                                <col width="17%" />
                                <col width="15%" />
                                <col width="13%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">가상계좌번호</th>
                                    <th scope="col">발급은행</th>
                                    <th scope="col">발급일자</th>
                                    <th scope="col">상태</th>
                                    <th scope="col">현재사용용도</th>
                                    <th scope="col">입금예정금액</th>
                                    <th scope="col" class="">입금마감일자</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="ac" id="idVrtlAcctNo"></td>
                                    <td class="ac"><input type="hidden" name="ISSU_BNK_CD"
                                        value="" /><span id="idVrtlAcctIssuBnkNm"></span></td>
                                    <td class="ac"><input type="hidden" name="ISSU_DT"
                                        value="" /><span id="idVrtlAcctIssuDt"></span></td>
                                    <td class="ac"><input type="hidden" name="ISSU_ST"
                                        value="" /><span id="idVrtlAcctIssuSt"></span></td>
                                    <td class="ac" id="idPayUsagDv"></td>
                                    <td class="ar" id="idPlanAmt"></td>
                                    <td class="ac" id="idValdEndDt"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- //가상계좌발급정보 end// --> 
            <div class="cb b10"></div>
            <h3>사용내역조회</h3>      
            <!-- 검색단 start -->
            <div class="search">
                <div class="search_boxt"></div>
                <div class="search_boxc">
                    <fieldset>
                        <legend>내역조회 검색</legend>
                        <table width="680" summary="내역조회 검색" class="tbl_search">
                        <caption>내역조회</caption>
                        <colgroup>
                            <col width="12%" />
                            <col width="78%" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="row">증빙구분</th>
                            <td>
                                <select name="sel_TrscEvdcDv" id="sel_TrscEvdcDv" onchange="chg_selBox();">
                                    <option value="" >전체</option>
                                    <option value="T">전자세금계산서</option>
                                    <option value="E">기타증빙</option>
                                    <option value="C">카드증빙</option>
                                </select>                           
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">사용일자</th>
                            <td>
                                <!-------------------------------------------------------------------------------->
                                <!--  날짜선택 시작 -->
                                <!-------------------------------------------------------------------------------->
                                <%@ include file="/inc/set_date_btn.jsp" %>
                                <%@ include file="/inc/set_date_week.jsp" %>      
                                <!-------------------------------------------------------------------------------->
                                <!--  날짜선택 끝 -->
                                <!-------------------------------------------------------------------------------->                             
                            </td>
                        </tr>
                        </tbody>
                        </table>
                    </fieldset>
                </div>
                <div class="search_boxb1"></div>
            </div>
            <div class="cb"></div>
            <!-- //검색단 end// -->
            <!-- 조회 상세조회 버튼 start -->
            <div class="search_bt1 ar">
                <a href="#" class="bt_search" title="조회" onclick="uf_ExecListSearch('S'); return false;"></a>
            </div>
            <!-- //조회 상세조회 버튼 end// -->
            
            <!-- ================== 2014 그리드 교체 작업======================== -->
            <!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->            
            <div class="total_box">
                <p class="fl t05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> 건]</p>
                <p class="fl l05"><a href="#" onclick="gridAllCheck(); return false;"><img src="/images/bt/bt_total.gif" alt="전체선택" valign="top" /></a></p>                
                <p class="fr b03" >
                    <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="인쇄" /></a>  
                    <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="저장" /></a>
                </p>                
                <p class="cb"></p>
            </div>
            
            <div>
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "378", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- 그리드 End -->
            <!-- 상세보기 레이어 팝업 -->
            <div id="layerPopup" style="display:none;z-index:999999;">
                <div id="layerPopupTitle" style="width:355px;height:30px;">
                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="닫기"></a>
                </div>
                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
            </div>
            <!-- *************************  rMateGrid ************************* -->
            <!-- ================== 2014 그리드 교체 작업======================== -->
            
            <!-- 가상계좌발급정보 start -->
            <div>
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="가상계좌발급정보" class="tbl_type03">
                <caption>가상계좌발급정보</caption>
                <colgroup>
                    <col width="25%" />
                    <col width="25%" />
                    <col width="25%" />
                    <col width="25%" />
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">복원요청건수</th>
                    <th scope="col">복원요청금액</th>
                    <th scope="col">공급금액</th>
                    <th scope="col">부가가치세액</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="ac"><span id="reqcnt">0</span></td>
                    <td class="ar"><span id="reqamt">0</span></td>
                    <td class="ar"><span id="reqsplamt">0</span></td>
                    <td class="ar"><span id="reqvatamt">0</span></td>
                </tr>
                </tbody>
                </table>
            </div>
            <!-- //가상계좌발급정보 end// --> 
            <!-- action bt start -->
            <div class="action_bt ar">
                <a href="#" class="bt_action7" title="부가세복원요청" onclick="uf_vat_psvreq(); return false;"><span class="bt_sp1">부가세복원요청</span></a>
            </div>
            <!-- //action bt end// -->
            <!-- 주의사항 start -->
            <div class="guide_box" id="devLastMonth" style="display:block;">
                <p class="guide_boxt"></p>
                <div class="guide_boxc">
                    <ul>
                        <li>카드결제복원 요청으로 인한 부가세금액은 실부가세액에서 카드결제복원 요청분의 부가세만큼 차감된 금액이 계산되어 집니다.</li>
                        <!-- 2014.01.27 강지은팀장님 요청으로 아래 내용 주석처리  
                        <li>카드증빙의 경우 개발기간 종료월에는 비목만 등록하고 결제 되지 않은 내역에 대해서 부가세복원 요청이 가능합니다. 부가세복원 요청하고 입금 후에는 [비목/금액]의 수정 및 삭제가 불가하니 반드시 확인 후 진행 해야 합니다.</li>
                         -->
                    </ul>    
                </div>
                <p class="guide_boxb"></p>
            </div>
            <!-- //주의사항 end// --> 
            </form>
            <!-- 안내 가이드 start -->
            <div class="guide_box1" id="guide">
                <div class="guide_boxt1">
                    <p class="txt_title fl">부가세 복원 요청 안내</p> 
                    <p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
                </div>
                <div class="guide_boxc1">
                    <ul>
                        <li>부가세복원요청은 RCMS 집행내역중 부가세내역을 RCMS로 복원하는 경우 사용합니다.</li>
                        <li>부가세신고의 의무가 있는 영리기관 및 기타 기관에 해당합니다.</li>
                        <li>부가세복원을 하지 않은 경우, 임의로 공급가액으로 금액을 이동한 경우 <span class="txt_or">부가세금액만큼 부분불인정을 받습니다.</span></li>
                    </ul>
                    <p class="tip">여러건을 복수로 선택하여 한번의 입금으로 여러건을 처리할 수 있습니다.</p>
                </div>
                <p class="guide_boxb1"></p>
            </div>
            <!-- //안내 가이드 end// -->
        </div>
        <!-- //content end// -->

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



<script type="text/javascript">

    //파라메터 전역변수
    var paramGb;
    
    //증빙구분 전역변수
    var sel_TrscEvdcDvGb = "";
    
    //레이아웃 전역변수
    var layoutStrGb;

    /******************************************************************
     * uf_ExecListSearch    사용내역목록조회
     * @param
     * @return
    ******************************************************************/
    
//  ================== 2014 그리드 교체 작업========================
    
    function uf_ExecListSearch(SchGb) {
        
        var frm        = document.frm;
        var TrscEvdcDv = document.getElementById('sel_TrscEvdcDv').value;
    
        if( isSubmit() ) return;    // 이중처리
    
        // 가상계좌 초기화
        frm.EXIST_VACC.value    = "N";
        frm.VrtlAcctNo.value    = "";
        // 과제조회 유무 확인
        if(!bAutoSbjtSch()) return;
        
        uf_Click();                     // 조회시 체크내역 금액합 도출내역 초기화        
        
        //그리드초기화        
        rMateGridLayoutInit_rMate(gridRoot, gridApp, layoutStrGb);

        var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
        uf_proce_display_on();  //로딩바
        setTimeout(function(){search(seqNo);}, 1000);   // 1초후 실행 1000 = 1초s        
    }
    
    
    function uf_autoSbjtSchCallBack(param) {
        if(!param){
            alert("에러가 발생하였습니다. 잠시후 다시 시도해주세요.");
            return;
        }
    
        var responseXML = "";
        
        if("1" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 신규과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }else if("2" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 진행과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
        }else if("3" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 정산과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
        }else if("4" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 정산과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
        }
        
        
        document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
        
        paramGb = param;
        uf_init();
    }   
//  ================== 2014 그리드 교체 작업========================   
    

    
    /******************************************************************
     * uf_vat_psvreq                부가세환원요청 pop-up호출
     * @param
     * @return
    ******************************************************************/

    /* **********************  2014 그리드 교체 작업 부가세 복원요청 상세보기 ***********************  */
    function uf_vat_psvreq() {
        
        var frm = document.frm;
        var idx = -1;
    
        if( isSubmit() ) return;                                 // 이중처리
        if(!bAutoSbjtSch()) return;                              // 과제조회여부
        if (!chkGridSelectedCount_rMate(gridRoot, "")) return false; // 그리드선택내역확인
        if(!uf_chkVaccState())  return false;                    // 계좌상태체크
        
        if(frm.SacPrgrSt.value == "1" || frm.SacPrgrSt.value == "2" || frm.SacPrgrSt.value == "3"){
            alert("보고서 제출이 된 상태이므로 부가세복원을 신청하실 수 없습니다.");
            return false;
        }
        
        if(!(frm.PlanAmt.value > 0)){
            alert("복원요청금액이 \"0\"원 입니다.");
            return false;
        }
        
        //그리드 선택 체크
        selectorColumn = gridRoot.getObjectById("selector");
        //선택된 row의 값 체크
        var rowIndex = selectorColumn.getSelectedIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        var data = selectorColumn.getSelectedIndices();     
        
        for(var i=0; i<data.length; i++){       
            
            if(gridRoot.getItemFieldAt(data[i], "VAT_PROC_DV") == "B01003"){
                alert("기신청한 내역은 다시 신청할 수 없습니다.");
                return false;
            }           
            
            if(gridRoot.getItemFieldAt(data[i], "RTRT_ST") != "" && (gridRoot.getItemFieldAt(data[i], "RTRT_ST") == "B1000A" || gridRoot.getItemFieldAt(data[i], "RTRT_ST") == "B10001")){   // 진행중인 내용은 신청 불가....
                alert("복원 신청중인 내역이 있습니다.");
                return false;
            }
        }       
    
        for(var i=0; i<data.length; i++){
            get2post(frm, gridRoot.getItemFieldAt(data[i], "GRIDKEY"));
        }
        
        get2post(frm, "AUTO_MAP_KEY=" + $("#SBJT_MAP_KEYS").val());
        
        if("C" == frm.sel_TrscEvdcDv.value){            
            uf_frmNewWinNs(frm, '/t02/t24/T24_01_20.jsp', 'PSVPOP', '765', '500');   // 카드
        }else if("" == frm.sel_TrscEvdcDv.value){           
            uf_frmNewWinNs(frm, '/t02/t24/T24_01_30.jsp', 'PSVPOP', '765', '500');   // 전체
        }else{      
            uf_frmNewWinNs(frm, '/t02/t24/T24_01_10.jsp', 'PSVPOP', '765', '500');   // 기타, 전자세금계산서
        }
                
        removeTempAttribute(frm);
        
    }
    
    /* **********************  2014 그리드 교체 작업 상세보기 ***********************  */
    
    
    /******************************************************************
     * uf_Click         그리드이벤트,체크내역 금액합도출
     * @param
     * @return
    ******************************************************************/
    function uf_Click() {
        
        var frm    = document.frm;
        var idx    = -1;
        var cnt    = 0;
        var amt    = 0;
        var splamt = 0;
        var vatamt = 0;
        var selectorColumn = gridRoot.getObjectById("selector");
        var data = selectorColumn.getSelectedIndices();
        
        if("C" == frm.sel_TrscEvdcDv.value){    
            if(data != "" && data.length > 0 ){
               for(var i=0; i<data.length; i++){            
                    amt += Number(gridRoot.getItemFieldAt(data[i], "USE_VAT_AMT"));
                    amt -= Number(gridRoot.getItemFieldAt(data[i], "RTRT_FIX_VAT_AMT")); //환원요청금액            
                    splamt += Number(gridRoot.getItemFieldAt(data[i], "USE_SPLY_AMT"));            
                    vatamt += Number(gridRoot.getItemFieldAt(data[i], "USE_VAT_AMT"));
                    cnt++;
               }
            }            
        }else if(""==frm.sel_TrscEvdcDv.value){
            if(data != "" && data.length > 0 ){
               for(var i=0; i<data.length; i++){               
                    amt += Number(gridRoot.getItemFieldAt(data[i], "USE_VAT_AMT"));                 
                    
                    if("카드결제" == gridRoot.getItemFieldAt(data[i], "TRSC_EVDC_DV")) {                        
                        amt -= Number(gridRoot.getItemFieldAt(data[i], "RTRT_FIX_VAT_AMT")); //환원요청금액                       
                    }                   
                    splamt += Number(gridRoot.getItemFieldAt(data[i], "USE_SPLY_AMT"));
                    vatamt += Number(gridRoot.getItemFieldAt(data[i], "USE_VAT_AMT"));                            
                    cnt++;
               }  
            }           
        }else{
            if(data != "" && data.length > 0 ){
               for(var i=0; i<data.length; i++){               
                   amt    += Number(gridRoot.getItemFieldAt(data[i], "USE_VAT_AMT"));              
                   splamt += Number(gridRoot.getItemFieldAt(data[i], "USE_SPLY_AMT"));             
                   vatamt += Number(gridRoot.getItemFieldAt(data[i], "USE_VAT_AMT"));                  
                   cnt++;
               }  
            }           
        }
        
        frm.PayPlanDtlsRegNcnt.value        = cnt;
        frm.PlanAmt.value                   = amt.toString();                     //부가세합계금액
        document.all['reqcnt'].innerHTML    = cnt;
        document.all['reqamt'].innerHTML    = cur_format(amt.toString());
        document.all['reqsplamt'].innerHTML = cur_format(splamt.toString());
        document.all['reqvatamt'].innerHTML = cur_format(vatamt.toString());
    
    }
      
    function chg_selBox() {
        
        var frm = document.frm;
        
        //데이터초기화
        gridData = null;
        //그리드 초기화
        rMateGridSetData();
        //증빙구분값셋팅
        sel_TrscEvdcDvGb = frm.sel_TrscEvdcDv.value;
        
        if("C"==frm.sel_TrscEvdcDv.value){          
            document.getElementById("devLastMonth").style.display = "block";            
            //그리드 레이아웃 - 카드증빙(C)
            gridApp.setLayout(layoutStr_c);
            layoutStrGb = layoutStr_c;
        }else if(""==frm.sel_TrscEvdcDv.value){
            document.getElementById("devLastMonth").style.display = "block";            
            //그리드 레이아웃 - 전체
            gridApp.setLayout(layoutStr_a);
            layoutStrGb = layoutStr_a;
        }else{          
            document.getElementById("devLastMonth").style.display = "none";         
            //그리드 레이아웃 - 전자세금계산서/기타증빙(T/E)
            gridApp.setLayout(layoutStr);
            layoutStrGb = layoutStr;
        }
        
        uf_init();
    }
    
    function uf_init() {
        frm.PayPlanDtlsRegNcnt.value        = "";
        frm.PlanAmt.value                   = "";
        document.all['reqcnt'].innerHTML    = "0";
        document.all['reqamt'].innerHTML    = "0";
        document.all['reqsplamt'].innerHTML = "0";
        document.all['reqvatamt'].innerHTML = "0";  
    }

    /******************************************************************
     * uf_checkAll : 전체선택
     * @param
     * @return
    ******************************************************************/ 
    function uf_checkAll() {        
        uf_Click();
    }
    
</script>

<script type="text/javascript">
    
    $(document).ready(function() {
//      ================== 2014 그리드 교체 작업========================       
        //rMateGrid 초기화
        rMateGridInit();        
//      ================== 2014 그리드 교체 작업========================
        
        $("a#example1").fancybox();
        $("a#example2").fancybox(); 
          
        $('#btn-guide').click(function(){
            if( $('#guide').css('height') == '17px' ){
               $('#guide').css({overflow:'hidden'}).animate({height:140},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
            }else{
               $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
            }
            return false;
        });
    });  
    
</script>




<!--  ================== 2014 그리드 교체 작업======================== -->
<script type="text/javascript">
var cnt = 0;
function SetData(seqNo){
    var frm = document.frm;
    try{
        cnt = 0;
        var gridValue = [];        

        //1. 신규과제
        if("G00000000000001" == seqNo){
            if(sel_TrscEvdcDvGb == "") {                    
                
            } else if(sel_TrscEvdcDvGb == "T") {                
                
            } else if(sel_TrscEvdcDvGb == "E") {
                
            } else if(sel_TrscEvdcDvGb == "C") {
                
            }               

            //가상계좌조회
            document.all["idVrtlAcctNo"].innerHTML="20000000000008";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="A 은행";
            document.all["idVrtlAcctIssuDt"].innerHTML="2014-04-21";
            document.all["idVrtlAcctIssuSt"].innerHTML="사용가능";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="미사용";
            document.frm.ISSU_BNK_CD.value="020";
            document.frm.ISSU_DT.value="20140421";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="20000000000008";
            
            //정산진행상태
            document.frm.SacPrgrSt.value = "";
            
            
        
        //2. 진행과제
        } else if("G00000000000002" == seqNo){
            if(sel_TrscEvdcDvGb == "") {                    
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"B 은행","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ 나 업체","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20140113&ExctnRegDrtm=103232&ExctnExecDt=20140113&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=B 은행&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=나사장&TrnsAmt=990&UseSplyAmt=900&UseVatAmt=90&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-24","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"카드결재","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"산기평","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ A 가맹점","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20100614&ExctnRegDrtm=103232&ExctnExecDt=20100614&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=C&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=산기평&TrnsAmt=220&UseSplyAmt=200&UseVatAmt=20&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-27","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"E 은행","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"가사장","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ 가 업체","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20140227&ExctnRegDrtm=103232&ExctnExecDt=20140227&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=E 은행&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=가사장&TrnsAmt=110&UseSplyAmt=1000&UseVatAmt=100&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                
            } else if(sel_TrscEvdcDvGb == "T") {                
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13","VAT_PROC_DV_NM":"부가세 미처리","TRNS_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","TRSC_EVDC_DV":"전자세금계산서","TRSC_PFMC_ST":"집행(이체) 완료","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"B 은행","RCV_ACCT_NO":"888-88-888888-00","RCV_ACCT_OWAC_NM":"나사장","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20140113&ExctnRegDrtm=165941&ExctnExecDt=20140113&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=B 은행&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=나사장&TrnsAmt=100&UseSplyAmt=91&UseVatAmt=9"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-27","VAT_PROC_DV_NM":"부가세 미처리","TRNS_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","TRSC_EVDC_DV":"전자세금계산서","TRSC_PFMC_ST":"집행(이체) 완료","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"E 은행","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"가사장","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20140227&ExctnRegDrtm=165941&ExctnExecDt=20140227&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=E 은행&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=가사장&TrnsAmt=100&UseSplyAmt=91&UseVatAmt=9"};

            } else if(sel_TrscEvdcDvGb == "E") {
                
            } else if(sel_TrscEvdcDvGb == "C") {
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-24","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"2014-02-04","VAT_PROC_DV_NM":"부가세 미처리","SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_VAT_AMT":"0","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"","SPLR_CO_NM":"㈜ A 가맹점","VAT_PROC_DV":"부가세 미처리","RTRT_TYP_DV":"B01001","RTRT_ST":"B10099","GRIDKEY":"SetlScheDt=20140224&BuyDt=20140204&CrdNo=1111222233334444&BuyClctNo=N000040904&BuyAmt=220&UseSplyAmt=200&UseVatAmt=20&CanVatAmt=0&ButrId=C201111212383103&TrscPfmcSt=B04110"};
                
            }               

            //가상계좌조회
            document.all["idVrtlAcctNo"].innerHTML="20000000000008";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="A 은행";
            document.all["idVrtlAcctIssuDt"].innerHTML="2014-03-21";
            document.all["idVrtlAcctIssuSt"].innerHTML="사용가능";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="미사용";
            document.frm.ISSU_BNK_CD.value="003";
            document.frm.ISSU_DT.value="20140321";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="20000000000008";
            
            //정산진행상태
            document.frm.SacPrgrSt.value = "";

            
        //3. 정산과제(보고서 미제출)
        } else if("G00000000000003" == seqNo){   
            
            if(sel_TrscEvdcDvGb == "") {                
                
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-06","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"E 은행","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"가사장","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ 가 업체","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130306&ExctnRegDrtm=103232&ExctnExecDt=20130306&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=E 은행&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=가사장&TrnsAmt=1100&UseSplyAmt=1000&UseVatAmt=100&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-25","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"카드결재","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"산기평","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"2013-03-04","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ A 가맹점","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130325&ExctnRegDrtm=103232&ExctnExecDt=20130325&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=C&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=산기평&TrnsAmt=220&UseSplyAmt=200&UseVatAmt=20&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-10","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"B 은행","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"나사장","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ 나 업체","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130410&ExctnRegDrtm=103232&ExctnExecDt=20130410&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=B 은행&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=나사장&TrnsAmt=100&UseSplyAmt=91&UseVatAmt=9&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-23","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"카드결재","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"산기평","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"2013-03-22","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ B 가맹점","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130423&ExctnRegDrtm=103232&ExctnExecDt=20130423&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=C&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=산기평&TrnsAmt=1100&UseSplyAmt=1000&UseVatAmt=100&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-05-23","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"카드결재","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"산기평","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"2013-04-19","CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ C 가맹점","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130523&ExctnRegDrtm=103232&ExctnExecDt=20130523&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=C&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=산기평&TrnsAmt=220&UseSplyAmt=200&UseVatAmt=20&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-08","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"기타증빙","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"G 은행","RCV_ACCT_NO":"777-77-777777-0","RCV_ACCT_OWAC_NM":"바사장","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ 바 업체","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130708&ExctnRegDrtm=103232&ExctnExecDt=20130708&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=E&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=G 은행&RcvAcctBnkCd=003&RcvAcctNo=777777777770&RcvAcctOwacNm=바사장&TrnsAmt=100&UseSplyAmt=91&UseVatAmt=9&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-22","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"20000","USE_SPLY_AMT":"18182","USE_VAT_AMT":"1818","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"C 은행","RCV_ACCT_NO":"300-30-3000000","RCV_ACCT_OWAC_NM":"다사장","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ 다 업체","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130722&ExctnRegDrtm=103232&ExctnExecDt=20130722&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=C 은행&RcvAcctBnkCd=003&RcvAcctNo=3003030000000&RcvAcctOwacNm=다사장&TrnsAmt=20000&UseSplyAmt=18182&UseVatAmt=1818&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-10-29","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"15000","USE_SPLY_AMT":"13637","USE_VAT_AMT":"1363","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"F 은행","RCV_ACCT_NO":"999-99-999999-0","RCV_ACCT_OWAC_NM":"라사장","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ 라 업체","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20131029&ExctnRegDrtm=103232&ExctnExecDt=20131029&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=F 은행&RcvAcctBnkCd=003&RcvAcctNo=999999999990&RcvAcctOwacNm=라사장&TrnsAmt=15000&UseSplyAmt=13637&UseVatAmt=1363&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-11-25","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"500","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"카드결재","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"산기평","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"2013-10-23","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ E 가맹점","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20131125&ExctnRegDrtm=103232&ExctnExecDt=20131125&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=C&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=산기평&TrnsAmt=500&UseSplyAmt=455&UseVatAmt=45&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-12-23","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"9060","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"카드결재","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"산기평","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"2013-12-04","CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ D 가맹점","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20131223&ExctnRegDrtm=103232&ExctnExecDt=20131223&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=C&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=산기평&TrnsAmt=9060&UseSplyAmt=8237&UseVatAmt=823&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13","VAT_PROC_DV_NM":"부가세 미처리","VAT_PROC_DV":"부가세 미처리","VAT_PROC_DV":"B01001","TRNS_AMT":"300","USE_SPLY_AMT":"273","USE_VAT_AMT":"27","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"H 은행","RCV_ACCT_NO":"222-22-222222-0","RCV_ACCT_OWAC_NM":"마사장","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"㈜ 마 업체","RTRT_TYP_DV":"부가세 환원","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20140113&ExctnRegDrtm=103232&ExctnExecDt=20140113&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=H 은행&RcvAcctBnkCd=003&RcvAcctNo=222222222220&RcvAcctOwacNm=마사장&TrnsAmt=300&UseSplyAmt=273&UseVatAmt=27&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};

            } else if(sel_TrscEvdcDvGb == "T") {                    
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-06","VAT_PROC_DV_NM":"부가세 미처리","TRNS_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","TRSC_EVDC_DV":"전자세금계산서","TRSC_PFMC_ST":"집행(이체) 완료","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"E 은행","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"가사장","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130306&ExctnRegDrtm=165941&ExctnExecDt=20130306&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=E 은행&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=가사장&TrnsAmt=1100&UseSplyAmt=1000&UseVatAmt=100"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-10","VAT_PROC_DV_NM":"부가세 미처리","TRNS_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","TRSC_EVDC_DV":"전자세금계산서","TRSC_PFMC_ST":"집행(이체) 완료","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"B 은행","RCV_ACCT_NO":"888-88-888888-00","RCV_ACCT_OWAC_NM":"나사장","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130410&ExctnRegDrtm=165941&ExctnExecDt=20130410&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=B 은행&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=나사장&TrnsAmt=100&UseSplyAmt=91&UseVatAmt=9"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-22","VAT_PROC_DV_NM":"부가세 미처리","TRNS_AMT":"20000","USE_SPLY_AMT":"18182","USE_VAT_AMT":"1818","TRSC_EVDC_DV":"전자세금계산서","TRSC_PFMC_ST":"집행(이체) 완료","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"C 은행","RCV_ACCT_NO":"300-30-300000","RCV_ACCT_OWAC_NM":"다사장","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130722&ExctnRegDrtm=165941&ExctnExecDt=20130722&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=C 은행&RcvAcctBnkCd=003&RcvAcctNo=30030300000&RcvAcctOwacNm=다사장&TrnsAmt=20000&UseSplyAmt=18182&UseVatAmt=1818"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-10-29","VAT_PROC_DV_NM":"부가세 미처리","TRNS_AMT":"15000","USE_SPLY_AMT":"13637","USE_VAT_AMT":"1363","TRSC_EVDC_DV":"전자세금계산서","TRSC_PFMC_ST":"집행(이체) 완료","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"F 은행","RCV_ACCT_NO":"888-88-888888-00","RCV_ACCT_OWAC_NM":"라사장","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20131029&ExctnRegDrtm=165941&ExctnExecDt=20131029&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=F 은행&RcvAcctBnkCd=003&RcvAcctNo=999999999990&RcvAcctOwacNm=라사장&TrnsAmt=15000&UseSplyAmt=13637&UseVatAmt=1363"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13","VAT_PROC_DV_NM":"부가세 미처리","TRNS_AMT":"300","USE_SPLY_AMT":"273","USE_VAT_AMT":"27","TRSC_EVDC_DV":"전자세금계산서","TRSC_PFMC_ST":"집행(이체) 완료","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"H 은행","RCV_ACCT_NO":"222-22-222222-0","RCV_ACCT_OWAC_NM":"마사장","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20140113&ExctnRegDrtm=165941&ExctnExecDt=20140113&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=H 은행&RcvAcctBnkCd=003&RcvAcctNo=222222222220&RcvAcctOwacNm=마사장&TrnsAmt=300&UseSplyAmt=273&UseVatAmt=27"};

            } else if(sel_TrscEvdcDvGb == "E") {                    
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-08","VAT_PROC_DV_NM":"부가세 미처리","TRNS_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","TRSC_EVDC_DV":"기타증빙","TRSC_PFMC_ST":"집행(이체) 완료","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"G 은행","RCV_ACCT_NO":"777-77-777777-0","RCV_ACCT_OWAC_NM":"바사장","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130708&ExctnRegDrtm=165941&ExctnExecDt=20130708&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=E&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=G 은행&RcvAcctBnkCd=003&RcvAcctNo=777777777770&RcvAcctOwacNm=바사장&TrnsAmt=100&UseSplyAmt=91&UseVatAmt=9"};
                
            } else if(sel_TrscEvdcDvGb == "C") {
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-25","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"2013-03-04","VAT_PROC_DV_NM":"부가세 미처리","SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_VAT_AMT":"0","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"","SPLR_CO_NM":"㈜ A 가맹점","VAT_PROC_DV":"부가세 미처리","RTRT_TYP_DV":"B01001","RTRT_ST":"B10099","GRIDKEY":"SetlScheDt=20130325&BuyDt=20130331&CrdNo=1111222233334444&BuyClctNo=N000040904&BuyAmt=220&UseSplyAmt=200&UseVatAmt=20&CanVatAmt=0&ButrId=C201111212383103&TrscPfmcSt=B04110"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-23","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"2013-03-22","VAT_PROC_DV_NM":"부가세 미처리","SUM_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_VAT_AMT":"0","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"","SPLR_CO_NM":"㈜ B 가맹점","VAT_PROC_DV":"부가세 미처리","RTRT_TYP_DV":"B01001","RTRT_ST":"B10099","GRIDKEY":"SetlScheDt=20130423&BuyDt=20130322&CrdNo=1111222233334444&BuyClctNo=N000040904&BuyAmt=1100&UseSplyAmt=1000&UseVatAmt=100&CanVatAmt=0&ButrId=C201111212383103&TrscPfmcSt=B04110"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-05-23","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"2013-04-19","VAT_PROC_DV_NM":"부가세 미처리","SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_VAT_AMT":"0","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"","SPLR_CO_NM":"㈜ C 가맹점","VAT_PROC_DV":"부가세 미처리","RTRT_TYP_DV":"B01001","RTRT_ST":"B10099","GRIDKEY":"SetlScheDt=20130523&BuyDt=20130419&CrdNo=1111222233335555&BuyClctNo=N000040904&BuyAmt=220&UseSplyAmt=200&UseVatAmt=20&CanVatAmt=0&ButrId=C201111212383103&TrscPfmcSt=B04110"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-11-25","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"2013-10-23","VAT_PROC_DV_NM":"부가세 미처리","SUM_AMT":"500","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_FIX_VAT_AMT":"0","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"","SPLR_CO_NM":"㈜ E 가맹점","VAT_PROC_DV":"부가세 미처리","RTRT_TYP_DV":"B01001","RTRT_ST":"B10099","GRIDKEY":"SetlScheDt=20131125&BuyDt=20131023&CrdNo=1111222233334444&BuyClctNo=N000040904&BuyAmt=500&UseSplyAmt=455&UseVatAmt=45&CanVatAmt=0&ButrId=C201111212383103&TrscPfmcSt=B04110"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-12-23","TRSC_PFMC_ST":"집행(이체) 완료","BUY_DT":"2013-12-04","VAT_PROC_DV_NM":"부가세 미처리","SUM_AMT":"9060","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_FIX_VAT_AMT":"0","RTRT_TYP_DV_NM":"부가세 환원","RTRT_ST_NM":"","CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"","SPLR_CO_NM":"㈜ D 가맹점","VAT_PROC_DV":"부가세 미처리","RTRT_TYP_DV":"B01001","RTRT_ST":"B10099","GRIDKEY":"SetlScheDt=20131223&BuyDt=20131204&CrdNo=1111222233335555&BuyClctNo=N000040904&BuyAmt=9060&UseSplyAmt=8237&UseVatAmt=823&CanVatAmt=0&ButrId=C201111212383103&TrscPfmcSt=B04110"};
                
            }
                       

            //가상계좌조회
            document.all["idVrtlAcctNo"].innerHTML="20000000000008";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="A 은행";
            document.all["idVrtlAcctIssuDt"].innerHTML="2014-03-12";
            document.all["idVrtlAcctIssuSt"].innerHTML="사용가능";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="미사용";
            document.frm.ISSU_BNK_CD.value="003";
            document.frm.ISSU_DT.value="20140312";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="20000000000008";
            
            //정산진행상태
            document.frm.SacPrgrSt.value = "0";
            
        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){
            if(sel_TrscEvdcDvGb == "") {                
                
            } else if(sel_TrscEvdcDvGb == "T") {

            } else if(sel_TrscEvdcDvGb == "E") {
                
            } else if(sel_TrscEvdcDvGb == "C") {
                
            }
            
            //가상계좌조회
            document.all["idVrtlAcctNo"].innerHTML="20000000000008";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="A 은행";
            document.all["idVrtlAcctIssuDt"].innerHTML="2014-02-12";
            document.all["idVrtlAcctIssuSt"].innerHTML="사용가능";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="미사용";
            document.frm.ISSU_BNK_CD.value="020";
            document.frm.ISSU_DT.value="20140212";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="20000000000008";
            
            //정산진행상태
            document.frm.SacPrgrSt.value = "1";

        }
        
    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
    }
}

function search(seqNo){
    if(!seqNo) return false;

    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor = "wait";
        SetData(seqNo); //Insert    Grid
        document.body.style.cursor = "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();        
        searchAlert();
    }
}


function searchAlert(){
       if(cnt<1){      
           window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
       }     
    }

</script>           
            
<!-- ======== 2014 그리드 교체 작업 =========-->
            
</body>
</html> 