<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_07_10.jsp
 *   Description        : 연구비카드 등록 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ===================================================================================
 *   2013.12.17                    예기해             
 *
 *  @author 예기해
 *  @Since  2013.12.17.
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
<%
    String schParam           = SessionUtil.getRequestValue(request, "schParam");                               // 등록수정구분
    String S_AGRMT_SEQ_NO           = SessionUtil.getRequestValue(request, "S_AGRMT_SEQ_NO");                               // 등록수정구분
%>

<title>과제별 신규카드 등록 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">과제별 신규카드 등록</p>
        </div>
        <!-- //head title// --> 
    </div>

<script type="text/javascript">
    function html_sign() {
        document.form.signed_msg.value = Sign_with_option_with_htmlEx(20,html_template, document.form.plain1.value + ":" + document.form.plain2.value + ":" + document.form.plain3.value, srvcert );    
        //document.form.vid_msg.value = send_vid_info();
    
        return XecureSubmit(document.form);
    }
    ///////////////////////////////////////////////////////////////////////////////////
    //전자서명 끝
    ///////////////////////////////////////////////////////////////////////////////////
    
    
    function uf_opener_search(){
        opener.uf_search('S');
        window.close();
    }
    
    //////////////////////////////////
    //조회 처리
    //////////////////////////////////
    var CrdcoCd = "";
    function uf_search(SchGb){
    	
        var frm = document.frm;
    
        var inx = document.frm.CrdcoCd.selectedIndex;
    
        //전체자료가 다음 자회자료보다 값이 많을시 조회 중지.
        if(SchGb == "N" && totCnt < nCnt){
            return;
        }else if(SchGb == "S"){
        	rMateGridLayoutInit_rMate();
        }
        
        
        if(document.frm.CrdcoCd.options[inx].value == ""){
            alert("카드사를 선택하세요.");
            document.frm.CrdcoCd.focus();
            return;
        }
        
        CrdcoCd = document.frm.CrdcoCd.options[inx].value;
        if( isSubmit() ) return;    // 이중처리
        
        uf_proce_display_on();  //로딩바
        setTimeout(
               function(){
                   search(SchGb, document.frm.CrdcoCd.options[inx].value);
               }
               , 1000);   // 1초후 실행 1000 = 1초
               
        
    }
    
    
    

    //////////////////////////////////
    //등록 처리
    //////////////////////////////////
    function uf_create_rmate(){
        var frm = document.frm;
        var msg = "";
    
        if( isSubmit() ) return;    // 이중처리
    
        
        var dataRow;
        var gridCnt = getGridRowCountRia();
        
        if(gridCnt <= 0){
            alert("조회된 데이타가 없습니다.");
            return;
        }
            
        selectorColumn = gridRoot.getObjectById("selector");    //체크된 ID 가져오기
        var arrIdx = selectorColumn.getSelectedIndices();       //체크된 row 가져오기
        
        if(arrIdx.length <= 0){ 
            alert("처리할 데이타를 선택하세요.");
            return; 
        }
        
        
        for(var i=0;i<arrIdx.length;i++){
            dataRow = gridRoot.getItemAt(arrIdx[i]);
            
            //2013-10-16 유선진 오후 8시 48분 
            //하나SK카드사 일 경우 카드번호 앞 6자리 식별번호가 하나BC카드인경우 등록안되도록 처리  (시작)
            var crdNo = dataRow.CRD_NO.replace(/\-/g, ""); 
            var crdCk = crdNo.substr(0,6);
            
            if(dataRow.CRDCO_CD == "HN"){
                //alert(crdCk);
                if(crdCk == "414025" || crdCk == "558525" || crdCk == "943025" || crdCk == "944025"){
                    alert(dataRow.CRD_NO+"는 하나BC카드입니다.\n카드사를 확인해주시기 바랍니다.");
                    return;
                }
            }
            //하나SK카드사 일 경우 카드번호 앞 6자리 식별번호가 하나BC카드인경우 등록안되도록 처리  (종료)

            if(dataRow.CRDCO_REG_PROC_ST == "5" || dataRow.CRDCO_REG_PROC_ST == "" || null == dataRow.CRDCO_REG_PROC_ST || typeof dataRow.CRDCO_REG_PROC_ST == "undefined"){
            }else{
                if(dataRow.CRDCO_REG_PROC_ST == "4"){
                    alert("해지처리중이므로 등록할 수 없습니다.\n재등록은 해지완료후 가능합니다.");
                    return;
                }
                alert("이미등록되었거나 등록처리중입니다.");
                return;
            }
        }
        
        
        


        if(!confirm("저장하시겠습니까?")){  
            return;
        }          
            
        for(var i=0;i<arrIdx.length;i++){
            dataRow = gridRoot.getItemAt(arrIdx[i]);
            
            get2post(frm, "CrdNo="         +dataRow.CRD_NO);
            get2post(frm, "CrdcoCd="       +dataRow.CRDCO_CD);
            get2post(frm, "CrdPrdDv="      +dataRow.CRD_PRD_DV);
            get2post(frm, "SetlDd="        +dataRow.SETL_DT);
            get2post(frm, "SetlBnkNm="     +dataRow.SETL_BNK_CD_NM);
            get2post(frm, "SetlAcctNo="    +dataRow.SETL_ACCT_NO);
            get2post(frm, "FncInstCd="     +dataRow.CRDCO_CD);
            get2post(frm, "CrdcoNm="       +dataRow.CRDCO_CD_NM);
            get2post(frm, "ValdTrm="       +dataRow.VALD_TRM);
            get2post(frm, "SetlBnkCd="     +dataRow.SETL_BNK_CD); 
            get2post(frm, "CrdcoRegProcSt="+dataRow.CRDCO_REG_PROC_ST);
        }

        ///////////////////////////////////////////////////////////////////////////////////
        //  전자서명 시작
        ///////////////////////////////////////////////////////////////////////////////////
            for(i=0;i<arrIdx.length;i++){
                dataRow = gridRoot.getItemAt(arrIdx[i]);
                
                msg += "CrdNo="      +dataRow.CRD_NO;
                msg += "&CrdcoCd="   +dataRow.CRDCO_CD;
                msg += "&CrdPrdDv="  +dataRow.CRD_PRD_DV;
                msg += "&SetlDd="    +dataRow.SETL_DT;
                msg += "&SetlBnkNm=" +dataRow.SETL_BNK_CD_NM;
                msg += "&SetlAcctNo="+dataRow.SETL_ACCT_NO;
                msg += "&FncInstCd=" +dataRow.CRDCO_CD;
                msg += "&CrdcoNm="   +dataRow.CRDCO_CD_NM;
                msg += "&ValdTrm="   +dataRow.VALD_TRM;
                msg += "&SetlBnkCd=" +dataRow.SETL_BNK_CD;
                msg +=  "|";

            }
        
            var url = "/pop/sign_popup.jsp";
            var obj = "서명에 사용할 인증서 선택";
            var style = "dialogWidth:441px;dialogHeight:475px;center:yes;scroll:no;resizable:no;status:no;";
            var reValue = window.showModalDialog(url, obj, style);
            if(reValue == undefined){
                reValue = window.returnValue;
            }
            

            if(reValue == "ok"){
                uf_proce_display_on();  //로딩바
                
                setTimeout(
                        function(){
                            try{
                            	//세션 사용안함 
                            	if("G00000000000001" == seqNo){
                            		setCookieTraning( "T41_07_10", "Y", 1 );
                            	}
                                reset_submit();
                                alert("저장되었습니다");
                                opener.uf_search();
                                
                                window.close();
                            }finally{
                            }
                        }, 1000);   // 1초후 실행 1000 = 1초s
            }
            return;
        
        ///////////////////////////////////////////////////////////////////////////////////
        //  전자서명 끝
        /////////////////////////////////////////////////////////////////////////////////// 
    }
    

    /**
     * 세션값 생성
     */
    function makeSessData(){
    	var sessGridData = [];
    	
    	//gridData
    	//CrdcoCd
    	
    	// 카드사별로 세션 값 생성
        var sessionNm = "T41_07_10" + "_" + CrdcoCd;
        
        selectorColumn = gridRoot.getObjectById("selector");    //체크된 ID 가져오기
        var arrIdx = selectorColumn.getSelectedIndices();       //체크된 row 가져오기

        for(var j=0;j<arrIdx.length;j++){
        	gridData[arrIdx[j]].CRDCO_REG_PROC_ST = "3";
        }
        dataCtrl.setObjData(sessionNm, JSON.stringify(gridData));
        
        //선택된 카드 정보를 세팅
        var _SESS_DATA = dataCtrl.getObjData("T41_07_00");
        if(_SESS_DATA == null){
        	
        	//신규 정보 생성
	        for(var i=0;i<arrIdx.length;i++){
	            dataRow = gridRoot.getItemAt(arrIdx[i]);
	        	
	            var gridData_41_07_00 = {};
	            gridData_41_07_00.CRD_PRD_DV_NM    = dataRow.CRD_PRD_DV_NM;
	            gridData_41_07_00.CRD_PRD_DV       = dataRow.CRD_PRD_DV;
	            gridData_41_07_00.CRD_NO           = dataRow.CRD_NO;
	            gridData_41_07_00.SETL_BNK_CD_NM   = dataRow.SETL_BNK_CD_NM;
	            gridData_41_07_00.REG_DTM          = currentNowDate2;
	            gridData_41_07_00.CRD_USR_NM       = null;
	            gridData_41_07_00.SETL_BNK_CD      = dataRow.SETL_BNK_CD;
	            gridData_41_07_00.CRDCO_REG_PROC_ST_NM = "등록완료";
	            gridData_41_07_00.CRDCO_NM         = dataRow.CRDCO_CD_NM;
	            gridData_41_07_00.CRDCO_CD         = dataRow.CRDCO_CD;
	            gridData_41_07_00.CRDCO_REG_PROC_ST = "3";
	            gridData_41_07_00.SETL_DD          = "27";
	            gridData_41_07_00.VALD_TRM         = dataRow.VALD_TRM;
	            gridData_41_07_00.SETL_ACCT_NO     = dataRow.SETL_ACCT_NO_PAY;
	            gridData_41_07_00.CRDCO_CD_NM      = dataRow.CRDCO_CD_NM;
	            
	            sessGridData[i] = gridData_41_07_00;
	            
	        }
        	
        }else{
        	sessGridData = JSON.parse(_SESS_DATA);
        	var cnt = sessGridData.length;
        	
        	for(var i=0;i<arrIdx.length;i++){
                dataRow = gridRoot.getItemAt(arrIdx[i]);
                
                var gridData_41_07_00 = {};
                gridData_41_07_00.CRD_PRD_DV_NM     = dataRow.CRD_PRD_DV_NM;
                gridData_41_07_00.CRD_PRD_DV        = dataRow.CRD_PRD_DV;
                gridData_41_07_00.CRD_NO            = dataRow.CRD_NO;
                gridData_41_07_00.SETL_BNK_CD_NM    = dataRow.SETL_BNK_CD_NM;
                gridData_41_07_00.REG_DTM           = currentNowDate2;
                gridData_41_07_00.CRD_USR_NM        = null;
                gridData_41_07_00.SETL_BNK_CD       = dataRow.SETL_BNK_CD;
                gridData_41_07_00.CRDCO_REG_PROC_ST_NM = "등록완료";
                gridData_41_07_00.CRDCO_NM          = dataRow.CRDCO_CD_NM;
                gridData_41_07_00.CRDCO_CD          = dataRow.CRDCO_CD;
                gridData_41_07_00.CRDCO_REG_PROC_ST = "3";
                gridData_41_07_00.SETL_DD           = "27";
                gridData_41_07_00.VALD_TRM          = dataRow.VALD_TRM;
                gridData_41_07_00.SETL_ACCT_NO      = dataRow.SETL_ACCT_NO_PAY;
                gridData_41_07_00.CRDCO_CD_NM       = dataRow.CRDCO_CD_NM;
                
                sessGridData[cnt+i] = gridData_41_07_00;
        	}
        	
        }
        dataCtrl.setObjData("T41_07_00", JSON.stringify(sessGridData));
        
        
        
        //등록된 카드 수 구하기 T41_06_00 세팅값
        var dataCnt = 0;
        for(var k=0;k<gridData.length;k++){
            if(gridData[k].CRDCO_REG_PROC_ST == "3"){
            	dataCnt++;
            }
        }
        
        //연구비카드 정보 업데이트  T41_06_00
        var _SESS_DATA_41_06_00 = dataCtrl.getObjData("T41_06_00");
        if(_SESS_DATA_41_06_00 != null){
        	var sessGridData_41_06_00 = JSON.parse(_SESS_DATA_41_06_00);
            var cnt = sessGridData_41_06_00.length;
            
            for(i=0;i<cnt;i++){
            	//카드가 등록완료 (CRDCO_REG_PROC_ST == "3") 이며 해당카드사와 같을경우
            	if((sessGridData_41_06_00[i].CRDCO_REG_PROC_ST == "1" || sessGridData_41_06_00[i].CRDCO_REG_PROC_ST == "2" || sessGridData_41_06_00[i].CRDCO_REG_PROC_ST == "3" ) 
            			&& CrdcoCd == sessGridData_41_06_00[i].FNC_INST_CD){
            		sessGridData_41_06_00[i].REG_CRD_CNT = String(dataCnt);
            	}
            }
            dataCtrl.setObjData("T41_06_00", JSON.stringify(sessGridData_41_06_00));
        	
        }

    }

</script>







    <div id="body"> 
        <form name="frm" method="post">
        <input type="hidden" name="PrsPgno" value="0" />
        <input type="hidden" name="TrSupYn" value="N" /> <!--거래계속여부-->
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>과제별 신규카드등록</h3>
            <!-- 검색단 start -->
            <div class="pop_search">
                <div class="pop_search_boxt"></div>
                <div class="pop_search_boxc">
                    <fieldset>
                        <legend>연구기관등록 카드사</legend>
                        <table width="680" summary="연구기관등록 카드사" class="pop_tbl_search">
                        <caption>연구기관등록 카드사</caption>
                        <colgroup>
                            <col width="22%" />
                            <col width="35%" />
                            <col width="12%" />
                            <col width="28%" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="col">연구기관등록 카드사</th>
                            <td id="crdSelect"><SELECT name='CrdcoCd'><option value=''>카드사를 선택하세요.</option></SELECT></td>
                            <th scope="col">카드번호</th>
                            <td>
                                <input type="text" name="SearchCrdNo" id="SearchCrdNo"  title="카드번호" class="inputl" style="width:120px;" maxlength="16"/>
                            </td>
                        </tr>
                        </tbody>
                        </table>
                    </fieldset>
                </div>
                <div><img src="/pop/search_box6.gif" alt=" "/></div>
            </div>
            <div class="cb"></div>
            <!-- //검색단 end// --> 
            <!-- 조회 버튼 start -->
            <div class="pop_search_bt">
                <div class="ar"><a href="#" onclick="uf_search('S'); return false" class="bt_search" title="조회"></a></div>
            </div>
            <!-- //조회 버튼 end// -->                


<!-- *************************  rMateGrid ************************* -->
            <!-- 총건수 start -->
            <div class="total_box" style="width:750px">
            <div class="fl b05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> 건 /<span id="InqPrsTotlCnt2">0</span> 건]</div>
             <p class="ar b05">
      
      <a href="#dummy" onclick="excelExport_rMate();"><img src="/bt/bt_save.gif" alt="저장"/></a>
            </p>
            </div>
            <!-- //총건수end// --> 

            <!-- 그리드 Start -->
            <div id="gridDiv" style="width:100%;">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "240", "#FFFFFF");
                </script>
            </div>
            <!-- 그리드 End -->
            <!-- 상세보기 레이어 팝업 Start -->
            <div id="layerPopup" style="display:none;z-index:999999;">
                <div id="layerPopupTitle" style="width:355px;height:30px;">
                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="닫기"></a>
                </div>
                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
            </div>
            <!-- 상세보기 레이어 팝업 End -->
            <div class="t05">
                <p class="guide_bu"><img src="/images/common/white_bu.gif" alt=" "/> 흰색 : 미등록, <img src="/images/common/yellow_bu.gif" alt=" "/> 노란색 : 등록처리중 : 등록처리중/등록확인중/등록완료, <img src="/images/common/red_bu.gif" alt=" "/> 빨간색 : 해지처리중/해지완료</p>
            </div>         
<!-- *************************  rMateGrid ************************* -->


            
            <!-- action bt start -->
            <div class="pop_action_bt">
                <div class="fr"><a href="#dummy" onclick="uf_create_rmate();return false;" class="bt_action2-01" title="확인"><span class="bt_sp">확인</span></a></div>
            </div>
            <!-- //action bt end// --> 
        </div>
        </form>
        <!-- //content end// -->
    </div>


        
<%@ include file="/inc/jspFooter_popup.jsp" %> 


<script type="text/javascript">


var schParam = "<%=schParam%>";
var seqNo = "<%=S_AGRMT_SEQ_NO%>";

$(document).ready(function() {
    // rMateGrid 초기화
    rMateGridInit();
    
    if("G00000000000001" == seqNo){
	    //세션값이 있을시 값 변경
	    var _COOKIE_DATA = getCookieTraning("T41_06_00"); 
	    if(_COOKIE_DATA != false){
	        $("#crdSelect").html("<SELECT name='CrdcoCd'><option value=''>카드사를 선택하세요.</option><option value='IB'>A 카드사</option></SELECT>");
	    }
    }else{
    	$("#crdSelect").html("<SELECT name='CrdcoCd'><option value=''>카드사를 선택하세요.</option><option value='IB'>A 카드사</option></SELECT>");
    }
    /* 
    if("G00000000000004" == seqNo){
        $("#crdSelect").html("<SELECT name='CrdcoCd'><option value=''>카드사를 선택하세요.</option><option value='IB'>기업BC카드</option></SELECT>");
    }else if("G00000000000003" == seqNo){
    	$("#crdSelect").html("<SELECT name='CrdcoCd'><option value=''>카드사를 선택하세요.</option><option value='IB'>기업BC카드</option><option value='WRB'>우리BC카드</option></SELECT>");
    }else if("G00000000000002" == seqNo){
    	$("#crdSelect").html("<SELECT name='CrdcoCd'><option value=''>카드사를 선택하세요.</option></SELECT>");
    }else if("G00000000000001" == seqNo){
    	$("#crdSelect").html("<SELECT name='CrdcoCd'><option value=''>카드사를 선택하세요.</option></SELECT>");
    }
    */
    
    	//세션 사용안함 20140307
    	/***********************  쿠키값 컨트롤 추가 Start ***********************/
    	/* 
    	var selectStr = "<SELECT name='CrdcoCd'><option value=''>카드사를 선택하세요.</option>";
    	
    	
        var _SESS_DATA = dataCtrl.getObjData("T41_06_00"); 
        
    	//FNC_INST_CD
        if(_SESS_DATA != null){
        	var sessGridData = JSON.parse(_SESS_DATA);
        	
            if(sessGridData.length > 0){
                var paramValue = "";
                for(var i=0;i<sessGridData.length;i++){
                	var CRDCO_REG_PROC_ST = sessGridData[i].CRDCO_REG_PROC_ST;
                	if(CRDCO_REG_PROC_ST == "1" || CRDCO_REG_PROC_ST == "2" || CRDCO_REG_PROC_ST == "3"){
	                    paramValue = sessGridData[i].FNC_INST_CD;
	                    
	                    if("KJ" == paramValue){         //광주은행
	                    	selectStr += "<option value='KJ'>광주은행</option>";
	                    }else if("IB" == paramValue){   //기업BC카드
	                    	selectStr += "<option value='IB'>기업BC카드</option>";
	                    }else if("NH" == paramValue){   //NH카드
	                    	selectStr += "<option value='NH'>NH카드</option>";
	                    }else if("LT" == paramValue){   //롯데카드
	                    	selectStr += "<option value='LT'>롯데카드</option>";
	                    }else if("SS" == paramValue){   //삼성카드
	                    	selectStr += "<option value='SS'>삼성카드</option>";
	                    }else if("SH" == paramValue){   //신한카드
	                    	selectStr += "<option value='SH'>신한카드</option>";
	                    }else if("KE" == paramValue){   //외환카드
	                    	selectStr += "<option value='KE'>외환카드</option>";
	                    }else if("JB" == paramValue){   //전북은행
	                    	selectStr += "<option value='JB'>전북은행</option>";
	                    }else if("HD" == paramValue){   //현대카드
	                    	selectStr += "<option value='HD'>현대카드</option>";
	                    }else if("WRB" == paramValue){  //우리BC카드
	                    	selectStr += "<option value='WRB'>우리BC카드</option>";
	                    }else if("BSB" == paramValue){  //부산BC카드
	                    	selectStr += "<option value='BSB'>부산BC카드</option>";
	                    }else if("CTB" == paramValue){  //씨티BC카드
	                    	selectStr += "<option value='CTB'>씨티BC카드</option>";
	                    }else if("DGB" == paramValue){  //대구BC카드
	                    	selectStr += "<option value='DGB'>대구BC카드</option>";
	                    }else if("HNB" == paramValue){  //하나BC카드
	                    	selectStr += "<option value='HNB'>하나BC카드</option>";
	                    }else if("KNB" == paramValue){  //NHBC카드
	                    	selectStr += "<option value='KNB'>NHBC카드</option>";
	                    }else if("NHB" == paramValue){  //NHBC카드
	                    	selectStr += "<option value='NHB'>NHBC카드</option>";
	                    }else if("SCB" == paramValue){  //SC제일BC카드
	                    	selectStr += "<option value='SCB'>SC제일BC카드</option>";
	                    }
	                    
	                    paramValue = "";
                		
                	}
                    
                } // for

            } // if(sessGridData.length
            
        } // if(_SESS_DATA
    	
    	selectStr += "</SELECT>";
        $("#crdSelect").html(selectStr);
         */
        /***********************  쿠키값 컨트롤 추가 End ***********************/
    //}
});

</script>






<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">
/* 그리드 생성 순서
1. html과 플래시의 sync : rMateGridInit() 함수 실행 ( onload 실행. 혹은 ready )
2. 레이아웃에 의거한 그리드 생성
3. 그리드에 데이타 넣기
*/


    //레이아웃 설정
    var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
        <columns>\
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"선택\" width=\"40\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"CRD_NO\"                 dataField=\"CRD_NO\"                  headerText=\"카드번호\"           width=\"130\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_CD_NM\"            dataField=\"CRDCO_CD_NM\"             headerText=\"카드사\"             width=\"80\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_BNK_CD_NM\"         dataField=\"SETL_BNK_CD_NM\"          headerText=\"결제은행\"           width=\"100\"  visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_ACCT_NO_PAY\"       dataField=\"SETL_ACCT_NO_PAY\"        headerText=\"결제계좌번호\"       width=\"150\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_PRD_DV_NM\"          dataField=\"CRD_PRD_DV_NM\"           headerText=\"구분\"               width=\"110\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_DT\"                dataField=\"SETL_DT\"                 headerText=\"결제일\"             width=\"60\"   visible=\"true\"  textAlign=\"right\"  headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_CD\"               dataField=\"CRDCO_CD\"                headerText=\"카드사코드\"         width=\"100\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_PRD_DV\"             dataField=\"CRD_PRD_DV\"              headerText=\"구분코드\"           width=\"100\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_ACCT_NO\"           dataField=\"SETL_ACCT_NO\"            headerText=\"계좌번호\"           width=\"90\"  visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"VALD_TRM\"               dataField=\"VALD_TRM\"                headerText=\"유효기간\"           width=\"70\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCV_XUSE_SETL_ACCT_NO\"  dataField=\"RCV_XUSE_SETL_ACCT_NO\"   headerText=\"입금전용계제계좌번호\"  width=\"60\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_BNK_CD\"            dataField=\"SETL_BNK_CD\"             headerText=\"결제은행코드\"       width=\"0\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_ISSU_DT\"            dataField=\"CRD_ISSU_DT\"             headerText=\"카드발급일자\"       width=\"60\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SVCL_DV\"                dataField=\"SVCL_DV\"                 headerText=\"제신고구분\"         width=\"60\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_REG_PROC_ST\"      dataField=\"CRDCO_REG_PROC_ST\"       headerText=\"상태\"               width=\"90\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
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
        gridApp.setLayout(layoutStr); //그리드 레이아웃 생성

        
        //클릭 이벤트 추가 ( 체크박스가 있는 row 클릭 시 해당 row의 체크박스 체크/해제 이벤트 등록 )
        var itemClickHandler = function(event) {
            
            //*******  클릭한 row의 컬럼이 체크박스가 있는 컬럼일 경우 체크박스를 체크해야만 체크가 되도록 함. Start ******//
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
            
            if (dataField == "selector") { //체크박스 컬럼일 경우 아래 이벤트 중지
                return;
            };
            //*******  클릭한 row의 컬럼이 체크박스가 있는 컬럼일 경우 체크박스를 체크해야만 체크가 되도록 함. End ******//
            
            selectorColumn = gridRoot.getObjectById("selector");

            var selValue = selectorColumn.getSelectedIndices();
            var arrValue = new Array();
            
            if(selValue.length < 1){
                arrValue[0] = event.getRowIndex();
            }else{
                //중복값 체크
                var valTemp = new Array();
                var isValue = false;
                for(var i=0; i<selValue.length ; i++){
                    if(selValue[i] != event.getRowIndex()){
                        valTemp[valTemp.length] = selValue[i];
                    }else{
                        isValue = true;
                    }
                }
                if(!isValue){
                    valTemp[valTemp.length] = event.getRowIndex();
                }
                arrValue = valTemp;
            }
            selectorColumn.setSelectedIndices(arrValue);
            
        };
        
        
        //스크롤 내릴 시 다음 조회 실행
        var scrollHandler = function(event) {
            var direction = event.getDirection();
            if (direction != "vertical")
            return;


            var delta = event.getDelta(); // +값이면 아래로, -값이면 위로
            var position = event.getPosition(); // verticalScrollPosition

            if (delta > 0 && position == dataGrid.getMaxVerticalScrollPosition()) {
                uf_search('N');
            }
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
            dataGrid.addEventListener("scroll", scrollHandler); //스크롤 내릴 시 다음 조회 실행
        };

        
        //layout 출력 후 실행될 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        
        //data 출력 후 실행할 이벤트 등록
        gridRoot.addEventListener("dataComplete", setTotCnt);   //전체 조회건수 출력
        gridRoot.addEventListener("dataComplete", uf_rowColor_rmate);   //조건에따른 색상처리
        gridRoot.addEventListener("dataComplete", gridCheckData);   //데이터 조회시 기존 체크 유지

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    var arrCheckData = new Array(); //기존 체크정보 유지를 위해 사용
    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        arrCheckData = null;
        //자료 출력 전 기존에 체크된 값이 있는가 확인
        selectorColumn = gridRoot.getObjectById("selector");    //체크된 ID 가져오기
        arrCheckData = selectorColumn.getSelectedIndices();       //체크된 row 가져오
        
        gridApp = FABridge.gridBridge.root();  
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
        
        
        // 마우스 휠 이벤트 리스너를 적용합니다.  ****  하지만 마우스 휠 처리(scrollHandler)에 동시에 하면 문제가 발생할 수 있으니(자바스크립트에서 동시에 두개의 이벤트처리) 주의하시기 바랍니다
        //addGridMouseWheelEventListenerSearch();
        
    };
    
    //데이터 조회시 기존 체크 유지
    function gridCheckData(){
        if(arrCheckData.length > 0){
            selectorColumn.setSelectedIndices(arrCheckData);
            
        }
    }
    
  
    //전체 자료수 출력
    function setTotCnt(){
        var cnt = getGridRowCount_rMate();
        $("#InqPrsTotlNcnt2").html(cnt);
        $("#InqPrsTotlCnt2").html(cnt);
        
        //데이터 조회시 스크롤이동
        /* 
        var s = cnt - 10;
        
        if(s > 0){
            dataGrid.setVerticalScrollPosition(s);
        }
         */
    }
    
    
    
    
    function uf_rowColor_rmate(){
        if (collection == null)
            collection = gridRoot.getCollection();
        
        var dataRow;
        var gridCnt = collection.getLength();
        // 등록가능여부체크 : 등록처리중,등록확인중,등록완료건 있으면 제한
        for(var i=0;i<gridCnt;i++){
            dataRow = gridRoot.getItemAt(i);
            if(dataRow.CRDCO_REG_PROC_ST == "1" || dataRow.CRDCO_REG_PROC_ST == "2" || dataRow.CRDCO_REG_PROC_ST == "3"){
                collection.addRowAttributeDetailAt(i, null, 0xFFFF66);       // 행 스타일(스타일명을 적어줌) 지정 - 스타일은 layout에서 지정합니다
            }else if(dataRow.CRDCO_REG_PROC_ST == "4" || dataRow.CRDCO_REG_PROC_ST == "5"){
                //collection.addRowAttributeDetailAt(i, null, 0xFF6666);    // 행의 스타일 지정
                collection.addRowAttributeDetailAt(i, null, 0xFF6666);
            }else{
            }
        }
        
    }
    
    
    
    
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->





<script type="text/javascript">
var cnt     = 0;    //grid 배열값
var nCnt = 0;    //다음자료카운트
var totCnt  = 0;    //전체 자료수
var gridValue = []; //

function SetData(nextCnt, CrdcoCd){    
    var frm = document.frm;
    try{
        
        cnt = 0;
        
        if("G00000000000001" == seqNo){
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-4444","CRDCO_CD_NM":"A 카드사","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":""};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-5555","CRDCO_CD_NM":"A 카드사","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":""};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-6666","CRDCO_CD_NM":"A 카드사","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":""};

        }else if("G00000000000002" == seqNo){
        	
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-7777","CRDCO_CD_NM":"A 카드사","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":"3"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-8888","CRDCO_CD_NM":"A 카드사","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":"3"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-6666","CRDCO_CD_NM":"A 카드사","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":""};

        }else if("G00000000000003" == seqNo){

        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-7777","CRDCO_CD_NM":"A 카드사","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":"3"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-8888","CRDCO_CD_NM":"A 카드사","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":"3"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-6666","CRDCO_CD_NM":"A 카드사","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":""};

        }else if("G00000000000004" == seqNo){
        	
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-7777","CRDCO_CD_NM":"A 카드사","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":"3"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-8888","CRDCO_CD_NM":"A 카드사","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":"3"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-6666","CRDCO_CD_NM":"A 카드사","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":""};

        }
        
    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        $("#InqPrsTotlCnt2").html(totCnt);
        rMateGridSetData();  //rMateGrid 구현
    }
}

function search(SchGb, CrdcoCd){
    if(!schParam) return false;

    //처음 조회시 초기화
    if(SchGb == "S"){
    	nCnt = 0;
    	gridValue = [];
    }
    
    
    
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor = "wait";
        SetData(nCnt, CrdcoCd); //Insert    Grid
        //SetData(); //Insert Grid
        document.body.style.cursor = "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
        searchAlert();
        
    }
}

function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
    }
}
</script>


</body>
</html> 