<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Map"  %>
<%@ page import="java.util.Map.Entry" %>
<%@ page import="java.util.Iterator"  %>
<%@ page import="java.util.Set" %>
<%@ page import="kr.go.rcms.web.util.ComboUtil" %>
<jsp:useBean id="sbjt_data" class="kr.go.rcms.web.data.SbjtData" scope="session" />

var cDtlsItxpCd 	= new Array();	// 세목
var cDtlsItxpNm 	= new Array();	// 세목명
var cSubDtlsItxpCd 	= new Array();	// 세세목
var cSubDtlsItxpNm 	= new Array();	// 세세목명

var cSpotDtlsItxpCd		= new Array();	// 현물세목
var cSpotDtlsItxpNm		= new Array();	// 현물세목명
var cSpotSubDtlsItxpCd	= new Array();	// 현물세세목
var cSpotSubDtlsItxpNm	= new Array();	// 현물세세목명

<% 
	// 현금
	Iterator<Map.Entry<String,String>> iter = ComboUtil.mapSort(sbjt_data.getHmDtlsItxp());
	
	int idx = 0;
	while ( iter!=null && iter.hasNext() )	{
		Map.Entry<String, String> entry = (Map.Entry<String, String>) iter.next();
		
		out.println("cDtlsItxpCd["+idx+"] = \""+entry.getKey()+"\";");
		out.println("cDtlsItxpNm["+idx+"] = \""+entry.getValue()+"\";");
		out.println("cSubDtlsItxpCd["+idx+"] = new Array();");
		out.println("cSubDtlsItxpNm["+idx+"] = new Array();");
			
		int cCnt = 0;
		Iterator<Map.Entry<String,String>> iter2 =  ComboUtil.mapSort( sbjt_data.getHmSubDtlsItxp().get(entry.getKey()) ); // (Iterator<Map.Entry<String,String>>)list2.iterator();
		while(  iter2!=null && iter2.hasNext() ){
			Map.Entry<String, String> entry2 = iter2.next();

			out.println("cSubDtlsItxpCd["+idx+"]["+cCnt+"] = \""+entry2.getKey()+"\";");
			out.println("cSubDtlsItxpNm["+idx+"]["+cCnt+"] = \""+entry2.getValue()+"\";");
			cCnt++;
		}
		
		idx++;
	}
%>

<% 
	// 현물
	Iterator<Map.Entry<String,String>> iter1 = ComboUtil.mapSort(sbjt_data.getHtSpotDtlsItxp());
	
	int idx1 = 0;
	while ( iter1!=null && iter1.hasNext() )	{
		Map.Entry<String, String> entry = (Map.Entry<String, String>) iter1.next();
		
		out.println("cSpotDtlsItxpCd["+idx1+"] = \""+entry.getKey()+"\";");
		out.println("cSpotDtlsItxpNm["+idx1+"] = \""+entry.getValue()+"\";");
		out.println("cSpotSubDtlsItxpCd["+idx1+"] = new Array();");
		out.println("cSpotSubDtlsItxpNm["+idx1+"] = new Array();");
			
		int cCnt = 0;
		Iterator<Map.Entry<String,String>> iter2 =  ComboUtil.mapSort( sbjt_data.getHmSubDtlsItxp().get(entry.getKey()) ); // (Iterator<Map.Entry<String,String>>)list2.iterator();
		while(  iter2!=null && iter2.hasNext() ){
			Map.Entry<String, String> entry2 = iter2.next();

			out.println("cSpotSubDtlsItxpCd["+idx1+"]["+cCnt+"] = \""+entry2.getKey()+"\";");
			out.println("cSpotSubDtlsItxpNm["+idx1+"]["+cCnt+"] = \""+entry2.getValue()+"\";");
			cCnt++;
		}
		
		idx1++;
	}
%>

// 현금
function ReprDtlsItxpCdOnChange(obj, opt_name){
	var k = 0;
	var tObj = document.all["ReprSubDtlsItxpCd"];
	if(opt_name== null || opt_name=="null" || typeof opt_name=="undefined") opt_name = "전체";
	
	if(obj.selectedIndex !=0 ){
		//상호가 추가함
		for(var j = 0; j < cSubDtlsItxpCd.length; j++){
			if(obj.value == cDtlsItxpCd[j]){k = j;}	
		}
		tObj.options.length = cSubDtlsItxpCd[k].length+1;
		tObj.options[0] = new Option(opt_name);
		
		//상호가 수정한거
		for(var i=0; i < cSubDtlsItxpCd[k].length; i++){
			tObj.options[i+1] = new Option(cSubDtlsItxpNm[k][i], cSubDtlsItxpCd[k][i]);
		}

		//원래소스
		//for(var i=0; i < cSubDtlsItxpCd[obj.selectedIndex-1].length; i++){
		//	tObj.options[i+1] = new Option(cSubDtlsItxpNm[obj.selectedIndex-1][i], cSubDtlsItxpCd[obj.selectedIndex-1][i]);
		//}
	}else{
		tObj.options.length = 1;
		tObj.options[0] = new Option(opt_name);
	}
}

// 현물
function ReprDtlsItxpCdOnChange1(obj, opt_name){
	var tObj = document.all["ReprSubDtlsItxpCd"];
	if(opt_name== null || opt_name=="null" || typeof opt_name=="undefined") opt_name = "전체";
	if(obj.selectedIndex !=0 ){
		tObj.options.length = cSpotSubDtlsItxpCd[obj.selectedIndex-1].length+1;
		tObj.options[i] = new Option(opt_name);
		for(var i=0; i < cSpotSubDtlsItxpCd[obj.selectedIndex-1].length; i++){
			tObj.options[i+1] = new Option(cSpotSubDtlsItxpNm[obj.selectedIndex-1][i], cSpotSubDtlsItxpCd[obj.selectedIndex-1][i]);
		}
	}else{
		tObj.options.length = 1;
		tObj.options[0] = new Option(opt_name);
	}
}

function ItxpRecordInsert(obj, SpotUsePossItxpYn){
	setInsertRecord(obj, "");
}
function ItxpRecordInsert_setPitm(obj, Pitm){
	try{
	if(null == document.rtr_str_form.SBJT_MAP_KEYS.value || ''==document.rtr_str_form.SBJT_MAP_KEYS.value ){
		alert("과제를 선택하세요.");
		return false;
	}
	}catch(e){}
	setInsertRecord(obj, ""+Pitm+"");
}

function ItxpRecordInsert_setPitm_rMate(obj, Pitm){
    try{
    if(null == document.rtr_str_form.SBJT_MAP_KEYS.value || ''==document.rtr_str_form.SBJT_MAP_KEYS.value ){
        alert("과제를 선택하세요.");
        return false;
    }
    }catch(e){}
      //세팅 할 값만 써줘도 됨.
  var item = {
          "USE_DT": "",
          "DTLS_ITXP_NM": "",
          "SUB_DTLS_ITXP_NM": "",
          "SUB_DTLS_ITXP_BTN": "세목변경",
          "PITM": Pitm,
          "USE_AMT": "0",
          "USE_PTCL": "",
          "DTLS_ITXP_CD": "",
          "SUB_DTLS_ITXP_CD": "",
          "ETUB_BTN": "장비등록",
          "ETUB_REG_NO": "",
          "BUIT_ID": "",
          "BUIT_INST": ""
  };
  obj.addItemAt(item);   //컬럼추가
  columnBackGroundStyle();    //색상변경
}

function ItxpRecordInsert_setDt(obj, Dt){
	setInsertRecord(obj, ""+Dt+"미등록미등록");
}

function ItxpRecordDelete(obj, SpotUsePossItxpYn){

	try{
	if(null == document.rtr_str_form.SBJT_MAP_KEYS.value || ''==document.rtr_str_form.SBJT_MAP_KEYS.value ){
		alert("과제를 선택하세요.");
		return false;
	}
	}catch(e){}
	
	if(!chkGridSelectedCount(obj, "선택")) return;
	gridSelDelete(obj);
	uf_sbjt_itxp_trn(obj, SpotUsePossItxpYn);
}
 
function ItxpBachApcl(obj, SpotUsePossItxpYn, dtlsItxpCd, dtlsItxpNm, subDtlsItxpCd, subDtlsItxpNm, itx_cd_col_nm, trn_amt_col_nm){
	var cbReprDtlsItxpCd = document.all["ReprDtlsItxpCd"];				// 세목콤보
	var cbReprSubDtlsItxpCd = document.all["ReprSubDtlsItxpCd"];		// 세부비목콤보
	
	var ReprDtlsItxpCd = "";
	var ReprDtlsItxpNm = "";
	var ReprSubDtlsItxpCd = "";
	var ReprSubDtlsItxpNm = "";
	
	if(cbReprDtlsItxpCd.selectedIndex!=0 && cbReprSubDtlsItxpCd.selectedIndex!=0){
		ReprDtlsItxpCd = cbReprDtlsItxpCd[cbReprDtlsItxpCd.selectedIndex].value;
		ReprDtlsItxpNm = cbReprDtlsItxpCd[cbReprDtlsItxpCd.selectedIndex].text;
		
		ReprSubDtlsItxpCd = cbReprSubDtlsItxpCd[cbReprSubDtlsItxpCd.selectedIndex].value;
		ReprSubDtlsItxpNm = cbReprSubDtlsItxpCd[cbReprSubDtlsItxpCd.selectedIndex].text;
	}else{
		alert("대표세부비목을 선택해 주십시오.");
		return;
	}
	
		
	if(typeof dtlsItxpCd=="undefined") dtlsItxpCd="세부비목코드";
	if(typeof dtlsItxpNm=="undefined") dtlsItxpNm="세부비목";
	if(typeof subDtlsItxpCd=="undefined") subDtlsItxpCd="세세목코드";
	if(typeof subDtlsItxpNm=="undefined") subDtlsItxpNm="세세목";
	if(typeof SpotUsePossItxpYn=="undefined") SpotUsePossItxpYn="";
	
	for(var i=0; i < getGridRowCount(obj); i++){
		obj.SetValue(i, obj.GetItemIndexFromCaption(dtlsItxpCd), ReprDtlsItxpCd);
		obj.SetValue(i, obj.GetItemIndexFromCaption(dtlsItxpNm), ReprDtlsItxpNm);
		
		obj.SetValue(i, obj.GetItemIndexFromCaption(subDtlsItxpCd), ReprSubDtlsItxpCd);
		obj.SetValue(i, obj.GetItemIndexFromCaption(subDtlsItxpNm), ReprSubDtlsItxpNm);
	}
	
	uf_sbjt_itxp_trn(obj, SpotUsePossItxpYn, itx_cd_col_nm, trn_amt_col_nm);
}

function ItxpOneApcl(SpotUsePossItxpYn){
	var frm = document.frm;
	var obj = document.xgrid_itxp; 
	var idx = obj.FocusedRecordIndex;
	//if(!chk_sbjt_sch()) return false;
	uf_popup_SubDtlsItxp(frm, "xgrid_itxp", idx, SpotUsePossItxpYn);
}

//20140221 rMateGrid 추가
function ItxpOneApcl_rMate(SpotUsePossItxpYn, rootNm){
    var frm = document.frm;
    var idx = eventFocusRowIndex;
    
    if( !rootNm || typeof rootNm=="undefined" )  rootNm = "gridRoot";
    
    //if(!chk_sbjt_sch()) return false;
    uf_popup_SubDtlsItxp(frm, rootNm, idx, SpotUsePossItxpYn);
}

function isSelectedReprDtlsItxpCd(frmObj){
	if( frmObj.ReprDtlsItxpCd.selectedIndex==0 || frmObj.ReprSubDtlsItxpCd.selectedIndex==0 ){ 
		alert("대표세부비목을 선택해 주십시오.");
		return false;
	}
	
	return true;
}

function getReprDtlsItxpCd(frmObj){
	return frmObj.ReprDtlsItxpCd.options[frmObj.ReprDtlsItxpCd.selectedIndex].value;
}

function getReprDtlsItxpNm(frmObj){
	return frmObj.ReprDtlsItxpCd.options[frmObj.ReprDtlsItxpCd.selectedIndex].text;
}

function getReprSubDtlsItxpCd(frmObj){
	return frmObj.ReprSubDtlsItxpCd.options[frmObj.ReprSubDtlsItxpCd.selectedIndex].value;
}

function getReprSubDtlsItxpNm(frmObj){
	return frmObj.ReprSubDtlsItxpCd.options[frmObj.ReprSubDtlsItxpCd.selectedIndex].text;
}

/**
* 비목별 이체금액 추가
* param : obj(비목그리드), itx_cd_col_nm(비목코드), trn_amt_col_nm(금액)
*/
function uf_sbjt_itxp_trn(obj, SpotUsePossItxpYn,itx_cd_col_nm, trn_amt_col_nm){
	if( typeof obj=="undefined" ) obj = document.xgrid_itxp;
	if( typeof itx_cd_col_nm=="undefined" )  itx_cd_col_nm = "세부비목코드";
	if( typeof trn_amt_col_nm=="undefined" )  trn_amt_col_nm = "품목별합계";
	if( typeof SpotUsePossItxpYn=="undefined" )  SpotUsePossItxpYn = "";

	var itxp_sum = 0;	// 합계
	uf_sbjt_itxp_reset();
	
	for(var i=0; i < getGridRowCount(obj); i++){
		if( getCell(obj,i,itx_cd_col_nm)!="" ){
			//var trn_obj = eval('document.all["'+getCell(obj,i,itx_cd_col_nm)+'_extcn_trn"]');
			var col_extcn_trn = getCell(obj,i,itx_cd_col_nm)+'_extcn_trn';
			var trn_obj = document.all[col_extcn_trn];
			var trn_amt =Number(trn_obj.innerHTML.replace(/,/gi,''));
			//trn_amt += Number(getCell(obj,i,trn_amt_col_nm));
			//itxp_sum += Number(getCell(obj,i,trn_amt_col_nm));
			if( SpotUsePossItxpYn=="Y" ){
				trn_amt = trn_amt + Number(getCell(obj,i,"사용금액")); 
			}else{
				trn_amt = trn_amt + Number(getCell(obj,i,"공급금액")) + Number(getCell(obj,i,"부가가치세액"));
			} 
			trn_obj.innerHTML = toMoney(trn_amt);
		}
		if( SpotUsePossItxpYn=="Y" ){
			itxp_sum = itxp_sum + Number(getCell(obj,i,"사용금액"));
		}else{
			itxp_sum = itxp_sum + Number(getCell(obj,i,"공급금액")) + Number(getCell(obj,i,"부가가치세액"));
		}
	}
	document.all["itxp_extcn_sum"].innerHTML = toMoney(itxp_sum);
}

/**
* 비목별 이체금액 추가
* param : obj(비목그리드), itx_cd_col_nm(비목코드), trn_amt_col_nm(금액)
*/
function uf_sbjt_itxp_trn_bal(obj, SpotUsePossItxpYn,itx_cd_col_nm, trn_amt_col_nm){
	if( typeof obj=="undefined" ) obj = document.xgrid_itxp;
	if( typeof itx_cd_col_nm=="undefined" )  itx_cd_col_nm = "세부비목코드";
	if( typeof trn_amt_col_nm=="undefined" )  trn_amt_col_nm = "품목별합계";
	if( typeof SpotUsePossItxpYn=="undefined" )  SpotUsePossItxpYn = "";

	var itxp_sum = 0;	// 합계
	uf_sbjt_itxp_reset();
	
	for(var i=0; i < getGridRowCount(obj); i++){
		if( getCell(obj,i,itx_cd_col_nm)!="" ){
			//var trn_obj = eval('document.all["'+getCell(obj,i,itx_cd_col_nm)+'_extcn_trn"]');
			var col_extcn_trn = getCell(obj,i,itx_cd_col_nm)+'_extcn_trn';
			var trn_obj = document.all[col_extcn_trn];
			var trn_amt = Number(trn_obj.innerHTML.replace(/,/gi,''));
			
			var col_bal_extcn_trn = getCell(obj,i,itx_cd_col_nm)+'_extcn_bal';
			var trn_bal_obj = document.all[col_bal_extcn_trn];
			var trn_bal_amt = Number(trn_bal_obj.innerHTML.replace(/,/gi,''));
			
			var itxp_extcn_bal_obj = document.all["itxp_extcn_bal_sum"];
			var itxp_extcn_bal_amt = Number(itxp_extcn_bal_obj.innerHTML.replace(/,/gi,''));
			 
			//trn_amt += Number(getCell(obj,i,trn_amt_col_nm));
			//itxp_sum += Number(getCell(obj,i,trn_amt_col_nm));
			if( SpotUsePossItxpYn=="Y" ){
				trn_amt = trn_amt + Number(getCell(obj,i,"사용금액")); 
				trn_bal_amt = trn_bal_amt + Number(getCell(obj,i,"사용금액")); 
				itxp_extcn_bal_amt = itxp_extcn_bal_amt + Number(getCell(obj,i,"사용금액")); 
			}else{
				trn_amt = trn_amt + Number(getCell(obj,i,"공급금액")) + Number(getCell(obj,i,"부가가치세액"));
				trn_bal_amt = trn_bal_amt + Number(getCell(obj,i,"공급금액")) + Number(getCell(obj,i,"부가가치세액"));
				itxp_extcn_bal_amt = itxp_extcn_bal_amt + Number(getCell(obj,i,"공급금액")) + Number(getCell(obj,i,"부가가치세액"));
			} 
			trn_obj.innerHTML = toMoney(trn_amt);
			
			trn_bal_obj.innerHTML = toMoney(trn_bal_amt);
			itxp_extcn_bal_obj.innerHTML = toMoney(itxp_extcn_bal_amt);
		}
		if( SpotUsePossItxpYn=="Y" ){
			itxp_sum = itxp_sum + Number(getCell(obj,i,"사용금액"));
		}else{
			itxp_sum = itxp_sum + Number(getCell(obj,i,"공급금액")) + Number(getCell(obj,i,"부가가치세액"));
		}
	}
	document.all["itxp_extcn_sum"].innerHTML = toMoney(itxp_sum);
}

/**
* 현물비목별 이체금액 추가
* param : obj(비목그리드), itx_cd_col_nm(비목코드), trn_amt_col_nm(금액)
*/
function uf_sbjt_itxp_trn1(obj, itx_cd_col_nm, trn_amt_col_nm){
	if( typeof obj=="undefined" ) obj = document.xgrid_itxp;
	if( typeof itx_cd_col_nm=="undefined" )  itx_cd_col_nm = "세부비목코드";
	if( typeof trn_amt_col_nm=="undefined" )  trn_amt_col_nm = "사용금액";

	var itxp_sum = 0;	// 합계
	uf_sbjt_itxp_reset();
	for(var i=0; i < getGridRowCount(obj); i++){
		if( getCell(obj,i,itx_cd_col_nm)!="" ){
			var trn_obj = eval('document.all["'+getCell(obj,i,itx_cd_col_nm)+'_extcn_trn"]');
			var trn_amt =Number(trn_obj.innerHTML.replace(/,/gi,''));
			//trn_amt += Number(getCell(obj,i,trn_amt_col_nm));
			//itxp_sum += Number(getCell(obj,i,trn_amt_col_nm));
			trn_amt = trn_amt + Number(getCell(obj,i,"사용금액")); 
			trn_obj.innerHTML = toMoney(trn_amt);
		}
		itxp_sum = itxp_sum + Number(getCell(obj,i,"사용금액"));
	}

	document.all["itxp_extcn_sum"].innerHTML = toMoney(itxp_sum);
}

/**
* 비목금액 reset
* param : obj(param : item_key=item_value&...)
*/
function uf_sbjt_itxp_reset(){
var test =0;
	$("#TblSbjtItxpBal span[id$=_extcn_trn]").each(function(){
		$(this).text("0");
	});

	$("#itxp_extcn_sum").text("0");
}

/**
* 현물비목금액 reset
* param : obj(param : item_key=item_value&...)
*/
function uf_sbjt_itxp_reset1(){
	$("#TblSbjtItxpBal span[id$=_extcn_trn]").each(function(){
		$(this).text("0");
	});
	
	$("#itxp_extcn_sum").text("0");
}

function chk_sbjt_itxp_trnAmt(SpotUsePossItxpYn){
	var elem = document.body.all.tags('span');
	
	var idx=0;
	
	while (idx < elem.length) {
	
		//_extcn_bal
		//_extcn_trn
		//_extcn_tit
		if( elem[idx].id.indexOf('_extcn_trn') > 0 ){
		
			var trn = elem[idx].innerHTML;
			trn = trn.replace(/,/gi, '');
			if( trn == "0" ){
				idx++;
				continue;
			}
			
			var bal = document.getElementById( elem[idx].id.substring(0, elem[idx].id.length-10) + "_extcn_bal" ).innerHTML;
			bal = bal.replace(/,/gi, '');
			
			if( Number(trn) > Number(bal) ){
				var msg;
				if( typeof SpotUsePossItxpYn!="undefined" && SpotUsePossItxpYn=="Y" ){
					msg = " 현물사용금액이 현물잔액을 초과하였습니다.\n\n현물잔액을 확인하시기 바랍니다.";
				}else{
					msg = " 사용예정금액이 사용잔액을 초과하였습니다.\n\n사용잔액을 확인하시기 바랍니다.";					
				}
				
				var tit = document.getElementById( elem[idx].id.substring(0, elem[idx].id.length-10) + "_extcn_tit" ).innerHTML;
				alert(tit + msg);
				return false;
			}
		}
		idx++;
	}
	
	return true;	
}
