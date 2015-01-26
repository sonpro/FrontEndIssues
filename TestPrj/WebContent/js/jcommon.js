/**
 * 공통코드명 가져오기
 * @param lclas_cd : 대분류코드
 * @param sclas_cd : 소분류코드
 * @return String	  
 */
function getComCode(lclas_cd, sclas_cd){
	var result = "";
	
	var ajax = jex.createAjaxUtil("rcms_com_r001");
	ajax.setAsync(false);
  	ajax.set("DV"		, "CODE");
  	ajax.set("LCLAS_CD"	, lclas_cd);
  	ajax.set("SCLAS_CD"	, sclas_cd);
  	ajax.execute(function(dat){
  		result = dat.RESULT_CODE;
  	});
  	
	return result;
}

/**
 * 숫자로 구성된 문자열을 특정형식으로 포맷한다
 * @param str 		바꿀 문자열
 * @param delimPtrn 바뀔 형태
 * @return String 
 */
function setComDelim(str, delimPtrn){
	var result = "";
	
	var ajax = jex.createAjaxUtil("rcms_com_r001");
	ajax.setAsync(false);
  	ajax.set("DV"		, "FORMAT");
  	ajax.set("CD"		, str);
  	ajax.set("FRMT_CTT"	, delimPtrn);
  	ajax.execute(function(dat){
  		result = dat.RESULT_CODE;
  	});
  	
	return result;
}

/**
 * 은행 따른 계좌번호를 포맷팅 셋팅 
 * @param acct_no : 계좌번호
 * @param bank_cd : 은행 코드(bank_cd, bank_scd 모두 포함, 길이에 따라서 구분함)
 * @param bank_gb : 은행 구분(01:은행, 02:증권, 04:카드, 05:자산운용,투신운용)
 * @return String 
 */
function getAcctForm(acct_no, bank_cd, bank_gb) {
	var result = "";

	var ajax = jex.createAjaxUtil("rcms_com_r001");
	ajax.setAsync(false);
		ajax.set("DV"		, "BNK_FORMAT");
	  	ajax.set("LCLAS_CD"	, acct_no);
	  	ajax.set("SCLAS_CD"	, bank_cd);
		ajax.set("CD"		, bank_gb);
		ajax.execute(function(dat){
			result = dat.RESULT_CODE;
		});
		
	return result;
}

function setDate(type, target) {
	var date = $("#"+target).val(); // 검색일
	if('Prev' == type) {
		date = setToDate(date,  -1, 'd', '-');
	} else if('Next' == type) {
		date = setToDate(date,  +1, 'd', '-');
	}
	$("#"+target).val(date);
}

function replaceAll(content,before,after){
    return content.split(before).join(after);
}