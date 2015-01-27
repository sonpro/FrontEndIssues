/**
 * �����ڵ�� ��������
 * @param lclas_cd : ��з��ڵ�
 * @param sclas_cd : �Һз��ڵ�
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
 * ���ڷ� ������ ���ڿ��� Ư���������� �����Ѵ�
 * @param str 		�ٲ� ���ڿ�
 * @param delimPtrn �ٲ� ����
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
 * ���� ���� ���¹�ȣ�� ������ ���� 
 * @param acct_no : ���¹�ȣ
 * @param bank_cd : ���� �ڵ�(bank_cd, bank_scd ��� ����, ���̿� ���� ������)
 * @param bank_gb : ���� ����(01:����, 02:����, 04:ī��, 05:�ڻ���,���ſ��)
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
	var date = $("#"+target).val(); // �˻���
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