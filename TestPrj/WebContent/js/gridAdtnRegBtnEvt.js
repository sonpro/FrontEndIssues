	/********************************************************
	* Function      : uf_AdtnRegItxpChk()
	* Parameter     : String itxp_cd (세부비목코드)
	* Description   : 인건비내역 등록가능 비목체크
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
				alert("인건비내역은 아래 세부비목에서만 등록 가능합니다.\n\n[내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비]");
			}

			return false;
		}
	}
		
	/********************************************************
	* Function      : uf_gridBtnEvt1()
	* Description   : 그리드버튼이벤트 (기본, 간편-전자세금계산서)
	********************************************************/
	function uf_gridBtnEvt(){
		gridPopBtnEvt("1");
	}
	
	/********************************************************
	* Function      : uf_gridBtnEvt2()
	* Description   : 그리드버튼이벤트 (간편-카드)
	********************************************************/
	function uf_gridBtnEvt2(){
		gridPopBtnEvt("2");
	}
	
	/********************************************************
	* Function      : uf_gridBtnEvt3()
	* Description   : 그리드버튼이벤트 (간편-기타)
	********************************************************/
	function uf_gridBtnEvt3(){
		gridPopBtnEvt("3");
	}
	
	/********************************************************
	* Function      : gridPopBtnEvt()
	* Description   : 그리드버튼이벤트
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

		if(gridItxpIdx === obj.GetItemIndexFromCaption("세목변경")){
			uf_modal_SubDtlsItxp(obj);
		}else if(gridItxpIdx === obj.GetItemIndexFromCaption("증빙서류등록")){
			uf_modal_GridEvdcReg(obj,frm);
		}else if(gridItxpIdx === obj.GetItemIndexFromCaption("인건비정보")){
			uf_modal_AdtnInfoReg(obj);
		}
	}

	/********************************************************
	* Function      : uf_modal_SubDtlsItxp()
	* Parameter     : Object obj (그리드 객체)
	* Parameter     : String SpotUsePossItxpYn (현사용여부[Y/N])
	* Description   : 세세목조회
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
				if( "등록"===getCell(obj, gridRec,"부가정보등록여부") ){
					if(!confirm("["+result.DtlsItxpNm +"] 세부비목으로 변경시\n부가정보 등록내역이 삭제 됩니다.\n변경하시겠습니까?")){
						return;
					}

					obj.SetValue(gridRec, obj.GetItemIndexFromCaption("부가정보등록여부"), "");
					obj.SetValue(gridRec, obj.GetItemIndexFromCaption("RcmsBeai"), "");
				}
			}
			*/
			if( "등록"===getCell(obj, gridRec,"부가정보등록여부") || "등록"===getCell(obj, gridRec,"비목증빙등록여부")){
				if(!confirm("["+result.DtlsItxpNm +"] 세부비목으로 변경시\n비목증빙/부가정보 등록내역이 삭제 됩니다.\n변경하시겠습니까?")){
					return;
				}

				uf_SetGridEvdcReg(obj, gridRec, "미등록", "");
				uf_SetGridAdtnInfoReg(obj, gridRec, "미등록", "");
			}
			
			uf_SetGridDtlsItxp(obj, gridRec, result.DtlsItxpCd, result.DtlsItxpNm, result.SubDtlsItxpCd, result.SubDtlsItxpNm);
			uf_sbjt_itxp_trn(obj, SpotUsePossItxpYn);
		}
	}

	/********************************************************
	* Function      : uf_modal_GridEvdcReg()
	* Parameter     : Object obj (그리드 객체)
	* Description   : 비목증빙등록
	********************************************************/
	function uf_modal_GridEvdcReg(obj,objfrm){
		
		var frm, result, itxpJson, obj, gridRec;
		var chr = "";

		// 필수값확인
		if(!uf_xGridColRegYn(obj, "세부비목")){
			return;
		}

		frm = document.frm;
		
		result = openModal("/jsp/comm/modal_beif_evdc_reg.jsp", obj, "dialogWidth:770px; dialogHeight:680px;");
		if(typeof result !== "undefined"){
			result = result.split(chr);
			for(var i=0, j=getGridRowCount(obj); i<j; i++){
				if(result[i]!==""){
					uf_SetGridEvdcReg(obj, i, "등록", result[i]);
				}else{
					uf_SetGridEvdcReg(obj, i, "미등록", "");
				}
			}
		}
	}

	/********************************************************
	* Function      : uf_modal_AdtnInfoReg()
	* Parameter     : Object obj (그리드 객체)
	* Description   : 추가정보등록
	********************************************************/
	function uf_modal_AdtnInfoReg(obj){

		var url, result, gridRec, amt, itxp;
		
		// 필수값확인
		gridRec = obj.FocusedRecordIndex;
		if( ""===getCell(obj, gridRec, "세부비목") ){
			alert("선택된 내역 세부비목 등록이 필요합니다.");
			return;
		}

		if(	!uf_AdtnRegItxpChk(getCell(obj, gridRec, "세부비목코드"), true) ){
			return;
		}
		
		amt = Number(getCell(obj, gridRec, "공급금액")) + Number(getCell(obj, gridRec, "부가가치세액"));
		url = "/jsp/comm/modal_adtn_info_reg.jsp?ChkAmt="+amt;

		gridRec		= obj.FocusedRecordIndex;
		gridItem 	= obj.FocusedItemIndex;

		result = openModal(url, obj, "dialogWidth:770px; dialogHeight:750px;");

		// return
		if(typeof result !== "undefined"){
			//	result = eval('('+result+')');
			if(result.length > 20){
				uf_SetGridAdtnInfoReg(obj, gridRec, "등록", result);
			}else{
				uf_SetGridAdtnInfoReg(obj, gridRec, "미등록", "");
			}
		}
	}

	/********************************************************
	* Function      : uf_xGridColRegYn()
	* Parameter     : Object obj (그리드 객체)
	* Parameter     : String nvlColumn (널확인 칼럼)
	* Description   : 그리드필수값입력확인
	********************************************************/
	function uf_xGridColRegYn(obj, nvlColumn){
		for(var i=0, j=getGridRowCount(obj); i<j; i++){
			if(""===getCell(obj, i, nvlColumn)){
				alert("전체 품목 "+ nvlColumn +" 등록이 필요합니다.");
				return false;
			}
		}

		return true;
	}

	/********************************************************
	* Function      : ItxpBachApclChk()
	* Parameter     : Object obj (그리드 객체)
	* Description   : 그리드필수값입력확인
	********************************************************/
	function ItxpBachApclChk(obj, SpotUsePossItxpYn){
		var cbReprDtlsItxpCd, cbReprSubDtlsItxpCd;
		var ReprDtlsItxpCd, ReprDtlsItxpNm, ReprSubDtlsItxpCd, ReprSubDtlsItxpNm;
		if(typeof SpotUsePossItxpYn==="undefined") SpotUsePossItxpYn="";
		 
		cbReprDtlsItxpCd	= document.all["ReprDtlsItxpCd"];		// 세목콤보
		cbReprSubDtlsItxpCd = document.all["ReprSubDtlsItxpCd"];	// 세부비목콤보
		
		if(cbReprDtlsItxpCd.selectedIndex!=0 && cbReprSubDtlsItxpCd.selectedIndex!=0){
			ReprDtlsItxpCd		= cbReprDtlsItxpCd[cbReprDtlsItxpCd.selectedIndex].value;
			ReprDtlsItxpNm		= cbReprDtlsItxpCd[cbReprDtlsItxpCd.selectedIndex].text;
			ReprSubDtlsItxpCd	= cbReprSubDtlsItxpCd[cbReprSubDtlsItxpCd.selectedIndex].value;
			ReprSubDtlsItxpNm	= cbReprSubDtlsItxpCd[cbReprSubDtlsItxpCd.selectedIndex].text;
		}else{
			alert("대표세부비목을 선택해 주십시오.");
			return false;
		}

		var bAdtnInfo = false;	// 부가정보삭제 여부

		/*
		if(!uf_AdtnRegItxpChk(ReprDtlsItxpCd)){
			for(var i=0, j=getGridRowCount(obj); i<j ; i++){
				if("등록"===getCell(obj, i, "부가정보등록여부")){
					if(!confirm("["+ReprDtlsItxpNm+"] 세부비목으로 변경시\n부가정보 등록내역이 삭제 됩니다.\n변경하시겠습니까?")){
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
			if("등록"===getCell(obj, i, "부가정보등록여부") || "등록"===getCell(obj, i, "비목증빙등록여부")){
				if(!confirm("["+ReprDtlsItxpNm+"] 세부비목으로 변경시\n비목증빙/부가정보 등록내역이 삭제 됩니다.\n변경하시겠습니까?")){
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
				uf_SetGridEvdcReg(obj, i, "미등록", "");
				uf_SetGridAdtnInfoReg(obj, i, "미등록", "");
			}
		}
		
		uf_sbjt_itxp_trn(obj, SpotUsePossItxpYn);
	}

	/********************************************************
	* Function      : uf_SetGridDtlsItxp()
	* Parameter     : Object obj (그리드 객체)
	* Parameter     : String rowIdx (그리드 선택열)
	* Parameter     : String dtlsItxpCd (세부비목코드)
	* Parameter     : String dtlsItxpNm (세부비목명)
	* Parameter     : String subDtlsItxpCd (세세목코드)
	* Parameter     : String subDtlsItxpNm (세세목명)
	* Parameter     : String RcmsBeif (RcmsBeif)
	* Description   : 그리드필수값입력확인
	********************************************************/
	function uf_SetGridDtlsItxp(obj, rowIdx, dtlsItxpCd, dtlsItxpNm, subDtlsItxpCd, subDtlsItxpNm){
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("세부비목코드"), dtlsItxpCd);
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("세부비목"), dtlsItxpNm);
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("세세목코드"), subDtlsItxpCd);
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("세세목"), subDtlsItxpNm);
	}

	/********************************************************
	* Function      : uf_SetGridEvdcReg()
	* Parameter     : Object obj (그리드 객체)
	* Parameter     : String rowIdx (그리드 선택열)
	* Parameter     : String evdcRegYn (증빙등록여부)
	* Parameter     : String RcmsBeif (RcmsBeif)
	* Description   : 그리드필수값입력확인
	********************************************************/
	function uf_SetGridEvdcReg(obj, rowIdx, evdcRegYn, RcmsBeif){
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("비목증빙등록여부"), evdcRegYn);
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("RcmsBeif"), RcmsBeif);
	}

	/********************************************************
	* Function      : uf_SetGridAdtnInfoReg()
	* Parameter     : Object obj (그리드 객체)
	* Parameter     : String rowIdx (그리드 선택열)
	* Parameter     : String adtnRegYn (부가정보등록여부)
	* Parameter     : String rcmsBeai (RcmsBeai)
	* Description   : 그리드필수값입력확인
	********************************************************/
	function uf_SetGridAdtnInfoReg(obj, rowIdx, adtnRegYn, rcmsBeai){
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("부가정보등록여부"), adtnRegYn);
		obj.SetValue(rowIdx, obj.GetItemIndexFromCaption("RcmsBeai"), rcmsBeai);
	}
	
	/********************************************************
	* Function      : fn_SetEvdcAmt()
	* Description   : 증빙등록금액적용
	********************************************************/
	function fn_SetEvdcAmt(obj){
		var frm = document.frm;
		
		if(typeof obj==="undefined"){
			obj = document.xgrid_itxp;
		}

		if(getGridRowCount(obj)!=1){alert("증빙금액적용은 비목이 1건일때만 가능합니다."); return;}
		
		obj.SetValue(0, obj.GetItemIndexFromCaption("품목"), getCell(obj,0,"품목"));
		obj.SetValue(0, obj.GetItemIndexFromCaption("부가가치세액"), frm.pVatAmt.value);
		obj.SetValue(0, obj.GetItemIndexFromCaption("공급금액"), frm.pSplyAmt.value);
		
		uf_sbjt_itxp_trn(obj);
	}