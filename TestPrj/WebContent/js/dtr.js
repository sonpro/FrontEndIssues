//Copyright ⓒ 2009 MKIRO All Rights Reserved

function DynamicTableColumn(){
	this._text = "";
	this._style = "";
	this._class = "";
	this._width = "";
	this._height = "";

	this.setText = function(vText){
		this._text=vText;
	}

	this.getText = function(){
		return this._text;
	}

	this.setStyle = function(vStyle){
		this._style = vStyle;
	}

	this.getStyle = function(){
		return this._style;
	}

	this.setClass = function(vClass){
		this._class = vClass;
	}

	this.getClass = function(){
		return this._class;
	}
}

function DynamicTableTr(doc, table, colCnt, tailTr){
	this._array = new Array(colCnt);
	this._table = table;
//	this._tableName = tableName;
	this._colCount = colCnt;
	this._bError = false;

	for(var i=0; i<colCnt; i++){
		this._array[i] = new DynamicTableColumn();
	}

	this.bIndexOutOfBound = function(idx){
		if(this._colCount<=idx){
			alert("초기 설정된 칼럼 개수 범위를 벗어났습니다.\n\n#초기 설정 칼럼 수 :"+this._colCount+"\n\n#요청 칼럼 인덱스:"+idx);
			_bError = true;
			return true;
		}

		return false;
	}

	this.setText = function(idx, vText){
		if(!this.bIndexOutOfBound(idx)){
			this._array[idx].setText(vText);
		}
	}

	this.getText = function(idx){
		return this._array[idx].getText();
	}

	this.setStyle = function(idx, vStyle){
		if(!this.bIndexOutOfBound(idx)){
			this._array[idx].setStyle(vStyle);
		}
	}

	this.getStyle = function(idx){
		return this._array[idx].getStyle();
	}

	this.setClass = function(idx, vClass){
		if(!this.bIndexOutOfBound(idx)){
			this._array[idx].setClass(vClass);
		}
	}

	this.getClass = function(idx){
		return this._array[idx].getClass();
	}

	this.setCheckText = function(idx, elemNm, eleValue, option){
		var _tmpText = "<input type=\"checkbox\" name=\""+elemNm+"\" value=\""+eleValue+"\" "+option+" />";
		this.setText(idx, _tmpText);
	}

	this.setRadioText = function(idx, elemNm, eleValue, option){
		var _tmpText = "<input type=\"radio\" name=\""+elemNm+"\" value=\""+eleValue+"\" "+option+" />";
		this.setText(idx, _tmpText);
	}

	this.setInputText = function(idx, elemNm, elemValue, maxlength, size, vClass, vStyle, vMask, option){
		var _tmpText = "<input type=\"text\" name=\""+elemNm+"\" value=\""+elemValue+"\" maxlength=\""+maxlength+"\" size=\""+size+"\" class=\""+vClass+"\" style=\""+vStyle+"\" mask=\""+vMask+"\" "+option+" />";
		this.setText(idx, _tmpText);
	}

	this.setHiddenText = function(idx, elemNm, elemValue){
		var _tmpText = "<input type=\"hidden\" name=\""+elemNm+"\" value=\""+elemValue+"\" />";
		this.setText(idx, _tmpText);
	}

	this.addTableTr = function(){
		if(this._bError) return;
		var _target_table = this._table; //document.getElementById(this._tableName);
		var _lo_tbody = null;
		var _lo_row, _lo_cell;
		
		for(i = 0 ; i < _target_table.childNodes.length; i++){
				if(typeof  _target_table.childNodes[i].tagName != 'undefined' &&  _target_table.childNodes[i].tagName.toUpperCase() == 'TBODY' ){
					_lo_tbody = _target_table.childNodes[i];
					break;
				}
		}
		
		_lo_row = doc.createElement("tr");
		_lo_tbody.appendChild(_lo_row);
		
		for(var i=0; i<this._colCount; i++){
			_lo_cell = doc.createElement("td");
			_lo_cell.setAttribute('style',this.getStyle(i));
			_lo_cell.setAttribute('class',this.getClass(i));
			_lo_cell.innerHTML = this.getText(i);
			_lo_row.appendChild(_lo_cell);
		}

		var _tail_row = tailTr;
		if(_tail_row!=null && typeof _tail_row!="undefined") _lo_tbody.appendChild(_tail_row);
	}
}

/********************************************************
* Function		: uf_delTableTr(chkFrm, targetTable)
* Parameter		: chkFrm(삭제될 checkFrm 요소) targetTable(삭제테이블명)
* Description	: 파일삭제시 해당테이블에 로우 삭제
********************************************************/
function uf_delCheckTableTr(chkFrm, targetTable){
	if(!confirm("선택된 열을 삭제하시겠습니까?")) return;
	var target_table = targetTable;

	if(chkFrm.length == null){
		if(chkFrm.checked){
			target_table.deleteRow(1);
		}
	}else{
		for(i=(chkFrm.length-1); i>=0; i--){
			if(chkFrm[i].checked){
				var rowSpanTd = eval(chkFrm[i].value);
				
				try{
					if(typeof "undefined"!=rowSpanTd.getAttribute("rowSpan")){
						rowSpanTd.rowSpan = Number(rowSpanTd.rowSpan)-1;
					}
				}catch(e){}

				target_table.deleteRow(1+i);
			}
		}
	}
}