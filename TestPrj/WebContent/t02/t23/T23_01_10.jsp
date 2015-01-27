<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T23_01_10.jsp
 *   Description        : 카드환원요청 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014. 01. 15     				예기해        		
 *
 *  @author 예기해
 *  @Since  2014. 01. 15
 *  @Version 1.0
 * 
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!-- //2014 그리드 교체 작업 head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //2014 그리드 교체 작업 head end -->

<%
 	String VatPsvApcYn          =   null;  //부가가치세액보전환원여부
	String VatProcDv            =   StringUtil.null2void(SessionUtil.getRequestValue(request, "VatProcDv"));                // 부가세처리구분
	String RtrtFixVatAmt        =   StringUtil.null2void(SessionUtil.getRequestValue(request, "RtrtFixVatAmt"));            // 환원확정부가세금액
	String RtrtFixSplyAmt       =   StringUtil.null2void(SessionUtil.getRequestValue(request, "RtrtFixSplyAmt"));           // 환원확정공급금액
	String INQ_STR_DT           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "InqStrDt"));                 // 조회시작날짜
	String INQ_END_DT           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "InqEndDt"));                 // 조회종료날짜
	String PayPlanDtlsRegNcnt   =   StringUtil.null2void(SessionUtil.getRequestValue(request, "PayPlanDtlsRegNcnt"));       // 연구비보전요청건수
	String PlanAmt              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "PlanAmt"));                  // 연구비보전요청금액
	String VrtlAcctNo           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "VrtlAcctNo"));               // 가상계좌번호
	String EXIST_VACC           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "EXIST_VACC"));               // 가상계좌발급유무
	String CanDvCd              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "CanDvCd"));                  // 취소구분코드 (A,P,U)
	String mapKey               =   StringUtil.null2void(SessionUtil.getRequestValue(request, "AUTO_MAP_KEY"));
	
	String RevoAmt              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "RevoAmt"));                  // 카드취소가능금액
	String CanCelAmt            =   StringUtil.null2void(SessionUtil.getRequestValue(request, "CanCelAmt"));                // 카드내역취소금액
	int CrdSplyAmt              =   (int)Math.round(Integer.parseInt(CanCelAmt) / 1.1);                                     // 카드내역취소금액의 공급가액  
	int CrdVatAmt               =   (int)Math.round(CrdSplyAmt * 0.1);                                                      // 카드내역취소금액의 부가가치세액
	
	String CrdNo                =   StringUtil.null2void(SessionUtil.getRequestValue(request, "CrdNo").replaceAll("-","")); // 카드번호
	String BuyApvNo             =   StringUtil.null2void(SessionUtil.getRequestValue(request, "CTblBuyApvNo"));             // 매입승인번호
	String ApvDt                =   StringUtil.null2void(SessionUtil.getRequestValue(request, "ApvDt").replaceAll("-","")); // 승인일자
	String RegSeq               =   StringUtil.null2void(SessionUtil.getRequestValue(request, "RegSeq"));                   // 등록순번
	
	CrdNo = CrdNo.replace("-","");
	ApvDt = ApvDt.replace("-","");
	
	String AgrmtSeqNo           =   SessionUtil.getRequestValue(request, "AgrmtSeqNo");                            // 협약일련번호
	String AgrmtInstId          =   SessionUtil.getRequestValue(request, "AgrmtInstId");                           // 협약기관ID
	String ButrId               =   SessionUtil.getRequestValue(request, "ButrId");                                // 증빙일련번호

%>

    <!-- head title -->
    <div class="title">
        <p class="pop_title">카드결제 복원요청 (등록취소[가맹점&RCMS])</p>
    </div>
    <!-- //head title// --> 

     <div id="body">
         <form name="frm" method="post">
	        <input type="hidden" id="S_NPRF_INST_YN"    name="S_NPRF_INST_YN"   value="<%//=null2void(crdResult.getNprfInstYn()) %>"/>
	        <input type="hidden" id="itxp_cnt"          name="itxp_cnt"         value="1"/>                 <!-- 비목등록건수 -->
	        <input type="hidden" id="dockeyNo"          name="dockeyNo"         value=""/>                  <!-- 선택된 증빙테이블키 -->
	        <input type="hidden" id="doc_dv"            name="doc_dv"           value=""/>                  <!-- 증빙서류/인건비내역 -->
	        <input type="hidden" id="docKey"            name="docKey"           value=""/>                  <!-- 생성된EDMS_dockey -->
	        <input type="hidden" id="docName"           name="docName"          value=""/>                  <!-- 리턴결과값(등록파일명) -->
	        <input type="hidden" id="attr98"            name="attr98"           value=""/>                  <!-- 리턴결과값(등록파일명) -->
	        <input type="hidden" id="attr99"            name="attr99"           value=""/>                  <!-- 리턴결과값(등록파일갯수) -->
	        <input type="hidden" id="p_rchrInfo"        name="p_rchrInfo"       value=""/>                  <!-- 인건비내역 -->
	        <input type="hidden" id="methodName"        name="methodName"       value=""/>                  <!-- 메소드명 -->
	        <input type="hidden" id="CanDvCd"           name="CanDvCd"          value="<%=CanDvCd %>"/>     <!-- 취소구분코드 -->
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>요청현황조회 상세조회</h3>
            <!-- 과제별현황 상세조회 리스트 start -->
            <div class="t10 b25 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="요청현황조회 상세조회 리스트" class="tbl_type02">
                <caption>요청현황조회 상세조회 리스트</caption>
				<colgroup>
					<col width="20%" />
					<col width="30%" />
					<col width="20%" />
					<col width="30%" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">부가세처리구분</th>
						<td colspan="3" class="ll"><%= CodeUtil.getCode("RNDB01", StringUtil.null2void(VatProcDv)) %></td>
					</tr>
                    <tr>
                        <th scope="row">복원공급금액</th>
                        <td class="ar"><%=FormatUtil.getMoneyForm(RtrtFixSplyAmt) %> 원</td>
                        <th scope="row">복원부가세금액</th>
                        <td class="ar ll"><%= FormatUtil.getMoneyForm(RtrtFixVatAmt) %> 원</td>
                    </tr>
					<tr>
						<th scope="col">카드내역취소금액</th>
						<td class="ar"><%= FormatUtil.getMoneyForm(CanCelAmt) %> 원</td>
						<th scope="row">카드취소가능금액</th>
						<td class="ar ll"><%= FormatUtil.getMoneyForm(RevoAmt) %> 원</td>
					</tr>
				</tbody>
			</table>
            </div>
            <!-- //요청현황 상세조회 리스트 end// -->
	

			<!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->
			    <div class="pop_total_box">
			      <p class="fl t05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> 건]</p>
			      <p class="ar b05">
			          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="인쇄"/></a>
			          <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="저장"/></a>
			      </p>
			      <p class="cb"></p>
			    </div>
			      
			     <!-- 그리드 Start -->
			     <div>
			         <script>
			         rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "226", "#FFFFFF", "transparent");
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
			<!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->                



                <!-- action bt start -->
                <div class="pop_action_bt ar">
                    <a href="#" class="bt_action2-1" title="저장" onclick="uf_save(); return false;"><span class="bt_sp">저장</span></a>
                </div>
                <!-- //action bt end// --> 
	            <!-- 주의사항 start -->
	            <div class="pop_guide_box">
	                <div class="pop_guide_boxtd">
	                    <ul>
	                        <li>수정취소금액은 카드내역취소금액과 같아야 합니다.</li>
	                        <li>수정취소금액은 수정취소공급가액 + 수정부가가치세액과 같아야 합니다.</li>
	                        <li>카드내역취소내용에 맞게 증빙문서와 취소금액에 대한 부가세를 수정하셔야합니다.</li>
	                    </ul>    
	                </div>
	            </div>
	            <!-- //주의사항 end// -->    

     </div>
     <!-- //content end// -->
     </form>
	</div>
	
                

<!-- //2014 그리드 교체 작업 footer start -->
<%@ include file="/inc/jspFooter_popup.jsp" %>
<!-- //2014 그리드 교체 작업 footer end -->



<script type="text/javascript">
	
 /******************************************************************
 * uf_save      카드결제복원요청 (가맹점 취소)
 * @param
 * @return
 ******************************************************************/

var agrmtSeqNo = "<%=AgrmtSeqNo%>";

function uf_save(){
    var frm = document.frm;
    var sumAmt      = 0;
    var sumSplyAmt  = 0;
    var sumVatAmt   = 0;
    var possSplyAmt = 0;
    var possVatAmt  = 0;
    var NprfInstYn  = "<%//=sbjt_data.getNprfInstYn()%>";
    
    for(var i=0; i<collection.getLength(); i++) {
    	    	
        sumAmt      += Number(gridRoot.getItemFieldAt(i, "UPD_CAN_AMT"));		//수정취소금액
        sumSplyAmt  += Number(gridRoot.getItemFieldAt(i, "UPD_CAN_SPLY_AMT"));	//수정취소공급가액
        sumVatAmt   += Number(gridRoot.getItemFieldAt(i, "UPD_CAN_VAT_AMT"));	//수정취소부가가치세액

        possSplyAmt += Number(gridRoot.getItemFieldAt(i, "POSS_SPLY_AMT"));	//취소가능공급금액
        possVatAmt  += Number(gridRoot.getItemFieldAt(i, "POSS_VAT_AMT"));	//취소가능부가세금액       
        
        if(Number(gridRoot.getItemFieldAt(i, "UPD_CAN_AMT")) > <%=PlanAmt%>) {
            alert("수정취소금액은 카드내역취소금액보다 클 수 없습니다.");
            return;                       
        } else if( (Number(gridRoot.getItemFieldAt(i, "TRNS_AMT")) - Number(gridRoot.getItemFieldAt(i, "CAN_TRNS_AMT"))) < Number(gridRoot.getItemFieldAt(i, "UPD_CAN_AMT")) ) {
            alert("수정취소금액은 이체금액보다 클 수 없습니다.\n" + (i + 1) + "번 내역의 수정취소가능금액은 " + (Number(getCell(obj, i, "이체금액")) - Number(getCell(obj, i, "취소금액"))) + "원 입니다.");
            return;
        } else if( (Number(gridRoot.getItemFieldAt(i, "UPD_CAN_SPLY_AMT")) + Number(gridRoot.getItemFieldAt(i, "UPD_CAN_VAT_AMT"))) != Number(gridRoot.getItemFieldAt(i, "UPD_CAN_AMT")) ) {
            alert("취소금액에 대해 [부가세변경]을 통한 수정취소공급가액과 수정취소부가가치세액을 입력해야 합니다.");
            return;            
        } else if( Number(gridRoot.getItemFieldAt(i, "UPD_CAN_SPLY_AMT")) > Number(gridRoot.getItemFieldAt(i, "POSS_SPLY_AMT")) ) {
        	alert("수정취소공급가액이 취소가능공급금액 이상입니다. 수정취소공급금액을 수정해야 합니다.");
        	return;
        } else if( Number(gridRoot.getItemFieldAt(i, "UPD_CAN_VAT_AMT")) > Number(gridRoot.getItemFieldAt(i, "POSS_VAT_AMT")) ) {
        	alert("수정취소부가가치세액이 취소가능부가세금액 이상입니다. 수정취소부가세금액을 수정해야 합니다.");
        	return;
        }    
        
        for(var i=0; i<collection.getLength(); i++) {
	        if( !(("B0301" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD") && "Y" == NprfInstYn) 
		            || ("B0206" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD"))
		            || ("B0206006" == gridRoot.getItemFieldAt(i, "SUB_DTLS_ITXP_CD"))) ){
			            if(Number(gridRoot.getItemFieldAt(i, "UPD_CAN_AMT")) > 0 && gridRoot.getItemFieldAt(i, "POP_YN") == "N") {
			                alert("증빙수정작업이 실행되지 않은 건이 있습니다. 증빙수정 후 저장하시기 바랍니다.");
			                return;
			            }	        
		        }        	
        }       
    }
    
    
    if(sumAmt < 0) {
        alert("수정취소금액은 양수만 입력이 가능합니다.");
        return;
    } else if(sumAmt == 0) {
        alert("수정취소금액이 입력되지 않았습니다.");
        return;
    }
<%--     
    else if(sumAmt != <%=PlanAmt%>) {
        alert("수정취소금액이 수신된 카드내역취소금액과 같지 않습니다.\n수정취소금액은 카드내역취소금액과 같아야 합니다.");
        return;     
    } 
--%>    
    else if(sumSplyAmt == 0) {
        alert("수정취소공급가액이 입력되지 않았습니다.\n부가세변경을 진행하여 주세요.");
        return;
    }
<%--     
    else if(sumSplyAmt+sumVatAmt != <%=PlanAmt%>) {
        alert("수정취소공급가액과 수정취소부가가치세액의 합계와 수신된 카드취소금액과 같지 않습니다.");
        return;     
    } 
  
    else if(sumAmt > <%= RevoAmt %>) {
        alert("취소가능금액보다 수정취소금액이 클 수 없습니다.\n금액을 수정해 주세요.");
        return;
    }
--%>      
    //-----------------------------------
    //  증빙서류 체크(비영리기관의 간접비의 경우 체크하지 않음) 
    //  연구과제추진비의 전자, 기타경우 체크하지 않음
    //-----------------------------------    
    for(var i=0; i<collection.getLength(); i++) {
        if( !(("B0301" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD") && "Y" == NprfInstYn) 
                || ("B0206" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD"))
                || ("B0206006" == gridRoot.getItemFieldAt(i, "SUB_DTLS_ITXP_CD"))) ){
                if(null==gridRoot.getItemFieldAt(i, "FILE_NM") || ""==gridRoot.getItemFieldAt(i, "FILE_NM")){
                    alert("증빙서류을 등록해주세요.");
                    return;
                }
            }
    }
    
    
    /****************************************************/
    /*                  개별부 DATA                     */
    /****************************************************/
    get2post(frm, "ButrId=<%=ButrId%>");
    get2post(frm, "PlanAmt="+sumAmt);           // 취소금액
    get2post(frm, "PlanSplyAmt="+sumSplyAmt);   // 취소공급금액
    get2post(frm, "PlanVatAmt="+sumVatAmt);     // 취소부가세금액
    get2post(frm, "PayPlanDtlsRegNcnt=1");  
    get2post(frm, "VrtlAcctNo=<%=VrtlAcctNo%>");
    get2post(frm, "CrdNo=<%=CrdNo%>");         /* 카드번호     */
    get2post(frm, "BuyClctNo=<%=BuyApvNo%>");  /* 매입승인번호 */
    get2post(frm, "ApvDt=<%=ApvDt%>");         /* 승인일자     */
    get2post(frm, "RegSeq=<%=RegSeq%>");       /* 등록순번     */
    get2post(frm, "AUTO_MAP_KEY=<%=mapKey%>");
    
    /****************************************************/
    /*                  반복부 DATA                     */
    /****************************************************/
    
    for(var i=0; i<collection.getLength(); i++) {
        if(Number(gridRoot.getItemFieldAt(i, "UPD_CAN_AMT")) > 0){
            get2post(frm, gridRoot.getItemFieldAt(i, "GRIDKEY"));
            get2post(frm, "CanTrnsAmt="   + gridRoot.getItemFieldAt(i, "CAN_TRNS_AMT"));
            get2post(frm, "CanPlanAmt="   + gridRoot.getItemFieldAt(i, "UPD_CAN_AMT"));
            get2post(frm, "CanSplyAmt="   + gridRoot.getItemFieldAt(i, "UPD_CAN_SPLY_AMT"));           
            get2post(frm, "CanVatAmt="    + gridRoot.getItemFieldAt(i, "UPD_CAN_VAT_AMT"));           
            get2post(frm, "EtcEvdcSeqNo=" + gridRoot.getItemFieldAt(i, "ETC_EVDC_SEQ_NO"));       
            get2post(frm, "FileNm="       + gridRoot.getItemFieldAt(i, "FILE_NM"));                
        }    	
    }
    
    if(!confirm("복원요청 처리하시겠습니까?")) {
    	return;
    }
    
    
    uf_proce_display_on();  //로딩바

    setTimeout(
            function(){
                    try{   
                        reset_submit(); // 'wait'
                        alert("카드결제복원 요청되었습니다.");
                    }finally{
                        removeTempAttribute(document.frm);  //get2post 삭제
                        opener.fn_url("/t02/t21/T21_01_00.jsp?autosrch=Y&AUTO_MAP_KEY="+<%=mapKey%>);
                        window.close();
                    }
                
                }, 1000);   // 1초후 실행 1000 = 1초s
}


/******************************************************************
 * edmsReturnAction     EDMS 반환값 셋팅
 * @param
 * @return
******************************************************************/


function edmsReturnAction(){
    var dockeyNo, docname,dockey;
    var frm = document.frm;
    docKeyNo= frm.dockeyNo.value;
    docKey  = frm.docKey.value;
    docName = (frm.docName.value).replace(/=/gi,"-").replace(/&/gi,"n");

    if(docName.length>0){
        if("1"==document.frm.doc_dv.value){        	
        	gridRoot.setItemFieldAt(docKey, docKeyNo, "ETC_EVDC_SEQ_NO");
        	gridRoot.setItemFieldAt(docName, docKeyNo, "FILE_NM");
        	gridRoot.setItemFieldAt("[등록]", docKeyNo, "FILE_YN");        	
        }
    }
}

/******************************************************************
 * uf_edmsUploadFile        EDMS파일업로드 공통메소드 호출
 * @param
 * @return
******************************************************************/
function uf_edmsUpload(mode, idx, etcEvdcSeqNo){
    var frm     =   document.frm;
    var docKey;
    var usrId;          // 사용자ID
    var hmpwRoleDv;     // 사용자권한 
    var rcmsGrpCd;      // RCMS그룹코드
    var evdcDv;

    frm.dockeyNo.value  = idx;
    usrId               = "<%//=usr_data.getUsrId()%>";
    hmpwRoleDv          = "03";
    evdcDv              = "C";
    
  	//첨부파일
    edmsUploadFileNew("frm", mode, docKey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);    
}





/******************************************************************
 * fnFileEvdc        Grid Event
 * @param
 * @return
******************************************************************/
function fnGridEvent(rowIndex, columnIndex, dataRow, dataField){
    if(dataField == "ETC_EVDC_BTN") {
    	fnGridFileEvdc(rowIndex, columnIndex, dataRow, dataField);
    } else if(dataField == "VAT_BTN") {
    	if(gridRoot.getItemFieldAt(rowIndex, "UPD_CAN_AMT")== "0") {
    		alert("수정취소금액이 입력되지 않았습니다.");
    		return;    		
    	}
        if (Number(gridRoot.getItemFieldAt(rowIndex, "UPD_CAN_AMT")) > <%=PlanAmt%>) {
            alert("수정취소금액이 취소가능금액보다 큽니다.");
            return;
        }
    	if (gridRoot.getItemFieldAt(rowIndex, "USE_VAT_AMT")== "0") {    		    		    		
    		gridRoot.setItemFieldAt(gridRoot.getItemFieldAt(rowIndex, "UPD_CAN_AMT"), rowIndex, "UPD_CAN_SPLY_AMT");
    	} else {
    	    fnVatAmtEvent(rowIndex, columnIndex, dataRow, dataField);
    	}        
    }
}




/******************************************************************
 * 부가가치세액변경
 * @param
 * @return 
 ******************************************************************/

function fnVatAmtEvent(rowIndex, columnIndex, dataRow, dataField) {
	var frm = document.frm;
    uf_popup_crdAmt_updt(frm, 
    		gridRoot.getItemFieldAt(rowIndex, "UPD_CAN_AMT"),
    		gridRoot.getItemFieldAt(rowIndex, "UPD_CAN_SPLY_AMT"),
    		gridRoot.getItemFieldAt(rowIndex, "UPD_CAN_VAT_AMT"),
            "0","grid2", rowIndex, "V");
 }
 
// 아이템 내역 수정
function changeItem(rowIdx, editField, selectedValue) {
	
    if(typeof rowIdx!="undefined") editRowIndex = rowIdx;
    if(typeof editField!="undefined") editDataField = editField;
    
    gridRoot.setItemFieldAt(selectedValue, editRowIndex, editDataField);
} 


/******************************************************************
 * fnFileEvdc        증빙서류 등록
 * @param
 * @return
******************************************************************/


function fnGridFileEvdc(rowIndex, columnIndex, dataRow, dataField){
    var frm  = document.frm;
    var mode = "update";
    var etcEvdcSeqNo = "";
    
    
    etcEvdcSeqNo = gridRoot.getItemFieldAt(rowIndex, "ETC_EVDC_SEQ_NO");
    if(etcEvdcSeqNo == "") {
        alert("등록된 증빙서류파일이 없습니다.\n[연구비사용결과조회-비목수정] 기능을 이용하여 해당 증빙의 증빙서류파일을 먼저 등록하십시오.");
        return;
    }	
    
    gridRoot.setItemFieldAt("Y", rowIndex, "POP_YN");    
    etcEvdcSeqNo     = gridRoot.getItemFieldAt(rowIndex, "ETC_EVDC_SEQ_NO");
    frm.doc_dv.value = "1";
    uf_edmsUpload(mode, rowIndex, etcEvdcSeqNo);
}
	
</script>

<!-- /* ********** 2014 그리드 교체 작업  ********** */ -->
<script type="text/javascript">
    function uf_search(){        
        uf_proce_display_on();  //로딩바
        setTimeout(function(){SetData(agrmtSeqNo);}, 1000);   // 1초후 실행 1000 = 1초s
    }   
</script>
<!-- /* ********** 2014 그리드 교체 작업  ********** */ -->


<script type="text/javascript">

$(document).ready(function() {
	/* ********** 2014 그리드 교체 작업 rMateGrid 초기화  ********** */
    rMateGridInit();
    /* ********** 2014 그리드 교체 작업 rMateGrid 초기화  ********** */
});


/* ********************** 2014 그리드 교체 작업 rMateGrid setting START *********************** */
 
 
 //
 var layoutStr = "\
 <?xml version=\"1.0\" encoding=\"utf-8\"?>\
 <rMateGrid>\
 <NumberFormatter id=\"numfmt\" />\
 <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
 <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
 <DataGrid id=\"dg1\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\">\
		 <columns>\
			 <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
			 <DataGridColumn id=\"DTLS_ITXP_NM\"            dataField=\"DTLS_ITXP_NM\"                 headerText=\"세목명\"                 width=\"90\"   visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"        dataField=\"SUB_DTLS_ITXP_NM\"             headerText=\"세세목명\"               width=\"90\"   visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"MITM_NM\"                 dataField=\"MITM_NM\"                      headerText=\"품목\"                   width=\"80\"   visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"TRNS_AMT\"                dataField=\"TRNS_AMT\"                     headerText=\"이체금액\"               width=\"80\"   visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"USE_SPLY_AMT\"            dataField=\"USE_SPLY_AMT\"                 headerText=\"공급금액\"               width=\"80\"   visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"USE_VAT_AMT\"             dataField=\"USE_VAT_AMT\"                  headerText=\"부가가치세액\"           width=\"100\"  visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"       dataField=\"RTRT_FIX_SPLY_AMT\"            headerText=\"복원공급금액\"           width=\"110\"  visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"        dataField=\"RTRT_FIX_VAT_AMT\"             headerText=\"복원부가세금액\"         width=\"130\"  visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"UPD_CAN_AMT\"             dataField=\"UPD_CAN_AMT\"                  headerText=\"수정취소금액\"           width=\"110\"  visible=\"true\"  textAlign=\"right\"  editable=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"UPD_CAN_SPLY_AMT\"        dataField=\"UPD_CAN_SPLY_AMT\"             headerText=\"수정취소공급가액\"       width=\"120\"  visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"UPD_CAN_VAT_AMT\"         dataField=\"UPD_CAN_VAT_AMT\"              headerText=\"수정취소부가가치세액\"   width=\"130\"  visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"VAT_BTN\"                 dataField=\"VAT_BTN\"                      headerText=\"부가가치세액변경\"       width=\"110\"  visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" />\
			 <DataGridColumn id=\"ETC_EVDC_BTN\"            dataField=\"ETC_EVDC_BTN\"                 headerText=\"증빙서류등록\"           width=\"100\"  visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" />\
			 <DataGridColumn id=\"FILE_YN\"                 dataField=\"FILE_YN\"                      headerText=\"증빙서류등록여부\"       width=\"110\"  visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"POSS_SPLY_AMT\"           dataField=\"POSS_SPLY_AMT\"                headerText=\"취소가능공급금액\"       width=\"110\"  visible=\"false\" textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"POSS_VAT_AMT\"            dataField=\"POSS_VAT_AMT\"                 headerText=\"취소가능부가세금액\"     width=\"110\"  visible=\"false\" textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"POP_YN\"                  dataField=\"POP_YN\"                       headerText=\"증빙팝업실행여부\"       width=\"110\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\"  />\
			 <DataGridColumn id=\"AGRMT_SEQ_NO\"            dataField=\"AGRMT_SEQ_NO\"                 headerText=\"협약일련번호\"           width=\"100\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"AGRMT_INST_ID\"           dataField=\"AGRMT_INST_ID\"                headerText=\"협약기관ID\"             width=\"120\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"USE_REG_DT\"              dataField=\"USE_REG_DT\"                   headerText=\"비목등록일자\"           width=\"110\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"USE_REG_TM\"              dataField=\"USE_REG_TM\"                   headerText=\"비목등록시간\"           width=\"110\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"USE_REG_SN\"              dataField=\"USE_REG_SN\"                   headerText=\"비목등록순번\"           width=\"100\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"DTLS_ITXP_CD\"            dataField=\"DTLS_ITXP_CD\"                 headerText=\"세목코드\"               width=\"100\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"        dataField=\"SUB_DTLS_ITXP_CD\"             headerText=\"세세목코드\"             width=\"120\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"VAT_PSV_APC_YN\"          dataField=\"VAT_PSV_APC_YN\"               headerText=\"부가가치세액보전\"       width=\"70\"   visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"CAN_TRNS_AMT\"            dataField=\"CAN_TRNS_AMT\"                 headerText=\"취소금액\"               width=\"65\"   visible=\"false\" textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"ETC_EVDC_SEQ_NO\"         dataField=\"ETC_EVDC_SEQ_NO\"              headerText=\"증빙서류일련번호\"       width=\"100\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"FILE_NM\"                 dataField=\"FILE_NM\"                      headerText=\"파일명\"                 width=\"80\"   visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"GRIDKEY\"                 dataField=\"GRIDKEY\"                      headerText=\"GridKey\"                width=\"120\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
		</columns>\
        <dataProvider>\
	        <SpanArrayCollection source=\"{$gridData}\"/>\
	    </dataProvider>\
	    <footers>\
	        <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
			     <DataGridFooterColumn />\
			     <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
			     <DataGridFooterColumn />\
			     <DataGridFooterColumn />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\"      formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"   formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{UPD_CAN_AMT}\"       formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{UPD_CAN_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{UPD_CAN_VAT_AMT}\"   formatter=\"{numfmt}\" textAlign=\"right\" />\
		    </DataGridFooter>\
		</footers>\
	    <dataProvider>\
	    	<SpanArrayCollection source=\"{$gridData}\"/>\
	   	</dataProvider>\
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
        gridApp.setLayout(layoutStr);   //그리드 레이아웃 생성
        
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

    		//부가가치세액변경 팝업/증빙서류등록 팝업
            if (dataField == "VAT_BTN" || dataField == "ETC_EVDC_BTN") {            
            	fnGridEvent(rowIndex, columnIndex, dataRow, dataField);
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
        

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //이벤트 등록
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            dataGrid.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", uf_search);
        
        //data 출력 후 실행할 이벤트 등록
        gridRoot.addEventListener("dataComplete", setTotCnt);
        gridRoot.addEventListener("dataComplete", columnBackGroundStyle);
                        
        gridRoot.addEventListener("itemDataChanged", itemDataChangeHandler);

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    
    //토탈 수 구하기
    function setTotCnt() {
        if (collection == null)
            collection = gridRoot.getCollection();
        if (collection == null) {
            return;
        };

        var clen = collection.getLength();
        $("#InqPrsTotlNcnt").text(clen);    //그리드 자료수                
    }
    
    // 그리드에서 수정이 일어나면 불려집니다.
    function itemDataChangeHandler(event) {
        var rowIndex = event.getRowIndex();                 // 변경된 행번호
        var columnIndex = event.getColumnIndex();       // 변경된 열번호
        var dataField = event.getDataField();               // 변경된 열의 데이타 필드
        var dataRow = gridRoot.getItemAt(rowIndex); // 변경된 데이타 레코드
        // 수정한 필드에 따라 재호출 한다.
        
        var footer = gridRoot.getObjectById("footer");
            footer.invalidateData();
            dataGrid.invalidateList();
        
        
    }
    
    
    //데이터 셋팅    
    var cnt = 0;
    function setGridData(seqNo){        
        try{            
            var gridValue = [];       
      
            //gridValue[cnt++] = {"AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20111121","USE_REG_TM":"093815","USE_REG_SN":"1","DTLS_ITXP_CD":"B0202","DTLS_ITXP_NM":"연구활동비","SUB_DTLS_ITXP_CD":"B0202013","SUB_DTLS_ITXP_NM":"비품구입비","MITM_NM":"A4용지","TRNS_AMT":"34750","USE_SPLY_AMT":"31591","USE_VAT_AMT":"3159","VAT_PSV_APC_YN":"Y","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","CAN_TRNS_AMT":"0","UPD_CAN_AMT":"0","UPD_CAN_SPLY_AMT":"0","UPD_CAN_VAT_AMT":"0","ETC_EVDC_SEQ_NO":"P20111121093755-G00000000000003-10112249","FILE_NM":"비목증빙_예제.xlsx\\;","GRIDKEY":"&BuitId=U201111214175230&AgrmtSeqNo=G00000000000003&AgrmtInstId=10112249&UseRegDt=20111121&UseRegTm=093815&UseRegSn=1&DtlsItxpCd=B0202&DtlsItxpNm=연구활동비&SubDtlsItxpCd=B0202013&SubDtlsItxpNm=비품구입비&MitmNm=A4용지&TrnsAmt=34750&UseSplyAmt=31591&UseVatAmt=3159&VatPsvApcYn=Y&CanTrnsAmt=0&EtcEvdcSeqNo=P20111121093755-G00000000000003-10112249&FileNm=비목증빙_예제.xlsx\\;","VAT_BTN":"부가세변경","ETC_EVDC_BTN":"증빙서류등록","FILE_YN":"[등록]","POSS_SPLY_AMT":"31591","POSS_VAT_AMT":"3159","POP_YN":"N"};
            
            //1. 신규과제
            if("G00000000000001" == seqNo){

                
            //2. 진행과제
            }else if("G00000000000002" == seqNo){

            	gridValue[cnt++] = {"DTLS_ITXP_NM":"연구활동비","SUB_DTLS_ITXP_NM":"세미나개최비","MITM_NM":"세미나 개최비","TRNS_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","UPD_CAN_AMT":"0","UPD_CAN_SPLY_AMT":"0","UPD_CAN_VAT_AMT":"0","VAT_BTN":"부가세변경","ETC_EVDC_BTN":"증빙서류등록","FILE_YN":"[등록]","POSS_SPLY_AMT":"31591","POSS_VAT_AMT":"3159","POP_YN":"N","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140212","USE_REG_TM":"093815","USE_REG_SN":"1","DTLS_ITXP_CD":"B0202","SUB_DTLS_ITXP_CD":"B0202013","VAT_PSV_APC_YN":"Y","CAN_TRNS_AMT":"0","ETC_EVDC_SEQ_NO":"P20131121093755-G00000000000002-10112249","FILE_NM":"예제.xlsx\\;","GRIDKEY":"&BuitId=U201111214175230&AgrmtSeqNo=G00000000000003&AgrmtInstId=10112249&UseRegDt=20111121&UseRegTm=093815&UseRegSn=1&DtlsItxpCd=B0202&DtlsItxpNm=연구활동비&SubDtlsItxpCd=B0202013&SubDtlsItxpNm=세미나개최비&MitmNm=세미나 개최비&TrnsAmt=220&UseSplyAmt=200&UseVatAmt=20&VatPsvApcYn=Y&CanTrnsAmt=0&EtcEvdcSeqNo=P20111121093755-G00000000000002-10112249&FileNm=예제.xlsx\\;",};

            //3. 정산과제(보고서 미제출)
            }else if("G00000000000003" == seqNo){
                
            	gridValue[cnt++] = {"DTLS_ITXP_NM":"연구활동비","SUB_DTLS_ITXP_NM":"교육훈련비","MITM_NM":"훈련비","TRNS_AMT":"9060","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","UPD_CAN_AMT":"0","UPD_CAN_SPLY_AMT":"0","UPD_CAN_VAT_AMT":"0","VAT_BTN":"부가세변경","ETC_EVDC_BTN":"증빙서류등록","FILE_YN":"[등록]","POSS_SPLY_AMT":"31591","POSS_VAT_AMT":"3159","POP_YN":"N","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140201","USE_REG_TM":"093815","USE_REG_SN":"1","DTLS_ITXP_CD":"B0202","SUB_DTLS_ITXP_CD":"B0202013","VAT_PSV_APC_YN":"Y","CAN_TRNS_AMT":"0","ETC_EVDC_SEQ_NO":"P20131121093755-G00000000000003-10112249","FILE_NM":"예제.xlsx\\;","GRIDKEY":"&BuitId=U201111214175230&AgrmtSeqNo=G00000000000003&AgrmtInstId=10112249&UseRegDt=20111121&UseRegTm=093815&UseRegSn=1&DtlsItxpCd=B0202&DtlsItxpNm=연구활동비&SubDtlsItxpCd=B0202013&SubDtlsItxpNm=교육훈련비&MitmNm=훈련비&TrnsAmt=9060&UseSplyAmt=8237&UseVatAmt=823&VatPsvApcYn=Y&CanTrnsAmt=0&EtcEvdcSeqNo=P20111121093755-G00000000000003-10112249&FileNm=예제.xlsx\\;",};

            //4. 정산과제(보고서 제출 완료)
            }else if("G00000000000004" == seqNo){

                
            }
            
            
        }finally{                        
            gridData = gridValue;    //조회결과 JSON 값 가져오기
            rMateGridSetData();  //rMateGrid 구현            
        }
    }

    function SetData(seqNo){
    	if(!seqNo) return false;
    	
        try{            
            document.body.setCapture(); // 'wait'
            document.body.style.cursor = "wait";
            setGridData(seqNo); //Insert    Grid        
            document.body.style.cursor = "auto";
            document.body.releaseCapture(); //setCapture()_Next                
        }finally{
            reset_submit();
        }        
    }
    

    
  	//컬럼 색상변경
    function columnBackGroundStyle() {
      collection = gridRoot.getCollection();
      if (collection == null) {
          alert("collection 객체를 찾을 수 없습니다");
          return;
      }
      
      for (i = 0; i < collection.getLength(); i++) {          
          collection.addCellAttributeDetailAt(i, 9, 1, 1, null, 0xEDF2FE);
          collection.addCellAttributeDetailAt(i, 12, 1, 1, null, 0xEDF2FE);
          collection.addCellAttributeDetailAt(i, 13, 1, 1, null, 0xEDF2FE);          
      }
    }    
  	
  
    /* ********************** 2014 그리드 교체 작업 rMateGrid setting START *********************** */

</script>
</body>
</html> 