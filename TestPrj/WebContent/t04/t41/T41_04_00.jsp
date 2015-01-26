<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_04_00.jsp
 *   Description        : 펌뱅킹 이용신청
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29     				예기해        		
 *
 *  @author 예기해
 *  @Since  2013. 10. 29
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

<%
String date = DateUtil.getDate("YYYYMMDD");
String year = date.substring(0, 4);
String month = date.substring(4, 6);
String day = date.substring(6);
%>
<title>펌뱅킹 이용신청 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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
            




                    <div><img src="/images/pefo/sub_navt4.gif" alt="이용환경관리" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t04/t41/T41_08_00.jsp'); return false;" class="menu_txt_on">기본설정</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_08_00.jsp'); return false;" class="menu_3dep">협약정보 확인</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_04_00.jsp'); return false;" class="menu_3dep_on">펌뱅킹 이용신청</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_03_00.jsp'); return false;" class="menu_3dep">과제별 권한 관리</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_05_00.jsp'); return false;" class="menu_3dep">이체비밀번호 등록</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_06_00.jsp'); return false;" class="menu_3dep">연구비카드사 등록</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_07_00.jsp'); return false;" class="menu_3dep">연구비카드 과제 등록</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_txt">부가설정</a></div>

                                <ul>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">자주쓰는 사업자</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">자주쓰는 입금계좌</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">기관별 권한관리</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">지방비분리회계관리</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_txt">기관계좌관리</a></div>

                                <ul>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">인건비성 지급계좌 설정</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">자계좌이체용 계좌 설정</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">카드결제 지정계좌 설정</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>

                        </div>
                    </div>
                    <div><img src="/images/pefo/subm_bg2.gif" alt="" /></div>

            <!-- //left menu end// -->
            
        </div>
        <!-- //left end// -->
        
        


<script type="text/javascript">

	function _uf_tran_owac(){
		if(!bAutoSbjtSch()) return false;							// 과제조회여부확인
		
		
		var OwacNm = document.frm.OwacNm.value;
		if(OwacNm == "") OwacNm = "이총괄";
		document.frm.OwacNm.value  = "";
		uf_proce_display_on();  //로딩바
        setTimeout(
        		function(){
        			document.frm.OwacNm.value = OwacNm;
        			reset_submit();
        			}, 1000);   // 1초후 실행 1000 = 1초s
        
        
	}
	//////////////////////////////////
	//등록 처리
	//////////////////////////////////
    function uf_create(){
		
		if(document.frm.OwacNm.value == ""){
			alert("필수항목은 반드시 입력하셔야 합니다.\n\n* 필수입력 항목 : 예금주");
			document.frm.OwacNm.focus();
			return;
		}
		
		if(!confirm("등록 하시겠습니까?")){return;}

		
		var url = "/pop/sign_popup.jsp";
		var obj = "서명에 사용할 인증서 선택";
	    var style = "dialogWidth:441px;dialogHeight:475px;center:yes;scroll:no;resizable:no;status:no;";
		var reValue = window.showModalDialog(url, obj, style);
		if(reValue == undefined){
			reValue = window.returnValue;
		}
		

		if(reValue == "ok"){
			var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
			
			uf_proce_display_on();  //로딩바
			
	        setTimeout(
	                function(){
	                	//신규과제일시에만 적용
	                	if("G00000000000001" == seqNo){
	                		makeCookieData(frm.ReprNm.value);
	                		//makeSessData(frm.ReprNm.value);
	                	}
	                    alert("등록되었습니다.");
	                    reset_submit();
	                    uf_search();
	                    }, 1000);   // 1초후 실행 1000 = 1초s
		}
		return;
		
    }
	
	//세션값 생성
	function makeSessData(ReprNm){
		if(typeof ReprNm == "undefined" || ReprNm == "") return;
		
		dataCtrl.setObjData("T41_04_00", ReprNm);
	}
	//쿠키값 생성
	function makeCookieData(ReprNm){
		if(typeof ReprNm == "undefined" || ReprNm == "") return;
		
		setCookieTraning( "T41_04_00", ReprNm, 1 );
	}
	
    /******************************************************************
     * uf_search		펌뱅킹 조회
     * @param
     * @return
    ******************************************************************/
    function uf_search(){
    	
    	var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
    	
    	if( isSubmit() ) return;	// 이중처리

        var InstNm;
        var AgrmtInstBzRegNo;
        var ZipNoSeqNo;
        var LoctDtlsAdr;
        var PrsWkplDept;
        var TelNo;
        var MbphNo;
        var RchExpAcctBnkCd;
        var RchExpAcctNo;
        var RcvBnkCd;
        var RcvAcctNo;
        var OwacNm;
        var idInstNm;
        var idAgrmtInstBzRegNo;
        var idZipNoSeqNo;
        var idLoctDtlsAdr;
        var idPrsWkplDept;
        var idUsrNm;
        var idTelNo;
        var idMbphNo;
        var idFaxNo;
        var idEmalAdr;
        var idRchExpAcctBnkCd;
        var idRchExpAcctNo;
        var idInstNm1;
        var yyyy;
        var mm;
        var dd;
        var viewBtn;
        var idReprNm;
    	
    	
        //1. 신규과제
        if("G00000000000001" == seqNo){
        	InstNm              = "㈜RCMS";
            AgrmtInstBzRegNo    = "1111111111";
            ZipNoSeqNo          = "305-343";
            LoctDtlsAdr         = "대전광역시 유성구 화암동 58-4";
            PrsWkplDept         = "개발팀";
            TelNo               = "";
            MbphNo              = "";
            RchExpAcctBnkCd     = "020";
            RchExpAcctNo        = "10000000000";
            RcvBnkCd            = "020";
            RcvAcctNo           = "10000000000";
            OwacNm              = "";
            idInstNm            = "㈜RCMS";
            idAgrmtInstBzRegNo  = "111-11-11111";
            idZipNoSeqNo        = "305-348";
            idLoctDtlsAdr       = "대전광역시 유성구 화암동 58-4";
            idPrsWkplDept       = "개발팀";
            idUsrNm             = "산기평";
            idTelNo             = "";
            idMbphNo            = "";
            idFaxNo             = "042-800-0000";
            idEmalAdr           = "test@test.kr";
            idRchExpAcctBnkCd   = "A 은행";
            idRchExpAcctNo      = "10000000000";
            idInstNm1           = "㈜RCMS";
            yyyy                = "<%=year%>";
            mm                  = "<%=month%>";
            dd                  = "<%=day%>";
            
            //var _SESS_DATA = dataCtrl.getObjData("T41_04_00");
            var _COOKIE_DATA = getCookieTraning("T41_04_00");
            if(_COOKIE_DATA == false){
                viewBtn             = "block";
                idReprNm            = "<select name='ReprNm'><option value='이연구' >이연구</option><option value='김만세' >김만세</option></select>";
            }else{
                OwacNm              = "이총괄";
                viewBtn             = "none";
                idReprNm            = _COOKIE_DATA;
            }
            
        //2. 진행과제
        }else if("G00000000000002" == seqNo){
        	InstNm              = "㈜RCMS";
            AgrmtInstBzRegNo    = "1111111111";
            ZipNoSeqNo          = "305-343";
            LoctDtlsAdr         = "대전광역시 유성구 화암동 58-4";
            PrsWkplDept         = "개발팀";
            TelNo               = "";
            MbphNo              = "";
            RchExpAcctBnkCd     = "020";
            RchExpAcctNo        = "10000000000";
            RcvBnkCd            = "020";
            RcvAcctNo           = "10000000000";
            OwacNm              = "";
            idInstNm            = "㈜RCMS";
            idAgrmtInstBzRegNo  = "111-11-11111";
            idZipNoSeqNo        = "305-348";
            idLoctDtlsAdr       = "대전광역시 유성구 화암동 58-4";
            idPrsWkplDept       = "개발팀";
            idUsrNm             = "산기평";
            idTelNo             = "";
            idMbphNo            = "";
            idFaxNo             = "042-800-0000";
            idEmalAdr           = "test@test.kr";
            idRchExpAcctBnkCd   = "A 은행";
            idRchExpAcctNo      = "10000000000";
            idInstNm1           = "㈜RCMS";
            yyyy                = "2014";
            mm                  = "01";
            dd                  = "01";
            viewBtn             = "none";
            idReprNm            = "최대표";
            
        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){
        	InstNm              = "㈜RCMS";
            AgrmtInstBzRegNo    = "1111111111";
            ZipNoSeqNo          = "305-343";
            LoctDtlsAdr         = "대전광역시 유성구 화암동 58-4";
            PrsWkplDept         = "개발팀";
            TelNo               = "";
            MbphNo              = "";
            RchExpAcctBnkCd     = "020";
            RchExpAcctNo        = "10000000000";
            RcvBnkCd            = "020";
            RcvAcctNo           = "10000000000";
            OwacNm              = "";
            idInstNm            = "㈜RCMS";
            idAgrmtInstBzRegNo  = "111-11-11111";
            idZipNoSeqNo        = "305-348";
            idLoctDtlsAdr       = "대전광역시 유성구 화암동 58-4";
            idPrsWkplDept       = "개발팀";
            idUsrNm             = "산기평";
            idTelNo             = "";
            idMbphNo            = "";
            idFaxNo             = "042-800-0000";
            idEmalAdr           = "test@test.kr";
            idRchExpAcctBnkCd   = "A 은행";
            idRchExpAcctNo      = "10000000000";
            idInstNm1           = "㈜RCMS";
            yyyy                = "2014";
            mm                  = "01";
            dd                  = "01";
            viewBtn             = "none";
            idReprNm            = "이총괄";
            
        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){
        	InstNm              = "㈜RCMS";
            AgrmtInstBzRegNo    = "1111111111";
            ZipNoSeqNo          = "305-343";
            LoctDtlsAdr         = "대전광역시 유성구 화암동 58-4";
            PrsWkplDept         = "개발팀";
            TelNo               = "";
            MbphNo              = "";
            RchExpAcctBnkCd     = "020";
            RchExpAcctNo        = "10000000000";
            RcvBnkCd            = "020";
            RcvAcctNo           = "10000000000";
            OwacNm              = "";
            idInstNm            = "㈜RCMS";
            idAgrmtInstBzRegNo  = "111-11-11111";
            idZipNoSeqNo        = "305-348";
            idLoctDtlsAdr       = "대전광역시 유성구 화암동 58-4";
            idPrsWkplDept       = "개발팀";
            idUsrNm             = "산기평";
            idTelNo             = "";
            idMbphNo            = "";
            idFaxNo             = "042-800-0000";
            idEmalAdr           = "test@test.kr";
            idRchExpAcctBnkCd   = "A 은행";
            idRchExpAcctNo      = "10000000000";
            idInstNm1           = "㈜RCMS";
            yyyy                = "2014";
            mm                  = "01";
            dd                  = "01";
            viewBtn             = "none";
            idReprNm            = "이총괄";
            
        }

    	
    	document.frm.InstNm.value                       = InstNm;
    	document.frm.AgrmtInstBzRegNo.value             = AgrmtInstBzRegNo;
    	document.frm.ZipNoSeqNo.value                   = ZipNoSeqNo;
    	document.frm.LoctDtlsAdr.value                  = LoctDtlsAdr;
    	document.frm.PrsWkplDept.value                  = PrsWkplDept;
    	document.frm.TelNo.value                        = TelNo;
    	document.frm.MbphNo.value                       = MbphNo;
    	document.frm.RchExpAcctBnkCd.value              = RchExpAcctBnkCd;
    	document.frm.RchExpAcctNo.value                 = RchExpAcctNo;
    	document.frm.RcvBnkCd.value                     = RcvBnkCd;
    	document.frm.RcvAcctNo.value                    = RcvAcctNo;
    	document.frm.OwacNm.value                       = OwacNm;

    	document.all["idInstNm"].innerHTML              = idInstNm;
    	document.all["idAgrmtInstBzRegNo"].innerHTML    = idAgrmtInstBzRegNo;
    	document.all["idZipNoSeqNo"].innerHTML          = idZipNoSeqNo;
    	document.all["idLoctDtlsAdr"].innerHTML         = idLoctDtlsAdr;
    	document.all["idPrsWkplDept"].innerHTML         = idPrsWkplDept;
    	document.all["idUsrNm"].innerHTML               = idUsrNm;
    	document.all["idTelNo"].innerHTML               = idTelNo;
    	document.all["idMbphNo"].innerHTML              = idMbphNo;
    	document.all["idFaxNo"].innerHTML               = idFaxNo;
    	document.all["idEmalAdr"].innerHTML             = idEmalAdr;
    	document.all["idRchExpAcctBnkCd"].innerHTML     = idRchExpAcctBnkCd;
    	document.all["idRchExpAcctNo"].innerHTML        = idRchExpAcctNo;
    	document.all["idInstNm1"].innerHTML             = idInstNm1;
    	document.all["yyyy"].innerHTML                  = yyyy;
    	document.all["mm"].innerHTML                    = mm;
    	document.all["dd"].innerHTML                    = dd;

    	document.all["viewBtn"].style.display           = viewBtn;
    	document.all["idReprNm"].innerHTML              = idReprNm;
    	
    	
    	
    	reset_submit();
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
    	
    	
    	uf_proce_display_on();  //로딩바
        setTimeout(function(){uf_search();}, 1000);   // 1초후 실행 1000 = 1초s
    	
    }

    $(document).ready(function() {
  	  $("a#example1").fancybox();
  	  $("a#example2").fancybox();
  	  
  	  $('#btn-guide').click(function(){
  	    if( $('#guide').css('height') == '17px' ){
  	      $('#guide').css({overflow:'hidden'}).animate({height:100},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
  	    }else{
  	      $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
  	    }
  	    return false;
  	  });
  	});
</script>

        <!-- content start -->
        <div id="content">
            <!-- pagenav start -->
            



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u41_04_00_t.gif" alt="펌뱅킹 이용신청"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>이용환경관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " />기본설정</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">펌뱅킹 이용신청</span></li>
						
                    </ul>
                </div>
            </div>                
            <!-- //pagenav end// -->
            <div class="t30"></div>
            <!-------------------------------------------------------------------------------->
            <!--  공통부 시작 -->
            <!-------------------------------------------------------------------------------->
            <!-- 
                기관중심 과제조회 자동완성 공통부 시작
                과제조회 멀티체크 모드 isSbjtAutoSchMulti : true
                과제조회 싱글모드   isSbjtAutoSchMulti : false
                웹캐시 이세상 작성 20110426 
                -->
            <!-------------------------------------------------------------------------------->
            
            








<!-- search start -->
<% 
    boolean isSbjtAutoSchMulti   =  false;  //과제조회 자동완성 멀티체크기능 true:멀티 false:싱글
    boolean beSearchBtn          =  false;  //조회버튼 생성구분(실행메소드:uf_beSearchBtn();)
%>    
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //search end// -->
    
    
      

            <!-------------------------------------------------------------------------------->
            <!--  공통부 끝 -->
            <!-------------------------------------------------------------------------------->    
            <!-- 신청서 start -->
            <div class="t30"></div>
            <div class="docu_app">
                <form name="frm" method="post">
                <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />
                <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />
                <input type="hidden" name="InstNm"           value="" />
				<input type="hidden" name="AgrmtInstBzRegNo" value="" />
				<input type="hidden" name="ZipNoSeqNo"       value="" />
				<input type="hidden" name="LoctDtlsAdr"      value="" />
				<input type="hidden" name="PrsWkplDept"      value="" />
				<input type="hidden" name="TelNo"            value="" />
				<input type="hidden" name="MbphNo"           value="" />
				<input type="hidden" name="RchExpAcctBnkCd"  value="" />
				<input type="hidden" name="RchExpAcctNo"     value="" />
				<input type="hidden" name="RcvBnkCd"         value="" />
				<input type="hidden" name="RcvAcctNo"        value="" />

                <div class="t20 b50 ac"><img src="/images/pefo/docu_txt1.gif" alt="RCMS 펌뱅킹 서비스 이용 신청서"/></div>
                <p class="docu_title">1. 신청기관 정보</p>
                <div class="t05 b25">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="신청기관 정보" class="docu_type">
                    <caption>신청기관 정보</caption>
					<colgroup>
						<col width="15%" />
						<col width="15%" />
						<col width="30%" />
						<col width="15%" />
						<col width="25%" />
					</colgroup>
					<tbody>
					<tr>
						<th scope="col" class="al">업체명</th>
						<td colspan="2" class="ac" id="idInstNm"></td>
						<th scope="col" class="al">사업자번호</th>
						<td id="idAgrmtInstBzRegNo"></td>
					</tr>
					<tr>
						<th scope="row" class="al">주소</th>
						<td colspan="4">우 편 번 호 : <span id="idZipNoSeqNo"></span>
						    <div class="post" id="idLoctDtlsAdr"></div>
						</td>
					</tr>
					<tr>
						<th scope="col" rowspan="3" class="al">담당자</th>
						<th scope="col" class="al">부서명</th>
						<td id="idPrsWkplDept"></td>
						<th scope="col" class="al">성명</th>
						<td id="idUsrNm"></td>
					</tr>
					<tr>
						<th scope="col" class="al">TEL</th>
						<td class="ac" id="idTelNo"></td>
						<th scope="col" class="al">HP</th>
						<td id="idMbphNo"></td>
					</tr>
					<tr>
						<th scope="col" class="al">FAX</th>
						<td class="ac" id="idFaxNo"></td>
						<th scope="col" class="al">e-Mail</th>
						<td id="idEmalAdr"></td>
					</tr>
					</tbody>
					</table>
                </div>
                <p class="docu_title">2. 신청내역</p>
                <div class="t05 b25">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="신청내역" class="docu_type">
                    <caption>신청내역</caption>
					<colgroup>
						<col width="25%" />
						<col width="20%" />
						<col width="25%" />
						<col width="30%" />
					</colgroup>
					<thead>
					<tr>
						<th scope="col">서비스 중류</th>
						<th scope="col">은행</th>
						<th scope="col">계좌번호</th>
						<th scope="col"><label for="bankname">예금주</label></th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="ac">실시간 지급(배분)이체</td>
						<td class="ac" id="idRchExpAcctBnkCd"></td>
						<td class="ac" id="idRchExpAcctNo"></td>
						<td class="ac">
                            <a href="#dummy" onclick="_uf_tran_owac(); return false;"><img src="/bt/bt_acct02.gif" alt="예금주조회"/></a>
                            <input type="text" name="OwacNm" id="bankname" title="예금주" style="width:80px;" class="inputl" notnull colname="예금주" readonly="readonly"/>
						</td>
					</tr>
					</tbody>
					</table>
                </div>
                <p class="docu_title">3. 유의사항</p>
                <div class="t05"></div>
                <div class="care_box">
                    <ul>
                        <li>실시간지급이체와 관련하여 한국산업기술평가관리원과 해당 은행은 2010년 06월 01일에 계약체결한 "RCMS 펌뱅킹 서비스
                            이용계약서"의 내용을 준용하여 처리하는데 동의한다.</li>
                        <li>실시간지급이체는 한국산업기술평가관리원의 RCMS를 이용하여 해당은행으로 이체처리를 요청하여 이에 따라 은행이 이체처리한 경우 
                            은행은 어떤 책임도 부담하지 않으며 이와 관련 한 모든 책임은 협약기관에서 부담하기로 한다
                        </li>
                        <li>은행은 본 신청과 관련하여 다음 각 호에서 정하는 사유로 인하여 발생한 한국산업기술평가관리원 및 협약기관, 또는 제3자의 손해에 대하여
                            책임을 면하기로 한다.
                            <p class="t05">① 천재지변, 정전, 통신기기, 회선 컴퓨터의 고장 또는 장애, 기타 사유로 인한 업무처리의 지연, 또는 처리불능</p>
                            <p class="t05">② 은행의 통상적인 업무처리절차에 의해 고의, 과실 없이 선령한 관리자로서의 의무를 다한 사항</p>
                            <p class="t05 b10">③ 은행의 귀책사유없이 한국산업기술평가관리원 및 신청기관이 본 서비스 이용에 필요한 접근수단의 도용이나 위조 또는 변조를 방지 하기 
                            위한 관리의 소홀, 기타의 사고로 한국산업기술평가관리원 및 협약기관에 손해가 발생한 경우</p>
                        </li>
                        <li>
                            협약기관은 한국산업기술평가관리원과 연구비협약을 체결하여야 하며, 협약체결 및 본 신청서에 작성된 내용은 한국산업기술평가관리원의 
                            책임으로 확인하여 은행에 제출하기로 한다.
                        </li>         
                    </ul>
                </div>
                <div id="sign_agrt_msg" style="display:none;">
                    - 실시간지급이체와 관련하여 한국산업기술평가관리원과 해당 은행은 2010년06월 01일에 계약체결한  "RCMS 펌뱅킹 서비스 이용계약서"의  내용을 준용하여 처리하는데 동의한다.<br />
                    -실시간지급이체는 한국산업기술평가관리원의 RCMS를 이용하여 해당은행으로 이체처리를 요청하며 이에 따라 은행이 이체처리한 경우 은행은 어떤 책임도 부담하지 않으며 이와 관련 한 모든 책임은 협약기관에서 부담하기로 한다<br />
                    -은행은 본 신청과 관련하여 다음 각 호에서 정하는 사유로 인하여 발생한 한국산업기술평가관리원 및 협약기관, 또는 제3자의 손해에 대하여 책임을 면하기로 한다.<br />
                    ①천재지변, 정전, 통신기기, 회선, 컴퓨터의 고장 또는 장애, 기타 사유로 인한 업무처리의 지연, 또는 처리불능<br />
                    ②은행의 통상적인 업무처리절차에 의해 고의, 과실 없이 선령한 관리자로서의 의무를 다한 사항<br />
                    ③은행의 귀책사유없이 한국산업기술평가관리원 및 신청기관이 본 서비스 이용에 필요한 접근수단의 도용이나 위조 또는 변조를 방지하기 위한 관리의 소홀, 기타의 사고로 한국산업기술평가관리원 및 협약기관에 손해가 발생한 경우<br />
                    -협약기관은 한국산업기술평가관리원과 연구비협약을 체결하여야 하며, 협약체결 및 본 신청서에 작성된 내용은 한국산업기술평가관리원의 책임으로 확인하여 은행에 제출하기로 한다.                
                </div>
                <div class="t20 ac"><span id="yyyy"></span> 년 <span id="mm"></span> 월 <span id="dd"></span> 일</div>
				<div class="t20 b">협약기관 : <span id="idInstNm1"></span></div>
				<div class="b ar">확인자 : <img src="/images/pefo/docu_stamp.gif" alt="한국산업기술평가관리원장" class="vc"/></div>
				<div class="b">대표자 : <span id="idReprNm"></span></div>
				<div class="t30">※ 본 신청서는 공인인증서로 전자서명되어 해당 거래은행으로 전송됩니다.</div>
	            </form>
	        </div>
	        <!-- //신청서 end// -->
	        <div class="t30 ac" id="viewBtn" style="display:none">
	            <a href="#dummy" onclick="uf_create(); return false;"><img src="/bt/bt_agree.gif" alt="동의"/></a>
	        </div>
			<!-- 안내 가이드 start -->
			<div class="guide_box1" id="guide">
				<div class="guide_boxt1">
					<p class="txt_title fl">펌뱅킹 이용신청 안내</p> 
					<p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
				</div>
				<div class="guide_boxc1">
					<ul>
						<li>펌뱅킹 이용신청은 RCMS를 사용하여 전자금융 서비스를 이용하는 <span class="txt_or">필수 신청양식</span>으로써, 금융기관에서 보관하게 됩니다. </li>
						<li><span class="txt_or">펌뱅킹 이용신청을 하지 않으면 연구비이체가 제한되오니 유의하시기 바랍니다.</span></li>
					</ul>
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


</body>
</html>