<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T24_01_00.jsp
 *   Description        : �ΰ��� ������û
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29                   ������             
 *
 *  @author ������
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

<title>�ΰ��� ������û &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body class="line">

<ul id="accessibility">
    <li><a href="#header">�ָ޴��ٷΰ���</a></li>
    <li><a href="#contaniner">�������ٷΰ���</a></li>
    <li><a href="#footer">�ϴܹٷΰ���</a></li>
</ul>
<hr/>
<noscript><p id="warning_script">�ڹٽ�ũ��Ʈ�� �������� ���� �� �������� ���������� ������ ���� �� �ֽ��ϴ�.</p></noscript>
<div id="wrapper">

    <!-- //header topMenu start// -->
    <%@ include file="/inc/topMenu.jsp" %>
    <!-- //header topMenu end// -->
    
    <!-- contaniner start -->
    <div id="contaniner">
        <!-- left start -->
        <div class="snb">
            <!-- left menu start -->
           
                    <div><img src="/images/pefo/sub_navt2.gif" alt="�����񺹿�" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t02/t21/T21_01_00.jsp'); return false;" class="menu_txt">��û������ȸ</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t02/t21/T21_01_00.jsp'); return false;" class="menu_3dep">��û������ȸ</a></li>
                        
                                </ul>
                                <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_txt">��������ü��� ��û</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_3dep">��������ü��� ��û</a></li>
                        
                                </ul>
                                <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t02/t23/T23_01_00.jsp'); return false;" class="menu_txt">ī�����������û</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t02/t23/T23_01_00.jsp'); return false;" class="menu_3dep">ī�����������û</a></li>
                        
                                </ul>
                                <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t02/t24/T24_01_00.jsp'); return false;" class="menu_txt_on">�ΰ��� ������û</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t02/t24/T24_01_00.jsp'); return false;" class="menu_3dep_on">�ΰ��� ������û</a></li>
                        
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
            
                <p class="title"><img src="/images/pefo/u24_01_00_t.gif" alt="�ΰ��� ������û"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>�����񺹿�</li>
                       <li><img src="/images/common/arr.gif" alt=" " />�ΰ��� ������û</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">�ΰ��� ������û</span></li>
                        
                    </ul>
                </div>
            </div>                
            <!-- //pagenav end// -->
            <div class="t30"></div>

            <!-- ================== 2014 �׸��� ��ü �۾�======================== -->
            <!-- **********************  rMateGrid setting START ***********************  -->
            <script type="text/javaScript">
            //���̾ƿ� ����(�������� ��ü)
            var layoutStr_a = "\
            <?xml version=\"1.0\" encoding=\"utf-8\"?>\
            <rMateGrid>\
                <NumberFormatter id=\"numfmt\" />\
                <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
                <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
                <DataGrid id=\"dg1\" lockedColumnCount=\"2\"  styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
                    <columns>\
                        <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                        <DataGridSelectorColumn id=\"selector\"     dataField=\"selector\"          headerText=\"����\"                   width=\"50\" visible=\"true\" textAlign=\"center\" allowAllSelection=\"false\" allowMultipleSelection=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"EXCTN_EXEC_DT\"       dataField=\"EXCTN_EXEC_DT\"           headerText=\"�������/��������\"      width=\"130\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"VAT_PROC_DV_NM\"      dataField=\"VAT_PROC_DV_NM\"          headerText=\"�ΰ�����������\"         width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"VAT_PROC_DV\"         dataField=\"VAT_PROC_DV\"             headerText=\"�ΰ������������ڵ�\"     width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"TRNS_AMT\"            dataField=\"TRNS_AMT\"                headerText=\"��ü�ݾ�/�����հ�\"      width=\"130\"  visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"            headerText=\"���ޱݾ�\"               width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"             headerText=\"�ΰ���ġ����\"           width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"    dataField=\"RTRT_FIX_VAT_AMT\"        headerText=\"�����ΰ���ġ����\"       width=\"110\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"TRSC_EVDC_DV\"        dataField=\"TRSC_EVDC_DV\"            headerText=\"��������\"               width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_TYP_DV_NM\"      dataField=\"RTRT_TYP_DV_NM\"          headerText=\"����������������\"       width=\"110\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_ST_NM\"          dataField=\"RTRT_ST_NM\"              headerText=\"��������\"               width=\"110\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RCV_ACCT_BNK_CD_NM\"  dataField=\"RCV_ACCT_BNK_CD_NM\"      headerText=\"�Ա�����\"               width=\"80\"   visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RCV_ACCT_NO\"         dataField=\"RCV_ACCT_NO\"             headerText=\"�Աݰ��¹�ȣ\"           width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RCV_ACCT_OWAC_NM\"    dataField=\"RCV_ACCT_OWAC_NM\"        headerText=\"������\"                 width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"TRSC_PFMC_ST\"        dataField=\"TRSC_PFMC_ST\"            headerText=\"������\"               width=\"110\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"BUY_DT\"              dataField=\"BUY_DT\"                  headerText=\"��������\"               width=\"80\"   visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"CRD_NO\"              dataField=\"CRD_NO\"                  headerText=\"ī���ȣ\"               width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"BUY_CLCT_NO\"         dataField=\"BUY_CLCT_NO\"             headerText=\"���Թ�ȣ\"               width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"SPLR_CO_NM\"          dataField=\"SPLR_CO_NM\"              headerText=\"��������\"               width=\"150\"  visible=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_TYP_DV\"         dataField=\"RTRT_TYP_DV\"             headerText=\"������������\"           width=\"0\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_ST\"             dataField=\"RTRT_ST\"                 headerText=\"���������ڵ�\"           width=\"0\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"GRIDKEY\"             dataField=\"GRIDKEY\"                 headerText=\"GRIDKEY\"                width=\"0\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                    </columns>\
                     <footers>\
                     <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{EXCTN_EXEC_DT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\"     formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                     </DataGridFooter>\
                 </footers>\
                </DataGrid>\
                <Style>\
                .gridStyle { alternatingItemColors: 0xFFFFFF,0xFFFFFF; headerColors: 0xE3E9F1,0xE3E9F1; \
                fontFamily: ����; fontSize: 12; color: 0x000000; \
                horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
                verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
                selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
                .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
                .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
                </Style>\
            </rMateGrid>\
            ";
            
            
            //���̾ƿ� ����(�������� ���ڼ��ݰ�꼭/��Ÿ����)
            var layoutStr = "\
            <?xml version=\"1.0\" encoding=\"utf-8\"?>\
            <rMateGrid>\
              <NumberFormatter id=\"numfmt\" />\
              <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
              <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
              <DataGrid id=\"dg1\" lockedColumnCount=\"2\"  styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
                    <columns>\
                        <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                        <DataGridSelectorColumn id=\"selector\"     dataField=\"selector\"          headerText=\"����\"                       width=\"50\" visible=\"true\" textAlign=\"center\" allowAllSelection=\"false\" allowMultipleSelection=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"EXCTN_EXEC_DT\"       dataField=\"EXCTN_EXEC_DT\"           headerText=\"�������\"              width=\"80\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"VAT_PROC_DV_NM\"      dataField=\"VAT_PROC_DV_NM\"          headerText=\"�ΰ�����������\"         width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"TRNS_AMT\"            dataField=\"TRNS_AMT\"                headerText=\"��ü�ݾ�\"              width=\"100\"  visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"    formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"            headerText=\"���ޱݾ�\"               width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"             headerText=\"�ΰ���ġ����\"           width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"TRSC_EVDC_DV\"        dataField=\"TRSC_EVDC_DV\"            headerText=\"��������\"               width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"TRSC_PFMC_ST\"        dataField=\"TRSC_PFMC_ST\"            headerText=\"������\"               width=\"110\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_TYP_DV_NM\"      dataField=\"RTRT_TYP_DV_NM\"          headerText=\"����������������\"       width=\"120\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_ST_NM\"          dataField=\"RTRT_ST_NM\"              headerText=\"��������\"               width=\"110\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RCV_ACCT_BNK_CD_NM\"  dataField=\"RCV_ACCT_BNK_CD_NM\"      headerText=\"�Ա�����\"               width=\"80\"   visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RCV_ACCT_NO\"         dataField=\"RCV_ACCT_NO\"             headerText=\"�Աݰ��¹�ȣ\"           width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RCV_ACCT_OWAC_NM\"    dataField=\"RCV_ACCT_OWAC_NM\"        headerText=\"������\"                 width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"VAT_PROC_DV\"         dataField=\"VAT_PROC_DV\"             headerText=\"�ΰ������������ڵ�\"     width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_TYP_DV\"         dataField=\"RTRT_TYP_DV\"             headerText=\"������������\"           width=\"150\"  visible=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_ST\"             dataField=\"RTRT_ST\"                 headerText=\"���������ڵ�\"           width=\"150\"  visible=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"GRIDKEY\"             dataField=\"GRIDKEY\"                 headerText=\"GRIDKEY\"                 width=\"150\"  visible=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
                    </columns>\
                     <footers>\
                     <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn label=\"��\" textAlign=\"right\" />\
                         <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
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
              fontFamily: ����; fontSize: 12; color: 0x000000; \
              horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
              verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
              selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
              .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
              .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
                </Style>\
            </rMateGrid>\
            ";
            
            
            //���̾ƿ� ����(�������� ī������)
            var layoutStr_c = "\
            <?xml version=\"1.0\" encoding=\"utf-8\"?>\
            <rMateGrid>\
                <NumberFormatter id=\"numfmt\" />\
                <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
                <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
                <DataGrid id=\"dg1\" lockedColumnCount=\"2\"  styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
                    <columns>\
                        <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                        <DataGridSelectorColumn id=\"selector\"     dataField=\"selector\"          headerText=\"����\"                   width=\"50\" visible=\"true\" textAlign=\"center\" allowAllSelection=\"false\" allowMultipleSelection=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"EXCTN_EXEC_DT\"       dataField=\"EXCTN_EXEC_DT\"           headerText=\"��������\"              width=\"80\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"TRSC_PFMC_ST\"        dataField=\"TRSC_PFMC_ST\"            headerText=\"�������\"              width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"BUY_DT\"              dataField=\"BUY_DT\"                  headerText=\"��������\"              width=\"80\"   visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"VAT_PROC_DV_NM\"      dataField=\"VAT_PROC_DV_NM\"          headerText=\"�ΰ�����������\"        width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"SUM_AMT\"             dataField=\"SUM_AMT\"                 headerText=\"�����հ�\"              width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"            headerText=\"���ޱݾ�\"              width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"             headerText=\"�ΰ���ġ����\"          width=\"100\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"    dataField=\"RTRT_FIX_VAT_AMT\"        headerText=\"�����ΰ���ġ����\"      width=\"110\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\"  formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                        <DataGridColumn id=\"RTRT_TYP_DV_NM\"      dataField=\"RTRT_TYP_DV_NM\"          headerText=\"����������������\"      width=\"110\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_ST_NM\"          dataField=\"RTRT_ST_NM\"              headerText=\"��������\"              width=\"110\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"CRD_NO\"              dataField=\"CRD_NO\"                  headerText=\"ī���ȣ\"              width=\"124\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"BUY_CLCT_NO\"         dataField=\"BUY_CLCT_NO\"             headerText=\"���Թ�ȣ\"              width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"SPLR_CO_NM\"          dataField=\"SPLR_CO_NM\"              headerText=\"��������\"              width=\"150\"  visible=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"VAT_PROC_DV\"         dataField=\"VAT_PROC_DV\"             headerText=\"�ΰ������������ڵ�\"    width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_TYP_DV\"         dataField=\"RTRT_TYP_DV\"             headerText=\"������������\"          width=\"150\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"RTRT_ST\"             dataField=\"RTRT_ST\"                 headerText=\"���������ڵ�\"          width=\"150\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                        <DataGridColumn id=\"GRIDKEY\"             dataField=\"GRIDKEY\"                 headerText=\"GRIDKEY\"               width=\"150\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                    </columns>\
                     <footers>\
                     <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn />\
                         <DataGridFooterColumn label=\"��\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{BUY_DT}\"     formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SUM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                     </DataGridFooter>\
                 </footers>\
                </DataGrid>\
                <Style>\
                .gridStyle { alternatingItemColors: 0xFFFFFF,0xFFFFFF; headerColors: 0xE3E9F1,0xE3E9F1; \
                fontFamily: ����; fontSize: 12; color: 0x000000; \
                horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
                verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
                selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
                .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
                .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
                </Style>\
            </rMateGrid>\
            ";
            
            
                //�׸��� ���̾ƿ� ȣ�� 
                var rMateGridInitLayout = function() {
                    
                    gridApp = FABridge.gridBridge.root();
                    gridRoot = gridApp.getGridRoot();
                    gridApp.setLayout(layoutStr_a);
            
                    //Ŭ�� �̺�Ʈ �߰�
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
                        
                        //checkbox ���ý� �ջ�
                        if (dataField == "selector") { 
                            uf_Click("");
                        };         
                        
                    };        
                    
                    //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
                    var itemDoubleClickHandler = function(event) {
                        
                        var rowIndex = event.getRowIndex();
                        var columnIndex = event.getColumnIndex();
                        var dataRow = gridRoot.getItemAt(rowIndex);
                        var column = dataGrid.getColumns()[columnIndex];
                        var dataField = column.getDataField();
                        
                        layerDetail(dataGrid,dataRow);
                        
                    };
                    
                    
                    //�׸��� �̺�Ʈ ���
                    var layoutCompleteHandler = function(event) {
                        dataGrid = gridApp.getDataGrid();            
                        
                        //�̺�Ʈ ���
                        //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
                        dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
                    };
            
                    
                    //layout ��� �� ����� �̺�Ʈ ���
                    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
                    
                    //data ��� �� ������ �̺�Ʈ ���
                    gridRoot.addEventListener("dataComplete", setTotCnt);   //��ü ��ȸ�Ǽ� ���
            
                };
            
                //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
                FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);
            
                
                //�ε� �� rMadeGrid ���
                function rMateGridSetData() {       
                    gridApp = FABridge.gridBridge.root();
                    gridApp.setData(JSON.stringify(gridData)); //������ ���
                };
                
              
                //��ü �ڷ�� ���
                function setTotCnt(){
                    $("#InqPrsTotlNcnt").html(getGridRowCount_rMate());
                }
                
            
                //��ü����/������
                function gridAllCheck() {       
                    gridAllCheck_rMate(gridRoot);   
                    uf_Click("");   
                }       
                
            </script>
            <!-- **********************  rMateGrid setting END ***********************  -->
            <!-- ================== 2014 �׸��� ��ü �۾�======================== -->

            <% 
               boolean isSbjtAutoSchMulti = false;  //������ȸ �ڵ��ϼ� ��Ƽüũ��� true:��Ƽ false:�̱�  
               boolean beSearchBtn        = false;  //��ȸ��ư ��������(����޼ҵ�:uf_beSearchBtn();)
            %> 

            <!-- ================== 2014 �׸��� ��ü �۾�======================== -->
            <!-- //auto search start -->
            <%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
            <!-- //auto search end -->
            <!-- ================== 2014 �׸��� ��ü �۾�======================== -->

 

            <!-------------------------------------------------------------------------------->
            <!--  ����� �� -->
            <!-------------------------------------------------------------------------------->
            <div class="cb b10"></div>
            <form name="frm" method="post">
            <input type="hidden" name="ISSU_BNK_CD"         value=""  />                <!-- ������¹߱������ڵ� -->
            <input type="hidden" name="EXIST_VACC"          value="N" />                <!-- ������¹߱޿��� -->
            <input type="hidden" name="VrtlAcctNo"          value=""  />                <!-- ������¹�ȣ -->
            <input type="hidden" name="PayPlanDtlsRegNcnt"  value="0" />                <!-- �ΰ���������û�Ǽ� -->
            <input type="hidden" name="PlanAmt"             value="0" />                <!-- �ΰ���������û�ݾ� -->
            <input type="hidden" name="PrsPgno"             value="0" />                <!-- ������������ȣ-->
            <input type="hidden" name="TrSupYn"             value="N" />                <!-- �ŷ���ӿ���-->
            <input type="hidden" name="SacPrgrSt"           value="" />                 <!-- �����������-->
            <input type="hidden" name="SearchOnly"          value="N" />                <!-- ��Һΰ�����ȸ���� 2012.02.09 ���⼺ -->
            <input type="hidden" name="SBJT_LIST_SCH_AUTO"  id="SBJT_LIST_SCH_AUTO" value="N" />
            <input type="hidden" name="SBJT_DET_SCH_AUTO"   id="SBJT_DET_SCH_AUTO"  value="Y" />                 
            <input type="hidden" id="gridRowCnt"            value="" />                 <!-- ��ȸ�� �Ǽ�-->
            
            <!-- ������¹߱����� start -->
                    <h3>������¹߱�����</h3>
                    <div class="t10">
                        <table width="704" border="0" cellspacing="0" cellpadding="0"
                            summary="������¹߱�����" class="tbl_type03">
                            <caption>������¹߱�����</caption>
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
                                    <th scope="col">������¹�ȣ</th>
                                    <th scope="col">�߱�����</th>
                                    <th scope="col">�߱�����</th>
                                    <th scope="col">����</th>
                                    <th scope="col">������뵵</th>
                                    <th scope="col">�Աݿ����ݾ�</th>
                                    <th scope="col" class="">�Աݸ�������</th>
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
                    <!-- //������¹߱����� end// --> 
            <div class="cb b10"></div>
            <h3>��볻����ȸ</h3>      
            <!-- �˻��� start -->
            <div class="search">
                <div class="search_boxt"></div>
                <div class="search_boxc">
                    <fieldset>
                        <legend>������ȸ �˻�</legend>
                        <table width="680" summary="������ȸ �˻�" class="tbl_search">
                        <caption>������ȸ</caption>
                        <colgroup>
                            <col width="12%" />
                            <col width="78%" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="row">��������</th>
                            <td>
                                <select name="sel_TrscEvdcDv" id="sel_TrscEvdcDv" onchange="chg_selBox();">
                                    <option value="" >��ü</option>
                                    <option value="T">���ڼ��ݰ�꼭</option>
                                    <option value="E">��Ÿ����</option>
                                    <option value="C">ī������</option>
                                </select>                           
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">�������</th>
                            <td>
                                <!-------------------------------------------------------------------------------->
                                <!--  ��¥���� ���� -->
                                <!-------------------------------------------------------------------------------->
                                <%@ include file="/inc/set_date_btn.jsp" %>
                                <%@ include file="/inc/set_date_week.jsp" %>      
                                <!-------------------------------------------------------------------------------->
                                <!--  ��¥���� �� -->
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
            <!-- //�˻��� end// -->
            <!-- ��ȸ ����ȸ ��ư start -->
            <div class="search_bt1 ar">
                <a href="#" class="bt_search" title="��ȸ" onclick="uf_ExecListSearch('S'); return false;"></a>
            </div>
            <!-- //��ȸ ����ȸ ��ư end// -->
            
            <!-- ================== 2014 �׸��� ��ü �۾�======================== -->
            <!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->            
            <div class="total_box">
                <p class="fl t05">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> ��]</p>
                <p class="fl l05"><a href="#" onclick="gridAllCheck(); return false;"><img src="/images/bt/bt_total.gif" alt="��ü����" valign="top" /></a></p>                
                <p class="fr b03" >
                    <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="�μ�" /></a>  
                    <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="����" /></a>
                </p>                
                <p class="cb"></p>
            </div>
            
            <div>
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "378", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- �׸��� End -->
            <!-- �󼼺��� ���̾� �˾� -->
            <div id="layerPopup" style="display:none;z-index:999999;">
                <div id="layerPopupTitle" style="width:355px;height:30px;">
                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="�ݱ�"></a>
                </div>
                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
            </div>
            <!-- *************************  rMateGrid ************************* -->
            <!-- ================== 2014 �׸��� ��ü �۾�======================== -->
            
            <!-- ������¹߱����� start -->
            <div>
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="������¹߱�����" class="tbl_type03">
                <caption>������¹߱�����</caption>
                <colgroup>
                    <col width="25%" />
                    <col width="25%" />
                    <col width="25%" />
                    <col width="25%" />
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">������û�Ǽ�</th>
                    <th scope="col">������û�ݾ�</th>
                    <th scope="col">���ޱݾ�</th>
                    <th scope="col">�ΰ���ġ����</th>
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
            <!-- //������¹߱����� end// --> 
            <!-- action bt start -->
            <div class="action_bt ar">
                <a href="#" class="bt_action7" title="�ΰ���������û" onclick="uf_vat_psvreq(); return false;"><span class="bt_sp1">�ΰ���������û</span></a>
            </div>
            <!-- //action bt end// -->
            <!-- ���ǻ��� start -->
            <div class="guide_box" id="devLastMonth" style="display:block;">
                <p class="guide_boxt"></p>
                <div class="guide_boxc">
                    <ul>
                        <li>ī��������� ��û���� ���� �ΰ����ݾ��� �Ǻΰ����׿��� ī��������� ��û���� �ΰ�����ŭ ������ �ݾ��� ���Ǿ� ���ϴ�.</li>
                        <!-- 2014.01.27 ����������� ��û���� �Ʒ� ���� �ּ�ó��  
                        <li>ī�������� ��� ���߱Ⱓ ��������� ��� ����ϰ� ���� ���� ���� ������ ���ؼ� �ΰ������� ��û�� �����մϴ�. �ΰ������� ��û�ϰ� �Ա� �Ŀ��� [���/�ݾ�]�� ���� �� ������ �Ұ��ϴ� �ݵ�� Ȯ�� �� ���� �ؾ� �մϴ�.</li>
                         -->
                    </ul>    
                </div>
                <p class="guide_boxb"></p>
            </div>
            <!-- //���ǻ��� end// --> 
            </form>
            <!-- �ȳ� ���̵� start -->
            <div class="guide_box1" id="guide">
                <div class="guide_boxt1">
                    <p class="txt_title fl">�ΰ��� ���� ��û �ȳ�</p> 
                    <p class="ar txt_s">* �ȳ��� �� Ȯ���ϼ���. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="����" class="vc"/></a></p>
                </div>
                <div class="guide_boxc1">
                    <ul>
                        <li>�ΰ���������û�� RCMS ���೻���� �ΰ��������� RCMS�� �����ϴ� ��� ����մϴ�.</li>
                        <li>�ΰ����Ű��� �ǹ��� �ִ� ������� �� ��Ÿ ����� �ش��մϴ�.</li>
                        <li>�ΰ��������� ���� ���� ���, ���Ƿ� ���ް������� �ݾ��� �̵��� ��� <span class="txt_or">�ΰ����ݾ׸�ŭ �κк������� �޽��ϴ�.</span></li>
                    </ul>
                    <p class="tip">�������� ������ �����Ͽ� �ѹ��� �Ա����� �������� ó���� �� �ֽ��ϴ�.</p>
                </div>
                <p class="guide_boxb1"></p>
            </div>
            <!-- //�ȳ� ���̵� end// -->
        </div>
        <!-- //content end// -->

    </div>
    <!-- //contaniner end//-->
    <div class="cb"></div>

    <!-- footer start -->
    <%@ include file="/inc/jspFooter.jsp" %>
    <!-- //footer end// -->
    
    <!-- ���޴� start -->
    <%@ include file="/inc/quickMenu.jsp" %>
    <!-- //���޴� end// -->

</div><!-- wrapper end -->



<script type="text/javascript">

    //�Ķ���� ��������
    var paramGb;
    
    //�������� ��������
    var sel_TrscEvdcDvGb = "";
    
    //���̾ƿ� ��������
    var layoutStrGb;

    /******************************************************************
     * uf_ExecListSearch    ��볻�������ȸ
     * @param
     * @return
    ******************************************************************/
    
//  ================== 2014 �׸��� ��ü �۾�========================
    
    function uf_ExecListSearch(SchGb) {
        
        var frm        = document.frm;
        var TrscEvdcDv = document.getElementById('sel_TrscEvdcDv').value;
    
        if( isSubmit() ) return;    // ����ó��
    
        // ������� �ʱ�ȭ
        frm.EXIST_VACC.value    = "N";
        frm.VrtlAcctNo.value    = "";
        // ������ȸ ���� Ȯ��
        if(!bAutoSbjtSch()) return;
        
        uf_Click();                     // ��ȸ�� üũ���� �ݾ��� ���⳻�� �ʱ�ȭ        
        
        //�׸����ʱ�ȭ        
        rMateGridLayoutInit_rMate(gridRoot, gridApp, layoutStrGb);

        var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
        uf_proce_display_on();  //�ε���
        setTimeout(function(){search(seqNo);}, 1000);   // 1���� ���� 1000 = 1��s        
    }
    
    
    function uf_autoSbjtSchCallBack(param) {
        if(!param){
            alert("������ �߻��Ͽ����ϴ�. ����� �ٽ� �õ����ּ���.");
            return;
        }
    
        var responseXML = "";
        
        if("1" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �ű԰���' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }else if("2" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
        }else if("3" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
        }else if("4" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
        }
        
        
        document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
        
        paramGb = param;
        uf_init();
    }   
//  ================== 2014 �׸��� ��ü �۾�========================   
    

    
    /******************************************************************
     * uf_vat_psvreq                �ΰ���ȯ����û pop-upȣ��
     * @param
     * @return
    ******************************************************************/

    /* **********************  2014 �׸��� ��ü �۾� �ΰ��� ������û �󼼺��� ***********************  */
    function uf_vat_psvreq() {
        
        var frm = document.frm;
        var idx = -1;
    
        if( isSubmit() ) return;                                 // ����ó��
        if(!bAutoSbjtSch()) return;                              // ������ȸ����
        if (!chkGridSelectedCount_rMate(gridRoot, "")) return false; // �׸��弱�ó���Ȯ��
        if(!uf_chkVaccState())  return false;                    // ���»���üũ
        
        if(frm.SacPrgrSt.value == "1" || frm.SacPrgrSt.value == "2" || frm.SacPrgrSt.value == "3"){
            alert("���� ������ �� �����̹Ƿ� �ΰ��������� ��û�Ͻ� �� �����ϴ�.");
            return false;
        }
        
        if(!(frm.PlanAmt.value > 0)){
            alert("������û�ݾ��� \"0\"�� �Դϴ�.");
            return false;
        }
        
        //�׸��� ���� üũ
        selectorColumn = gridRoot.getObjectById("selector");
        //���õ� row�� �� üũ
        var rowIndex = selectorColumn.getSelectedIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        var data = selectorColumn.getSelectedIndices();     
        
        for(var i=0; i<data.length; i++){       
            
            if(gridRoot.getItemFieldAt(data[i], "VAT_PROC_DV") == "B01003"){
                alert("���û�� ������ �ٽ� ��û�� �� �����ϴ�.");
                return false;
            }           
            
            if(gridRoot.getItemFieldAt(data[i], "RTRT_ST") != "" && (gridRoot.getItemFieldAt(data[i], "RTRT_ST") == "B1000A" || gridRoot.getItemFieldAt(data[i], "RTRT_ST") == "B10001")){   // �������� ������ ��û �Ұ�....
                alert("���� ��û���� ������ �ֽ��ϴ�.");
                return false;
            }
        }       
    
        for(var i=0; i<data.length; i++){
            get2post(frm, gridRoot.getItemFieldAt(data[i], "GRIDKEY"));
        }
        
        get2post(frm, "AUTO_MAP_KEY=" + $("#SBJT_MAP_KEYS").val());
        
        if("C" == frm.sel_TrscEvdcDv.value){            
            uf_frmNewWinNs(frm, '/t02/t24/T24_01_20.jsp', 'PSVPOP', '765', '500');   // ī��
        }else if("" == frm.sel_TrscEvdcDv.value){           
            uf_frmNewWinNs(frm, '/t02/t24/T24_01_30.jsp', 'PSVPOP', '765', '500');   // ��ü
        }else{      
            uf_frmNewWinNs(frm, '/t02/t24/T24_01_10.jsp', 'PSVPOP', '765', '500');   // ��Ÿ, ���ڼ��ݰ�꼭
        }
                
        removeTempAttribute(frm);
        
    }
    
    /* **********************  2014 �׸��� ��ü �۾� �󼼺��� ***********************  */
    
    
    /******************************************************************
     * uf_Click         �׸����̺�Ʈ,üũ���� �ݾ��յ���
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
                    amt -= Number(gridRoot.getItemFieldAt(data[i], "RTRT_FIX_VAT_AMT")); //ȯ����û�ݾ�            
                    splamt += Number(gridRoot.getItemFieldAt(data[i], "USE_SPLY_AMT"));            
                    vatamt += Number(gridRoot.getItemFieldAt(data[i], "USE_VAT_AMT"));
                    cnt++;
               }
            }            
        }else if(""==frm.sel_TrscEvdcDv.value){
            if(data != "" && data.length > 0 ){
               for(var i=0; i<data.length; i++){               
                    amt += Number(gridRoot.getItemFieldAt(data[i], "USE_VAT_AMT"));                 
                    
                    if("ī�����" == gridRoot.getItemFieldAt(data[i], "TRSC_EVDC_DV")) {                        
                        amt -= Number(gridRoot.getItemFieldAt(data[i], "RTRT_FIX_VAT_AMT")); //ȯ����û�ݾ�                       
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
        frm.PlanAmt.value                   = amt.toString();                     //�ΰ����հ�ݾ�
        document.all['reqcnt'].innerHTML    = cnt;
        document.all['reqamt'].innerHTML    = cur_format(amt.toString());
        document.all['reqsplamt'].innerHTML = cur_format(splamt.toString());
        document.all['reqvatamt'].innerHTML = cur_format(vatamt.toString());
    
    }
      
    function chg_selBox() {
        
        var frm = document.frm;
        
        //�������ʱ�ȭ
        gridData = null;
        //�׸��� �ʱ�ȭ
        rMateGridSetData();
        //�������а�����
        sel_TrscEvdcDvGb = frm.sel_TrscEvdcDv.value;
        
        if("C"==frm.sel_TrscEvdcDv.value){          
            document.getElementById("devLastMonth").style.display = "block";            
            //�׸��� ���̾ƿ� - ī������(C)
            gridApp.setLayout(layoutStr_c);
            layoutStrGb = layoutStr_c;
        }else if(""==frm.sel_TrscEvdcDv.value){
            document.getElementById("devLastMonth").style.display = "block";            
            //�׸��� ���̾ƿ� - ��ü
            gridApp.setLayout(layoutStr_a);
            layoutStrGb = layoutStr_a;
        }else{          
            document.getElementById("devLastMonth").style.display = "none";         
            //�׸��� ���̾ƿ� - ���ڼ��ݰ�꼭/��Ÿ����(T/E)
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
     * uf_checkAll : ��ü����
     * @param
     * @return
    ******************************************************************/ 
    function uf_checkAll() {        
        uf_Click();
    }
    
</script>

<script type="text/javascript">
    
    $(document).ready(function() {
//      ================== 2014 �׸��� ��ü �۾�========================       
        //rMateGrid �ʱ�ȭ
        rMateGridInit();        
//      ================== 2014 �׸��� ��ü �۾�========================
        
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




<!--  ================== 2014 �׸��� ��ü �۾�======================== -->
<script type="text/javascript">
var cnt = 0;
function SetData(seqNo){
    var frm = document.frm;
    try{
        cnt = 0;
        var gridValue = [];        

        //1. �ű԰���
        if("G00000000000001" == seqNo){
            if(sel_TrscEvdcDvGb == "") {                    
                
            } else if(sel_TrscEvdcDvGb == "T") {                
                
            } else if(sel_TrscEvdcDvGb == "E") {
                
            } else if(sel_TrscEvdcDvGb == "C") {
                
            }               

            //���������ȸ
            document.all["idVrtlAcctNo"].innerHTML="20000000000008";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="A ����";
            document.all["idVrtlAcctIssuDt"].innerHTML="2014-04-21";
            document.all["idVrtlAcctIssuSt"].innerHTML="��밡��";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="�̻��";
            document.frm.ISSU_BNK_CD.value="020";
            document.frm.ISSU_DT.value="20140421";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="20000000000008";
            
            //�����������
            document.frm.SacPrgrSt.value = "";
            
            
        
        //2. �������
        } else if("G00000000000002" == seqNo){
            if(sel_TrscEvdcDvGb == "") {                    
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"B ����","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� �� ��ü","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20140113&ExctnRegDrtm=103232&ExctnExecDt=20140113&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=B ����&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=������&TrnsAmt=990&UseSplyAmt=900&UseVatAmt=90&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-24","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"ī�����","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�����","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� A ������","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20100614&ExctnRegDrtm=103232&ExctnExecDt=20100614&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=C&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�����&TrnsAmt=220&UseSplyAmt=200&UseVatAmt=20&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-27","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"E ����","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"������","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� �� ��ü","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20140227&ExctnRegDrtm=103232&ExctnExecDt=20140227&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=E ����&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=������&TrnsAmt=110&UseSplyAmt=1000&UseVatAmt=100&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                
            } else if(sel_TrscEvdcDvGb == "T") {                
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13","VAT_PROC_DV_NM":"�ΰ��� ��ó��","TRNS_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","TRSC_EVDC_DV":"���ڼ��ݰ�꼭","TRSC_PFMC_ST":"����(��ü) �Ϸ�","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"B ����","RCV_ACCT_NO":"888-88-888888-00","RCV_ACCT_OWAC_NM":"������","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20140113&ExctnRegDrtm=165941&ExctnExecDt=20140113&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=B ����&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=������&TrnsAmt=100&UseSplyAmt=91&UseVatAmt=9"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-27","VAT_PROC_DV_NM":"�ΰ��� ��ó��","TRNS_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","TRSC_EVDC_DV":"���ڼ��ݰ�꼭","TRSC_PFMC_ST":"����(��ü) �Ϸ�","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"E ����","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"������","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20140227&ExctnRegDrtm=165941&ExctnExecDt=20140227&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=E ����&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=������&TrnsAmt=100&UseSplyAmt=91&UseVatAmt=9"};

            } else if(sel_TrscEvdcDvGb == "E") {
                
            } else if(sel_TrscEvdcDvGb == "C") {
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-24","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"2014-02-04","VAT_PROC_DV_NM":"�ΰ��� ��ó��","SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_VAT_AMT":"0","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"","SPLR_CO_NM":"�� A ������","VAT_PROC_DV":"�ΰ��� ��ó��","RTRT_TYP_DV":"B01001","RTRT_ST":"B10099","GRIDKEY":"SetlScheDt=20140224&BuyDt=20140204&CrdNo=1111222233334444&BuyClctNo=N000040904&BuyAmt=220&UseSplyAmt=200&UseVatAmt=20&CanVatAmt=0&ButrId=C201111212383103&TrscPfmcSt=B04110"};
                
            }               

            //���������ȸ
            document.all["idVrtlAcctNo"].innerHTML="20000000000008";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="A ����";
            document.all["idVrtlAcctIssuDt"].innerHTML="2014-03-21";
            document.all["idVrtlAcctIssuSt"].innerHTML="��밡��";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="�̻��";
            document.frm.ISSU_BNK_CD.value="003";
            document.frm.ISSU_DT.value="20140321";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="20000000000008";
            
            //�����������
            document.frm.SacPrgrSt.value = "";

            
        //3. �������(���� ������)
        } else if("G00000000000003" == seqNo){   
            
            if(sel_TrscEvdcDvGb == "") {                
                
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-06","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"E ����","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"������","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� �� ��ü","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130306&ExctnRegDrtm=103232&ExctnExecDt=20130306&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=E ����&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=������&TrnsAmt=1100&UseSplyAmt=1000&UseVatAmt=100&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-25","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"ī�����","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�����","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"2013-03-04","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� A ������","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130325&ExctnRegDrtm=103232&ExctnExecDt=20130325&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=C&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�����&TrnsAmt=220&UseSplyAmt=200&UseVatAmt=20&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-10","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"B ����","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"������","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� �� ��ü","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130410&ExctnRegDrtm=103232&ExctnExecDt=20130410&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=B ����&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=������&TrnsAmt=100&UseSplyAmt=91&UseVatAmt=9&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-23","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"ī�����","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�����","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"2013-03-22","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� B ������","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130423&ExctnRegDrtm=103232&ExctnExecDt=20130423&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=C&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�����&TrnsAmt=1100&UseSplyAmt=1000&UseVatAmt=100&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-05-23","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"ī�����","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�����","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"2013-04-19","CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� C ������","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130523&ExctnRegDrtm=103232&ExctnExecDt=20130523&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=C&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�����&TrnsAmt=220&UseSplyAmt=200&UseVatAmt=20&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-08","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"G ����","RCV_ACCT_NO":"777-77-777777-0","RCV_ACCT_OWAC_NM":"�ٻ���","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� �� ��ü","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130708&ExctnRegDrtm=103232&ExctnExecDt=20130708&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=E&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=G ����&RcvAcctBnkCd=003&RcvAcctNo=777777777770&RcvAcctOwacNm=�ٻ���&TrnsAmt=100&UseSplyAmt=91&UseVatAmt=9&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-22","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"20000","USE_SPLY_AMT":"18182","USE_VAT_AMT":"1818","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"C ����","RCV_ACCT_NO":"300-30-3000000","RCV_ACCT_OWAC_NM":"�ٻ���","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� �� ��ü","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130722&ExctnRegDrtm=103232&ExctnExecDt=20130722&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=C ����&RcvAcctBnkCd=003&RcvAcctNo=3003030000000&RcvAcctOwacNm=�ٻ���&TrnsAmt=20000&UseSplyAmt=18182&UseVatAmt=1818&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-10-29","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"15000","USE_SPLY_AMT":"13637","USE_VAT_AMT":"1363","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"F ����","RCV_ACCT_NO":"999-99-999999-0","RCV_ACCT_OWAC_NM":"�����","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� �� ��ü","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20131029&ExctnRegDrtm=103232&ExctnExecDt=20131029&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=F ����&RcvAcctBnkCd=003&RcvAcctNo=999999999990&RcvAcctOwacNm=�����&TrnsAmt=15000&UseSplyAmt=13637&UseVatAmt=1363&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-11-25","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"500","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"ī�����","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�����","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"2013-10-23","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� E ������","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20131125&ExctnRegDrtm=103232&ExctnExecDt=20131125&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=C&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�����&TrnsAmt=500&UseSplyAmt=455&UseVatAmt=45&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-12-23","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"9060","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"ī�����","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�����","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"2013-12-04","CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� D ������","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20131223&ExctnRegDrtm=103232&ExctnExecDt=20131223&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=C&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�����&TrnsAmt=9060&UseSplyAmt=8237&UseVatAmt=823&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13","VAT_PROC_DV_NM":"�ΰ��� ��ó��","VAT_PROC_DV":"�ΰ��� ��ó��","VAT_PROC_DV":"B01001","TRNS_AMT":"300","USE_SPLY_AMT":"273","USE_VAT_AMT":"27","RTRT_FIX_VAT_AMT":"0","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"H ����","RCV_ACCT_NO":"222-22-222222-0","RCV_ACCT_OWAC_NM":"������","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"","CRD_NO":"","BUY_CLCT_NO":null,"SPLR_CO_NM":"�� �� ��ü","RTRT_TYP_DV":"�ΰ��� ȯ��","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20140113&ExctnRegDrtm=103232&ExctnExecDt=20140113&ExctnExecTm=104553&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=E201006142907597&ItxpRegNcnt=1&RcvBnkNm=H ����&RcvAcctBnkCd=003&RcvAcctNo=222222222220&RcvAcctOwacNm=������&TrnsAmt=300&UseSplyAmt=273&UseVatAmt=27&CanVatAmt=0&SetlScheDt=&BuyDt=&CrdNo=&BuyClctNo="};

            } else if(sel_TrscEvdcDvGb == "T") {                    
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-06","VAT_PROC_DV_NM":"�ΰ��� ��ó��","TRNS_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","TRSC_EVDC_DV":"���ڼ��ݰ�꼭","TRSC_PFMC_ST":"����(��ü) �Ϸ�","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"E ����","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"������","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130306&ExctnRegDrtm=165941&ExctnExecDt=20130306&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=E ����&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=������&TrnsAmt=1100&UseSplyAmt=1000&UseVatAmt=100"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-10","VAT_PROC_DV_NM":"�ΰ��� ��ó��","TRNS_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","TRSC_EVDC_DV":"���ڼ��ݰ�꼭","TRSC_PFMC_ST":"����(��ü) �Ϸ�","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"B ����","RCV_ACCT_NO":"888-88-888888-00","RCV_ACCT_OWAC_NM":"������","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130410&ExctnRegDrtm=165941&ExctnExecDt=20130410&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=B ����&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=������&TrnsAmt=100&UseSplyAmt=91&UseVatAmt=9"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-22","VAT_PROC_DV_NM":"�ΰ��� ��ó��","TRNS_AMT":"20000","USE_SPLY_AMT":"18182","USE_VAT_AMT":"1818","TRSC_EVDC_DV":"���ڼ��ݰ�꼭","TRSC_PFMC_ST":"����(��ü) �Ϸ�","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"C ����","RCV_ACCT_NO":"300-30-300000","RCV_ACCT_OWAC_NM":"�ٻ���","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130722&ExctnRegDrtm=165941&ExctnExecDt=20130722&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=C ����&RcvAcctBnkCd=003&RcvAcctNo=30030300000&RcvAcctOwacNm=�ٻ���&TrnsAmt=20000&UseSplyAmt=18182&UseVatAmt=1818"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-10-29","VAT_PROC_DV_NM":"�ΰ��� ��ó��","TRNS_AMT":"15000","USE_SPLY_AMT":"13637","USE_VAT_AMT":"1363","TRSC_EVDC_DV":"���ڼ��ݰ�꼭","TRSC_PFMC_ST":"����(��ü) �Ϸ�","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"F ����","RCV_ACCT_NO":"888-88-888888-00","RCV_ACCT_OWAC_NM":"�����","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20131029&ExctnRegDrtm=165941&ExctnExecDt=20131029&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=F ����&RcvAcctBnkCd=003&RcvAcctNo=999999999990&RcvAcctOwacNm=�����&TrnsAmt=15000&UseSplyAmt=13637&UseVatAmt=1363"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13","VAT_PROC_DV_NM":"�ΰ��� ��ó��","TRNS_AMT":"300","USE_SPLY_AMT":"273","USE_VAT_AMT":"27","TRSC_EVDC_DV":"���ڼ��ݰ�꼭","TRSC_PFMC_ST":"����(��ü) �Ϸ�","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"H ����","RCV_ACCT_NO":"222-22-222222-0","RCV_ACCT_OWAC_NM":"������","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20140113&ExctnRegDrtm=165941&ExctnExecDt=20140113&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=T&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=H ����&RcvAcctBnkCd=003&RcvAcctNo=222222222220&RcvAcctOwacNm=������&TrnsAmt=300&UseSplyAmt=273&UseVatAmt=27"};

            } else if(sel_TrscEvdcDvGb == "E") {                    
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-08","VAT_PROC_DV_NM":"�ΰ��� ��ó��","TRNS_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","TRSC_EVDC_DV":"��Ÿ����","TRSC_PFMC_ST":"����(��ü) �Ϸ�","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","RCV_ACCT_BNK_CD_NM":"G ����","RCV_ACCT_NO":"777-77-777777-0","RCV_ACCT_OWAC_NM":"�ٻ���","VAT_PROC_DV":"B01001","RTRT_TYP_DV":"B09002","RTRT_ST":"B10099","GRIDKEY":"ExctnStgDv=1&ExctnRegDt=20130708&ExctnRegDrtm=165941&ExctnExecDt=20130708&ExctnExecTm=170336&TrscPfmcSt=B04110&TrscEvdcDv=E&ButrId=T201007232362426&ItxpRegNcnt=1&RcvBnkNm=G ����&RcvAcctBnkCd=003&RcvAcctNo=777777777770&RcvAcctOwacNm=�ٻ���&TrnsAmt=100&UseSplyAmt=91&UseVatAmt=9"};
                
            } else if(sel_TrscEvdcDvGb == "C") {
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-25","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"2013-03-04","VAT_PROC_DV_NM":"�ΰ��� ��ó��","SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_VAT_AMT":"0","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"","SPLR_CO_NM":"�� A ������","VAT_PROC_DV":"�ΰ��� ��ó��","RTRT_TYP_DV":"B01001","RTRT_ST":"B10099","GRIDKEY":"SetlScheDt=20130325&BuyDt=20130331&CrdNo=1111222233334444&BuyClctNo=N000040904&BuyAmt=220&UseSplyAmt=200&UseVatAmt=20&CanVatAmt=0&ButrId=C201111212383103&TrscPfmcSt=B04110"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-23","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"2013-03-22","VAT_PROC_DV_NM":"�ΰ��� ��ó��","SUM_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_VAT_AMT":"0","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"","SPLR_CO_NM":"�� B ������","VAT_PROC_DV":"�ΰ��� ��ó��","RTRT_TYP_DV":"B01001","RTRT_ST":"B10099","GRIDKEY":"SetlScheDt=20130423&BuyDt=20130322&CrdNo=1111222233334444&BuyClctNo=N000040904&BuyAmt=1100&UseSplyAmt=1000&UseVatAmt=100&CanVatAmt=0&ButrId=C201111212383103&TrscPfmcSt=B04110"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-05-23","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"2013-04-19","VAT_PROC_DV_NM":"�ΰ��� ��ó��","SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_VAT_AMT":"0","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"","SPLR_CO_NM":"�� C ������","VAT_PROC_DV":"�ΰ��� ��ó��","RTRT_TYP_DV":"B01001","RTRT_ST":"B10099","GRIDKEY":"SetlScheDt=20130523&BuyDt=20130419&CrdNo=1111222233335555&BuyClctNo=N000040904&BuyAmt=220&UseSplyAmt=200&UseVatAmt=20&CanVatAmt=0&ButrId=C201111212383103&TrscPfmcSt=B04110"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-11-25","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"2013-10-23","VAT_PROC_DV_NM":"�ΰ��� ��ó��","SUM_AMT":"500","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_FIX_VAT_AMT":"0","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"","SPLR_CO_NM":"�� E ������","VAT_PROC_DV":"�ΰ��� ��ó��","RTRT_TYP_DV":"B01001","RTRT_ST":"B10099","GRIDKEY":"SetlScheDt=20131125&BuyDt=20131023&CrdNo=1111222233334444&BuyClctNo=N000040904&BuyAmt=500&UseSplyAmt=455&UseVatAmt=45&CanVatAmt=0&ButrId=C201111212383103&TrscPfmcSt=B04110"};
                gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-12-23","TRSC_PFMC_ST":"����(��ü) �Ϸ�","BUY_DT":"2013-12-04","VAT_PROC_DV_NM":"�ΰ��� ��ó��","SUM_AMT":"9060","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_FIX_VAT_AMT":"0","RTRT_TYP_DV_NM":"�ΰ��� ȯ��","RTRT_ST_NM":"","CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"","SPLR_CO_NM":"�� D ������","VAT_PROC_DV":"�ΰ��� ��ó��","RTRT_TYP_DV":"B01001","RTRT_ST":"B10099","GRIDKEY":"SetlScheDt=20131223&BuyDt=20131204&CrdNo=1111222233335555&BuyClctNo=N000040904&BuyAmt=9060&UseSplyAmt=8237&UseVatAmt=823&CanVatAmt=0&ButrId=C201111212383103&TrscPfmcSt=B04110"};
                
            }
                       

            //���������ȸ
            document.all["idVrtlAcctNo"].innerHTML="20000000000008";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="A ����";
            document.all["idVrtlAcctIssuDt"].innerHTML="2014-03-12";
            document.all["idVrtlAcctIssuSt"].innerHTML="��밡��";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="�̻��";
            document.frm.ISSU_BNK_CD.value="003";
            document.frm.ISSU_DT.value="20140312";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="20000000000008";
            
            //�����������
            document.frm.SacPrgrSt.value = "0";
            
        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){
            if(sel_TrscEvdcDvGb == "") {                
                
            } else if(sel_TrscEvdcDvGb == "T") {

            } else if(sel_TrscEvdcDvGb == "E") {
                
            } else if(sel_TrscEvdcDvGb == "C") {
                
            }
            
            //���������ȸ
            document.all["idVrtlAcctNo"].innerHTML="20000000000008";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="A ����";
            document.all["idVrtlAcctIssuDt"].innerHTML="2014-02-12";
            document.all["idVrtlAcctIssuSt"].innerHTML="��밡��";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="�̻��";
            document.frm.ISSU_BNK_CD.value="020";
            document.frm.ISSU_DT.value="20140212";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="20000000000008";
            
            //�����������
            document.frm.SacPrgrSt.value = "1";

        }
        
    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
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
           window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
       }     
    }

</script>           
            
<!-- ======== 2014 �׸��� ��ü �۾� =========-->
            
</body>
</html> 