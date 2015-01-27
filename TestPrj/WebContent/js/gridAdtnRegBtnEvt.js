	/********************************************************
	* Function      : uf_AdtnRegItxpChk()
	* Parameter     : String itxp_cd (���κ���ڵ�)
	* Description   : �ΰǺ񳻿� ��ϰ��� ���üũ
	********************************************************/
	function uf_AdtnRegItxpChk(itxp_cd, msg){
		if(	"B0101"===itxp_cd ||
			"B0102"===itxp_cd ||
			"B0203"===itxp_cd ||
			"B0204"===itxp_cd ||
			"B0205"===itxp_cd   ){

			return true;
		}else{

			if(typeof msg!==undefined && msg===true){
				alert("�ΰǺ񳻿��� �Ʒ� ���κ�񿡼��� ��� �����մϴ�.\n\n[�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�]");
			}

			return false;
		}
	}
		
	/********************************************************
	* Function      : uf_gridBtnEvt1()
	* Description   : �׸����ư�̺�Ʈ (�⺻, ����-���ڼ��ݰ�꼭)
	********************************************************/
	function uf_gridBtnEvt(){
		gridPopBtnEvt("1");
	}
	
	/********************************************************
	* Function      : uf_gridBtnEvt2()
	* Description   : �׸����ư�̺�Ʈ (����-ī��)
	********************************************************/
	function uf_gridBtnEvt2(){
		gridPopBtnEvt("2");
	}
	
	/********************************************************
	* Function      : uf_gridBtnEvt3()
	* Description   : �׸����ư�̺�Ʈ (����-��Ÿ)
	********************************************************/
	function uf_gridBtnEvt3(){
		gridPopBtnEvt("3");
	}
	
	/********************************************************
	* Function      : gridPopBtnEvt()
	* Description   : �׸����ư�̺�Ʈ
	********************************************************/
	function gridPopBtnEvt(type){
		var obj, gridItxpIdx,frm;
		if(type==="2"){
			obj = document.xgrid_itxp2;
		}else if(type==="3"){
			obj = document.xgrid_itxp3;
		}else{
			obj = document.xgrid_itxp;
			frm = document.frm;
		}

		gridItxpIdx = obj.FocusedItemIndex;

		if(gridItxpIdx === obj.GetItemIndexFromCaption("���񺯰�")){
			uf_modal_SubDtlsItxp(obj);
		}else if(gridItxpIdx === obj.GetItemIndexFromCaption("�����������")){
			uf_modal_GridEvdcReg(obj,frm);
		}else if(gridItxpIdx === obj.GetItemIndexFromCaption("�ΰǺ�����")){
			uf_modal_AdtnInfoReg(obj);
		}
	}

	/********************************************************
	* Function      : uf_modal_SubDtlsItxp()
	* Parameter     : Object obj (�׸��� ��ü)
	* Parameter     : String SpotUsePossItxpYn (����뿩��[Y/N])
	* Description   : ��������ȸ
	********************************************************/
	function uf_modal_SubDtlsItxp(obj, SpotUsePossItxpYn){
		var url, result;
		
		url = "/jsp/comm/modal_dtls_itxp_inq.jsp?pSpotUsePossItxpYn="+SpotUsePossItxpYn;

		gridRec		= obj.FocusedRecordIndex;
		gridItem 	= obj.FocusedItemIndex;

		result = openModal(url, obj, "dialogWidth:770px; dialogHeight:530px;");

		// return
		if(typeof result !== "undefined"){
			result = eval('('+result+')');
			/*
			if(	!uf_AdtnRegItxpChk(result.DtlsItxpCd)){
				if( "���"===getCell(obj, gridRec,"�ΰ�������Ͽ���") ){
					if(!confirm("["+result.DtlsItxpNm +"] ���κ������ �����\n�ΰ����� ��ϳ����� ���� �˴ϴ�.\n�����Ͻðڽ��ϱ�?")){
						return;
					}

					obj.SetValue(gridRec, obj.GetItemIndexFromCaption("�ΰ�������Ͽ���"), "");
					obj.SetValue(gridRec, obj.GetItemIndexFromCaption("RcmsBeai"), "");
				}
			}
			*/
			if( "���"===getCell(obj, gridRec,"�ΰ�������Ͽ���") || "���"===getCell(obj, gridRec,"���������Ͽ���")){
				if(!confirm("["+result.DtlsItxpNm +"] ���κ������ �����\n�������/�ΰ����� ��ϳ����� ���� �˴ϴ�.\n�����Ͻðڽ��ϱ�?")){
					return;
				}

				uf_SetGridEvdcReg(obj, gridRec, "�̵��", "");
				uf_SetGridAdtnInfoReg(obj, gridRec, "�̵��", "");
			}
			
			uf_SetGridDtlsItxp(obj, gridRec, result.DtlsItxpCd, result.DtlsItxpNm, result.SubDtlsItxpCd, result.SubDtlsItxpNm);
			uf_sbjt_itxp_trn(obj, SpotUsePossItxpYn);
		}
	}

	/********************************************************
	* Function      : uf_modal_GridEvdcReg()
	* Parameter     : Object obj (�׸��� ��ü)
	* Description   : ����������
	********************************************************/
	function uf_modal_GridEvdcReg(obj,objfrm){
		
		var frm, result, itxpJson, obj, gridRec;
		var chr = "";

		// �ʼ���Ȯ��
		if(!uf_xGridColRegYn(obj, "���κ��")){
			return;
		}

		frm = document.frm;
		
		result = openModal("/jsp/comm/modal_beif_evdc_reg.jsp", obj, "dialogWidth:770px; dialogHeight:680px;");
		if(typeof result !== "undefined"){
			result = result.split(chr);
			for(var i=0, j=getGridRowCount(obj); i<j; i++){
				if(result[i]!==""){
					uf_SetGridEvdcReg(obj, i, "���", result[i]);
				}else{
					uf_SetGridEvdcReg(obj, i, "�̵��", "");
				}
			}
		}
	}

	/********************************************************
	* Function      : uf_modal_AdtnInfoReg()
	* Parameter     : Object obj (�׸��� ��ü)
	* Description   : �߰��������
	********************************************************/
	function uf_modal_AdtnInfoReg(obj){

		var url, result, gridRec, amt, itxp;
		
		// �ʼ���Ȯ��
		gridRec = obj.FocusedRecordIndex;
		if( ""===getCell(obj, gridRec, "���κ��") ){
			alert("���õ� ���� ���κ�� ����� �ʿ��մϴ�.");
			return;
		}

		if(	!uf_AdtnRegItxpChk(getCell(obj, gridRec, "���κ���ڵ�"), true) ){
			return;
		}
		
		amt = Number(getCell(obj, gridRec, "���ޱݾ�")) + Number(getCell(obj, gridRec, "�ΰ���ġ����"));
		url = "/jsp/comm/modal_adtn_info_reg.jsp?ChkAmt="+amt;

		gridRec		= obj.FocusedRecordIndex;
		gridItem 	= obj.FocusedItemIndex;

		result = openModal(url, obj, "dialogWidth:770px; dialogHeight:750px;");

		// return
		if(typeof result !== "undefined"){
			//	result = eval('('+result+')');
			if(result.length > 20){
				uf_SetGridAdtnInfoReg(obj, gridRec, "���", result);
			}else{
				uf_SetGridAdtnInfoReg(obj, gridRec, "�̵��", "");
			}
		}
	}

	/********************************************************
	* Function      : uf_xGridColRegYn()
	* Parameter     : Object obj (�׸��� ��ü)
	* Parameter     : String nvlColumn (��Ȯ�� Į��)
	* Description   : �׸����ʼ����Է�Ȯ��
	********************************************************/
	function uf_xGridColRegYn(obj, nvlColumn){
		for(var i=0, j=getGridRowCount(obj); i<j; i++){
			if(""===getCell(obj, i, nvlColumn)){
				alert("��ü ǰ�� "+ nvlColumn +" ����� �ʿ��մϴ�.");
				return false;
			}
		}

		return true;
	}

	/********************************************************
	* Function      : ItxpBachApclChk()
	* Parameter     : Object obj (�׸��� ��ü)
	* Description   : �׸����ʼ����Է�Ȯ��
	********************************************************/
	function ItxpBachApclChk(obj, SpotUsePossItxpYn){
		var cbReprDtlsItxpCd, cbReprSubDtlsItxpCd;
		var ReprDtlsItxpCd, ReprDtlsItxpNm, ReprSubDtlsItxpCd, ReprSubDtlsItxpNm;
		if(typeof SpotUsePossItxpYn==="undefined") SpotUsePossItxpYn="";
		 
		cbReprDtlsItxpCd	= document.all["ReprDtlsItxpCd"];		// �����޺�
		cbReprSubDtlsItxpCd = document.all["ReprSubDtlsItxpCd"];	// ���κ���޺�
		
		if(cbReprDtlsItxpCd.selectedIndex!=0 && cbReprSubDtlsItxpCd.selectedIndex!=0){
			ReprDtlsItxpCd		= cbReprDtlsItxpCd[cbReprDtlsItxpCd.selectedIndex].value;
			ReprDtlsItxpNm		= cbReprDtlsItxpCd[cbReprDtlsItxpCd.selectedIndex].text;
			ReprSubDtlsItxpCd	= cbReprSubDtlsItxpCd[cbReprSubDtlsItxpCd.selectedIndex].value;
			ReprSubDtlsItxpNm	= cbReprSubDtlsItxpCd[cbReprSubDtlsItxpCd.selectedIndex].text;
		}else{
			alert("��ǥ���κ���� ������ �ֽʽÿ�.");
			return false;
		}

		var bAdtnInfo = false;	// �ΰ��������� ����

		/*
		if(!uf_AdtnRegItxpChk(ReprDtlsItxpCd)){
			for(var i=0, j=getGridRowCount(obj); i<j ; i++){
				if("���"===getCell(obj, i, "�ΰ�������Ͽ���")){
					if(!confirm("["+ReprDtlsItxpNm+"] ���κ������ �����\n�ΰ����� ��ϳ����� ���� �˴ϴ�.\n�����Ͻðڽ��ϱ�?")){
						return false;
					}else{
						bAdtnInfo = true;
						break;
					}
				}
			}
		}
		*/
		for(var i=0, j=getGridRowCount(obj); i<j ; i++){
			if("���"===getCell(obj, i, "�ΰ�������Ͽ���") || "���"===getCell(obj, i, "���������Ͽ���")){
				if(!confirm("["+ReprDtlsItxpNm+"] ���κ������ �����\n�������/�ΰ����� ��ϳ����� ���� �˴ϴ�.\n�����Ͻðڽ��ϱ�?")){
					return false;
				}else{
					bAdtnInfo = true;
					break;
				}
			}
		}
		
		for(var i=0, j=getGridRowCount(obj); i<j ; i++){
			uf_SetGridDtlsItxp(obj, i, ReprDtlsItxpCd, ReprDtlsItxpNm, ReprSubDtlsItxpCd, ReprSubDtlsItxpNm);

			if(bAdtnInfo){
				uf_SetGridEvdcReg(obj, i, "�̵��", "");
				uf_SetGridAdtnInfoReg(obj, i, "�̵��", "");
			}
		}
		
		uf_sbjt_itxp_trn(obj, SpotUsePossItxpYn);
	}

	/********************************************************
	* Function      : uf_SetGridDtlsItxp()
	* Parameter     : Object obj (�׸��� ��ü)
	* Parameter     : String rowIdx (�׸��� ���ÿ�)
	* Parameter     : String dtlsItxpCd (���κ���ڵ�)
	* Parameter     : String dtlsItxpNm (���κ���)
	* Parameter     : String subDtlsItxpCd (�������ڵ�)
	* Parameter     : String subDtlsItxpNm (�������)
	* Parameter     : String RcmsBeif (RcmsBeif)
	* Description   : �׸����ʼ����Է�Ȯ��
	********************************************************/
	function uf_SetGridDtlsItxp(obj, rowIdx, dtlsItxpCd, dtlsItxpNm, subDtlsItxpCd, subDtlsItxpNm){
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("���κ���ڵ�"), dtlsItxpCd);
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("���κ��"), dtlsItxpNm);
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("�������ڵ�"), subDtlsItxpCd);
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("������"), subDtlsItxpNm);
	}

	/********************************************************
	* Function      : uf_SetGridEvdcReg()
	* Parameter     : Object obj (�׸��� ��ü)
	* Parameter     : String rowIdx (�׸��� ���ÿ�)
	* Parameter     : String evdcRegYn (������Ͽ���)
	* Parameter     : String RcmsBeif (RcmsBeif)
	* Description   : �׸����ʼ����Է�Ȯ��
	********************************************************/
	function uf_SetGridEvdcReg(obj, rowIdx, evdcRegYn, RcmsBeif){
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("���������Ͽ���"), evdcRegYn);
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("RcmsBeif"), RcmsBeif);
	}

	/********************************************************
	* Function      : uf_SetGridAdtnInfoReg()
	* Parameter     : Object obj (�׸��� ��ü)
	* Parameter     : String rowIdx (�׸��� ���ÿ�)
	* Parameter     : String adtnRegYn (�ΰ�������Ͽ���)
	* Parameter     : String rcmsBeai (RcmsBeai)
	* Description   : �׸����ʼ����Է�Ȯ��
	********************************************************/
	function uf_SetGridAdtnInfoReg(obj, rowIdx, adtnRegYn, rcmsBeai){
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("�ΰ�������Ͽ���"), adtnRegYn);
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("RcmsBeai"), rcmsBeai);
	}
	
	/********************************************************
	* Function      : fn_SetEvdcAmt()
	* Description   : ������ϱݾ�����
	********************************************************/
	function fn_SetEvdcAmt(obj){
		var frm = document.frm;
		
		if(typeof obj==="undefined"){
			obj = document.xgrid_itxp;
		}

		if(getGridRowCount(obj)!=1){alert("�����ݾ������� ����� 1���϶��� �����մϴ�."); return;}
		
		obj.SetValue(0, obj.GetItemIndexFromCaption("ǰ��"), getCell(obj,0,"ǰ��"));
		obj.SetValue(0, obj.GetItemIndexFromCaption("�ΰ���ġ����"), frm.pVatAmt.value);
		obj.SetValue(0, obj.GetItemIndexFromCaption("���ޱݾ�"), frm.pSplyAmt.value);
		
		uf_sbjt_itxp_trn(obj);
	}