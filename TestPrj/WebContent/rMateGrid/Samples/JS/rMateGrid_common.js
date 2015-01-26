// 데이타가 JSON형일 경우 넣어줍니다. (설정을 안할경우 xml로 인식하여 오류가 발생합니다)
var flashVars = "dataType=json&bridgeName=gridBridge";


//rMateGrid 관련 객체
var gridApp; // 플래시 기본 객체
var gridData; // 그리드 데이터 담기
var gridRoot; // 데이타와 그리드를 포함하는 객체
var dataGrid; // 그리드 정보 담기
var collection; // 그리드의 데이타 객체
var selectorColumn;	// 셀렉터 컬럼
var eventFocusRowIndex;



//팝업생성
var editRowIndex;
var editDataRow;
var editDataField;





/**
 * 조회 시 그리드 데이터 초기화를 위해 생성
 */
function rMateGridLayoutInit_rMate(root, app, layout) {
	var imsiGridRoot;
	var imsiCollection;
	
	if(!root || typeof root == "undefined"){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
	}
	
	imsiCollection = imsiGridRoot.getCollection();
	
    if (imsiCollection == null) {
        return;
    };

    //layerClose();
    var clen = imsiCollection.getLength();
    var imsiApp;
    
    if(!app || typeof app == "undefined"){
    	imsiApp = gridApp;
    	//imsiGridRoot = imsiApp.getGridRoot();
    }else{
    	imsiApp = app;
    }
    
    
    if(clen>0){
    	imsiApp.setData([]);    //그리드 초기화
    	/*
    	setTimeout(
           function(){
        	   imsiApp.setData([]);    //그리드 초기화
           }
           , 100);   // 1000 = 1초
    	*/
    };
    
    var imsiLayout;

    if(!layout || typeof layout == "undefined"){
    	//imsiLayout = layoutStr;
    }else{
    	imsiLayout = layout;
    	imsiApp.setLayout(imsiLayout);   //그리드 Layout 초기화
    }
    

}


/**
 * 조회 시 그리드 데이터 초기화를 위해 타임아웃 생성
 */
function rMateGridLayoutInit_rMate2(root, app, layout) {
	var imsiGridRoot;
	var imsiCollection;
	
	if(!root || typeof root == "undefined"){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
	}
	
	imsiCollection = imsiGridRoot.getCollection();
	
    if (imsiCollection == null) {
        return;
    };

    //layerClose();
    var clen = imsiCollection.getLength();
    var imsiApp;
    
    if(!app || typeof app == "undefined"){
    	imsiApp = gridApp;
    	//imsiGridRoot = imsiApp.getGridRoot();
    }else{
    	imsiApp = app;
    }
    
    
    if(clen>0){
    	imsiApp.setData([]);    //그리드 초기화
    	
    	setTimeout(
           function(){
        	   imsiApp.setData([]);    //그리드 초기화
           }
           , 100);   // 1000 = 1초
    };
    
    var imsiLayout;

    if(!layout || typeof layout == "undefined"){
    	//imsiLayout = layoutStr;
    }else{
    	imsiLayout = layout;
    	imsiApp.setLayout(imsiLayout);   //그리드 Layout 초기화
    }
    

}



function rMateGridDataInit(root, app){
	var imsiGridRoot;
	var imsiCollection;
	
	if(!root || typeof root == "undefined"){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
	}
	
	imsiCollection = imsiGridRoot.getCollection();

	if (imsiCollection == null) {
	    return;
	}
	
	var imsiApp;
    if(!app || typeof app == "undefined"){
    	imsiApp = gridApp;
    }else{
    	imsiApp = app;
    }
    
	var clen = imsiCollection.getLength();
	if(clen>0){
    	setTimeout(
           function(){
        	   imsiApp.setData([]);    //그리드 초기화
           }
           , 100);   // 1000 = 1초
    };
    
}



/**
 * 레이어보기 팝업 생성
 * @param dataGrid
 * @param dataRow
 * @param type : body, window(popup)
 */
function layerDetail(dataGrid, dataRow, type) {

	if(!dataGrid) return;
    if(!dataRow) return;
	
    var columns = dataGrid.getColumns();
    var columnObj = {};     //grid 정보
    var headerLength = 0;   //row 카운트
    
    //그리드 상세내역 테이블 생성
    var textHtml = "<table cellspacing=\"1px\" style=\"width:345px;font-size:12px;background:#c5c0d9;\">";
    for ( var i = 0; i < columns.length; i++){
        if (columns[i].getVisible()) {
            columnObj = dataGrid.getColumns()[i];   //그리드의 Header 정보 가져오기

            var headerText = columnObj.getHeaderText();
            //헤더의 내용이 없을때에는 상세보기에서 제외
            if( headerText == "" || headerText == null || headerText == "null" ) continue;
            
            headerLength++; // table 생성시 rowCount
            //테이블 디자인 생성
            textHtml += "<tr align=\"left\" height=\"19px\">";
            textHtml += "<td width=\"140\" valign=\"middle\" bgcolor=\"#ebebeb\" style=\"padding-left:10px\">";
            textHtml += headerText;  //Header의 text 문구
            textHtml += "</td>";
            textHtml += "<td width=\"185\" valign=\"middle\" bgcolor=\"#ffffff\" style=\"padding-left:10px\">";
            //textHtml += dataRow[columnObj.getDataField()];  //dataFiled의 값
            var str = dataRow[columnObj.getDataField()];
            
            //alert( "getDataField : " + columnObj.getDataField() + "\nstr : " + str+ "\ntypeName : " + dataRow[columnObj.getDataField()].getSelected());
            
            if(str == null || typeof str == "undefined"){
                str = "";
            }else {
                if(isIdMoney(columnObj.getDataField())) str = toMoney(str);
            }
            
            textHtml += str;
            
            /* 
            var str = dataRow[columnObj.getDataField()];
            if(!isNaN(str)){
                textHtml += putComma(str);  ////dataFiled의 값
            }else{
                textHtml += str;
            }
             */
            textHtml += "</td>";
            textHtml += "</tr>";
        }
    }
    textHtml += "</table>";
    
    var layerStyel = "";
    /*
	var height = 45 + ( 21 * headerLength);
    var winWidth = document.body.clientWidth; //현재창의 넓이
	var winHeight = document.body.clientHeight; //현재창의 높이
    var x = (winWidth/2) - (355/2);
	var y = $(window).scrollTop()  + ($(window).scrollTop() - height)/2;    //스크롤바 상관없이 중앙에 표기
    
	alert(    "height : " + (45 + ( 21 * headerLength)) + "\n"
			+ "winWidth : " + document.body.clientWidth + "\n"
			+ "winHeight : " + document.body.clientHeight + "\n"
			+ "$(window).scrollTop() : " + $(window).scrollTop() + "\n"
			+ "x : " + ((winWidth/2) - (355/2)) + "\n"
			+ "Y : " + ($(window).scrollTop()  + (45 + ( 21 * headerLength)) ) + "\n"
			);
    */
    
    //레이어 스타일 생성
    if(type == "window"){
    	//window
    	var height = 45 + ( 21 * headerLength);
        var winWidth = document.body.clientWidth; //현재창의 넓이
    	var winHeight = document.body.clientHeight; //현재창의 높이
        var x = (winWidth/2) - (355/2);
    	var y = $(window).scrollTop()  + (45 + ( 21 * headerLength));    //스크롤바 상관없이 중앙에 표기
        if(y<10) y=10;
        
    	layerStyel = "border:2px solid;position:absolute;background:#fff;z-index:999999;left:"+x+"px;top:"+y+"px;";
    	
    }else{
    	//body
        var height = 45 + ( 21 * headerLength);
        var winHeight = document.body.clientHeight; //현재창의 높이
        var y = $(window).scrollTop()  + ($(window).scrollTop() - height)/2;    //스크롤바 상관없이 중앙에 표기
        if(y<10) y=10;
    	layerStyel = "border:2px solid;position:absolute;background:#fff;z-index:999999;left:380px;top:"+y+"px;";
    	
    }
    
    $("#layerPopup").attr("style", layerStyel); //스타일 삽입
    $("#layerPopupTable").html(textHtml);   //테이블 html
    $("#layerPopup").show();    //보이게
    
}

/**
 * 레이어 팝업창 닫기
 */
function layerClose() {
	$("#layerPopup").hide();
}



/**
 * 그리드에서 선택한 rowData에서 해당 ID의 값을 가져온다.
 * @param root : gridRoot; // 데이타와 그리드를 포함하는 객체 ( 다중그리드 시 문제가 발생될 수 있기에 root를 선언한다. )
 * @param idx : 선택한 rowIndex
 * @param id : 해당 cell의 ID
 * @returns
 */
function getCell_rMate(root, idx, id){
	var rtnVal = "";
	var imsiGridRoot;

	if(!idx || typeof idx == "undefined") return null;
	if(!id || typeof id == "undefined") return null;
	
	
	if(!root || typeof root == "undefined" || root == ""){
		imsiGridRoot = gridRoot;    //해당idx의 row값
	}else{
		imsiGridRoot = root;    //해당idx의 row값
	}

	rtnVal = imsiGridRoot.getItemFieldAt(idx, id);                 //해당id의 값
	
    return rtnVal;
}
    



/**********************************************
 * isIdMoney        레이어팝업의 param이 금액인지 체크
 * @param strId
 * @returns {Boolean}
 **********************************************/
function isIdMoney(strId){
    
    var rslt = false;
    
    if(!strId) return rslt;
    
    //상세보기 시 콤마를 적용할 ID입력
    var strMoneyId = new Array();
    
    //U11_01_00
    strMoneyId.push("AGRMT_CASH_LIM_AMT");          //협약한도
    strMoneyId.push("USE_APV_CASH_LIM_AMT");        //사용승인한도
    strMoneyId.push("EXCTN_BAL");                   //사용잔액
    strMoneyId.push("EXCTN_EXEC_AMT");              //이체완료금액
    strMoneyId.push("EXCTN_REG_AMT");               //사용등록금액
    strMoneyId.push("USE_APV_CASH_LIM_AMT2");       //등록가능금액
    strMoneyId.push("EXCTN_REG_VAT_AMT");           //부가가치세액
    strMoneyId.push("VAT_PSV_AMT");                 //부가세보전금액
    strMoneyId.push("SPOT_PLAN");                   //현물계획
    strMoneyId.push("SPOT_USE");                    //현물사용
    strMoneyId.push("SPOT_BAL");                    //현물잔액
    //U11_01_10
    strMoneyId.push("TRNS_AMT");                    //사용금액
    strMoneyId.push("SPLY_AMT");                    //공급금액
    strMoneyId.push("VAT_AMT");                     //부가가치세액
    strMoneyId.push("PART_PROC_AMT");               //부분취소금액
    //U11_01_20
    //strMoneyId.push("TRNS_AMT");                  //사용금액
    strMoneyId.push("USE_SPLY_AMT");                //공급금액
    strMoneyId.push("USE_VAT_AMT");                 //부가가치세액
    //strMoneyId.push("PART_PROC_AMT");             //부분취소금액
    //U11_01_30
    strMoneyId.push("INST_TOTL_INST_AMT");          //당해총사업비
    strMoneyId.push("MNSR_CTBT_AMT");               //정부출연금액
    strMoneyId.push("UPAY_MNSR_CTBT_AMT");          //미지급정부출연금액
    strMoneyId.push("PRIVT_CASH_AMT");              //민간현금금액
    strMoneyId.push("ALOT_CASH_AMT");               //지자체부담금액
    strMoneyId.push("PRIVT_SPOT_AMT");              //민간현물금액
    strMoneyId.push("EXCTN_BAL");                   //사업비잔액
    //U12_02_00
    strMoneyId.push("BZ_EXP_EXCTN_AMT");          	//금액
    //strMoneyId.push("USE_SPLY_AMT");                //공급금액
    //strMoneyId.push("USE_VAT_AMT");                 //부가가치세액
    
    var id = strId;
    var len = strMoneyId.length;
    for(var i=0; i < len; i++){
        if(strMoneyId[i] == id){
            rslt = true;
            break;
        }
    }
    
    return rslt;
}
 


/**
 * 엑셀 export
 */
function excelExport(root) {
	var imsiGridRoot;
	var imsiCollection;
	
	if(!root || typeof root == "undefined" || root == ""){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
	}
	
	imsiCollection = imsiGridRoot.getCollection();
	
    if (imsiCollection == null) {
    	alert("저장할 데이터가 없습니다.");
        return;
    };

    var clen = imsiCollection.getLength();
    if(!clen>0){
    	alert("저장할 데이터가 없습니다.");
    	return;
    }
    //dataGrid.setExportOnlyData(false);  //데이터만 출력시 ture, css까지 적용하여 출력시 false
    imsiGridRoot.excelExport();
}

/**
 * 엑셀 export
 */
function excelExport_rMate(root, dGrid) {
	var imsiGridRoot;
	var imsiCollection;
	var imsiDataGrid;
	
	if(!root || typeof root == "undefined" || root == ""){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
	}
	
	if(!dGrid || typeof dGrid == "undefined" || dGrid == ""){
		imsiDataGrid = dataGrid;
	}else{
		imsiDataGrid = dGrid;
	}
	
	imsiCollection = imsiGridRoot.getCollection();
	
    if (imsiCollection == null) {
    	alert("저장할 데이터가 없습니다.");
        return;
    };

    var clen = imsiCollection.getLength();
    if(!clen>0){
    	alert("저장할 데이터가 없습니다.");
    	return;
    }
   
    //그리드 컬럼갯수구하기
    var columns = imsiDataGrid.getColumns();    
    //배열선언
    var gridNo = new Array();
    //보이는 컬럼구하기
    for ( var i = 0; i < columns.length; i++){
        if (columns[i].getVisible()) {
        	//배열에PUSH
        	gridNo.push(i);        	           
        }
    }
    //export할 대상셋팅
    imsiDataGrid.setExportColumns(gridNo);
    
    //dataGrid.setExportOnlyData(false);  //데이터만 출력시 ture, css까지 적용하여 출력시 false
    imsiGridRoot.excelExport();
}

/**
 * 그리드 인쇄
 * @param mode
 */
/*
function print(root, app, mode){
	
	if(!root || typeof root == "undefined" || root == ""){
		imsiCollection = gridRoot.getCollection();
	}else{
		imsiCollection = root.getCollection();
	}
    if (imsiCollection == null) {
    	alert("인쇄할 데이터가 없습니다.");
        return;
    };

    var clen = imsiCollection.getLength();
    if(!clen>0){
    	alert("인쇄할 데이터가 없습니다.");
    	return;
    }
    
    var imsiApp;
    if(!app || typeof app == "undefined" || app == ""){
    	imsiApp = gridApp;
	}else{
		imsiApp = app;
	}
    
    if (mode == "preview" || typeof mode != "undefined")
    	imsiApp.print(mode);        // preview
    else
    	imsiApp.print();
}
*/

/**
 * 그리드 인쇄
 * @param mode
 */
function print_rMate(root, app, mode){
	var imsiGridRoot;
	var imsiCollection;
	
	if(!root || typeof root == "undefined" || root == ""){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
	}
	
	imsiCollection = imsiGridRoot.getCollection();
    if (imsiCollection == null) {
    	alert("인쇄할 데이터가 없습니다.");
        return;
    };

    var clen = imsiCollection.getLength();
    if(!clen>0){
    	alert("인쇄할 데이터가 없습니다.");
    	return;
    }
    
    var imsiApp;
    if(!app || typeof app == "undefined" || app == ""){
    	imsiApp = gridApp;
	}else{
		imsiApp = app;
	}
    
    if (mode == "preview" || typeof mode != "undefined")
    	imsiApp.print(mode);        // preview
    else
    	imsiApp.print();
}


/**
 * 그리드 데이터 존재여부
 * @returns {Boolean}
 */
function isGridData(root){
	var imsiGridRoot;
	var imsiCollection;
	
	var isData = false;
	
	if(!root || typeof root == "undefined" || root == ""){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
	}
	
	imsiCollection = imsiGridRoot.getCollection();
	
    if (imsiCollection == null) {
    	return isData;
    };

    var clen = imsiCollection.getLength();
    if(!clen>0){
    	isData = false;
    }else{
    	isData = true;
    }
    return isData;
}



/**
 * 그리드 마우스 휠 이벤트
 */
var targetGridApp;
function addGridMouseWheelEventListener(divId, targetApp) {
	if(!divId || typeof divId == "undefined"){
		divId = "gridDiv";
	}
	
	if(!targetApp || typeof targetApp == "undefined"){
		targetGridApp = gridApp;
	}else{
		targetGridApp = targetApp;
	}
	
    var ta = document.getElementById(divId);
    if (window.addEventListener) {
        // Internet Explorer, Opera, Google Chrome and Safari
        ta.addEventListener('mousewheel', mouseWheelHandler, false);
        // Firefox
        ta.addEventListener('DOMMouseScroll', mouseWheelHandler, false);
    } else  // IE before version 9
        ta.onmousewheel = mouseWheelHandler;
}

function mouseWheelHandler(event) {
    if (!event)
        event = window.event;

    var ua = navigator.userAgent.toLowerCase();
    var edelta = event.wheelDelta / 40;
    if (/mozilla/.test(ua) && !/(compatible|webkit)/.test(ua))
        edelta = -event.detail;
    else if (/chrome/.test(ua))
        edelta = event.wheelDelta / 80;
    var o = {
        x : event.screenX,
        y : event.screenY,
        delta : edelta,
        ctrlKey : event.ctrlKey,
        altKey : event.altKey,
        shiftKey : event.shiftKey
    };
    // 그리드가 스크롤에 반응한 경우 true 아니면 false (즉 데이타가 없거나 적거나 맨위나 맨아래등 스크롤이 필요없는 경우 false)
    var ret = targetGridApp.mouseWheelHandler(o);
    if (ret) {
        if (event.stopPropagation) {
            event.stopPropagation();
            event.preventDefault();
        } else {    // for IE
            event.cancelBubble = true;
            event.returnValue = false;
        }
    }
}



/**
 * 그리드의 자료수를 가져온다.
 */
function getGridRowCountRia(root) {
	var rowCount = 0;
	var imsiGridRoot;
	var imsiCollection;
	
	if(!root || typeof root == "undefined" || root == ""){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
	}
	
	imsiCollection = imsiGridRoot.getCollection();
	
	if (imsiCollection == null) {
		return rowCount;
	}

	var clen = imsiCollection.getLength();
	for (var i = 0; i < clen; i++) {
		var row = imsiCollection.getItemAt(i);
		rowCount++;
	}
	return rowCount;
}


/**
 * 그리드의 자료수를 가져온다.
 */
function getGridRowCount_rMate(root) {
	var rowCount = 0;
	var imsiGridRoot;
	var imsiCollection;
	
	if(!root || typeof root == "undefined"){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
	}
	
	imsiCollection = imsiGridRoot.getCollection();
	
	if (imsiCollection == null) {
		return rowCount;
	}

	var clen = imsiCollection.getLength();
	for (var i = 0; i < clen; i++) {
		//var row = imsiCollection.getItemAt(i);
		rowCount++;
	}
	return rowCount;
}


/**
 * 그리드의 전체 자료를 삭제한다.
 */
function removeAll(root) {
	if(!root || typeof root == "undefined" || root == ""){
		gridRoot.removeAll();
	}else{
		root.removeAll();
	}
}


/**
 * 그리드의 특정 자료를 삭제한다.
 */
function removeItem(index, root) {
	var imsiGridRoot;
	var imsiCollection;
	
	if(!confirm("선택된 내역을 삭제하시겠습니까?")) return false;
	
	if(!index || typeof index == "undefined") return;
	
	if(!root || typeof root == "undefined" || root == ""){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
	}
	
	if(index.length > 1){
		var totLength = getGridRowCount_rMate(imsiGridRoot);
		if(totLength == index.length){
			imsiGridRoot.removeAll();	//전체삭제
		}else{
			var idx;
			index = index.sort(unSortNumber);	//여러개 동시에 삭제 시 하나의 row가 삭제가 되면 그리드의 data를 다시 뿌려주기에 역정렬 순으로 하여 삭제를 하도록 한다.
			
			for(var i=0;i<index.length;i++){
				idx = index[i];
				imsiGridRoot.removeItemAt(idx);
			}
		}
	}else{
		imsiGridRoot.removeItemAt(index);
	}
}

//숫자형 오름차순 정렬
function sortNumber(a,b){
	return a-b;
}
//숫자형 내림차순 정렬
function unSortNumber(a,b){
	return b-a;
}

//styleJsFunctin 함수의 파라메터는 다음과 같습니다.
//function styleJsFunctin(item:Object, value:Object, column:Column)
//   item : 해당 행의 data 객체
//   value : 해당 셀의 라벨
//   column : 해당 셀의 열을 정의한 Column 객체
//
//null을 반환하면 스타일은 변경되지 않으며, 스타일을 정의한 객체를 반환하면 스타일이 변경됩니다.
//문자열에 대해 설정 가능한 스타일은 다음과 같습니다.
//
// 스타일명     :  가능한 값     :    설명
//color          :     uint       : 글씨색
//fontFamily     :     string     : 폰트명
//fontSize       :      int       : 폰트크기
//fontStyle      : normal,italic  : 이태릭 여부
//fontWeight     :  normal,bold   : 굵게 여부
//textDecoration : none,underline : 밑줄 여부
/**
 * 밑줄표시
 */
function columnUnderline(item, value, column) {
    if (value && value != "")
        return {
            textDecoration : "underline"
            , color :"0x0000FF"
        };
    return null;
}


//obj 값 확인용
function objToString (obj) {
    var str = '';
    var subObj;
    var subStr = '';
    for (var p in obj) {
        if (obj.hasOwnProperty(p)) {
            if(typeof(obj[p]) == "object" ){
                subObj = obj[p];
                subStr = '\n';
                for (var q in subObj) {
                    subStr += q + " :: " + subObj[q] + '\n';
                }
                str += p + '::' + subStr + '\n';
            } else  {
                str += p + '::' + obj[p] + '\n';
            }
        }
    }
    return str;
}



/**************************************************************************
* 선택된 내역이 있는지 확인
* obj : 그리드객체
* title : 내역 명
**************************************************************************/
function chkGridOneSelectedCount_rMate(root, title){
	
	var isData = true;
	var imsi_selectorColumn;
	var imsiGridRoot;
	
	if(title==null || typeof title=="undefined") title = "";
	else title = title+" ";
	
	if(!root || typeof root == "undefined" || root == ""){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
		
	}
	imsi_selectorColumn = imsiGridRoot.getObjectById("selector");
	
	if(imsi_selectorColumn.getAllowMultipleSelection()){	// true : 체크박스
		
		if(imsi_selectorColumn.getSelectedIndices().length != 1){ 
	    	alert("한개의 "+title+"내역을 선택해주십시오.");
	    	isData =  false;
	    }
	}else{
		
		if(imsi_selectorColumn.getSelectedIndex() < 0){ 
			alert("한개의 "+title+"내역을 선택해주십시오.");
			isData =  false; 
        }
		
	}
	   
	
	return isData;
}



/**************************************************************************
* 선택된 내역이 있는지 확인
* obj : 그리드객체
* colName : checkbox, radio 칼럼명
**************************************************************************/
function chkGridSelectedCount_rMate(root, title){
	var isData = true;
	var imsi_selectorColumn;
	var imsiGridRoot;
	
	if(title==null || typeof title=="undefined") title = "";
	else title = title+" ";
	
	if(!root || typeof root == "undefined" || root == ""){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
		
	}
	
	imsi_selectorColumn = imsiGridRoot.getObjectById("selector");
	
	if(imsi_selectorColumn.getAllowMultipleSelection()){	// true : 체크박스
		
		if(imsi_selectorColumn.getSelectedIndices().length < 1){ 
			alert("선택된 "+title+"내역이 없습니다.");
			isData = false;
	    }
	}else{
		
		if(imsi_selectorColumn.getSelectedIndex() < 0){ 
			alert("선택된 "+title+"내역이 없습니다.");
			isData = false;
        }
		
	}
		
	return isData;
}




//버튼 스타일 지정
function columnButtonStyle(item, value, column) {
    if (value && value != "")
        return { color: 0xFF0000 };
    return null;
}


//컬럼수정 스타일 지정
function columnEditStyle(item, value, column) {
  return { color: 0xFF0000, backgroundColor: 0xCCCCCC    };
}





/******************************************************************
 * chkGridNullValue		그리드입력값null체크
 * @param	그리드명,행,컬럼명
 * @return
******************************************************************/
function chkGridNullValue_rMate(value, colnm){
	var isRtn = true;
	if(value == undefined) return false;
	if(colnm	== undefined) return false;
	//grid = eval("document."+grid);
	
	if("" == value){
		alert("["+colnm+"]의 내용을 입력하세요.");
		isRtn = false;
	}
	return isRtn;
}


/**************************************************************************
* 그리드 건수 표시
* SchGb : (S : search)
* girdNm : 그리드명
* frmNm : 폼명 
**************************************************************************/
function gridSchStart_rMate(SchGb, root, frmNm, ItemNm1, ItemNm2, app) {
	
	var imsiRoot;
	var imsiApp;
	var frm;
	var InqPrsTotlNcnt;
	var InqPrsTotlCnt;
	var imsiGridRoot;
	var imsiCollection;

	if( typeof ItemNm1=="undefined" ) ItemNm1 = "InqPrsTotlNcnt";
	if( typeof ItemNm2=="undefined" ) ItemNm2 = "InqPrsTotlCnt";		
	if( typeof frmNm=="undefined" ) frmNm = "frm";
	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	
	if(!app || typeof app == "undefined"){
    	imsiApp = gridApp;
    }else{
    	imsiApp = app;
    }

	frm = eval("document."+frmNm);
	InqPrsTotlNcnt = document.all[ItemNm1];
	InqPrsTotlCnt = document.all[ItemNm2];

	if(typeof SchGb=="undefined" || SchGb=="S" ){
		//grid.clear();
		rMateGridLayoutInit_rMate(imsiRoot, imsiApp);
		if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt != "undefined" ) InqPrsTotlNcnt.innerHTML = "0";
		if( InqPrsTotlCnt !=null && typeof InqPrsTotlCnt  != "undefined" ) InqPrsTotlCnt.innerHTML = "0"; 
	}

}


/**************************************************************************
* 그리드 
* rootNm : 그리드 root 명
* frmNm : 폼명
**************************************************************************/
function gridSchEnd_rMate(root, frmNm, ItemNm1, ItemNm2) {
	
	var frm;
	var imsiRoot;
	var InqPrsTotlNcnt; 
	var InqPrsTotlCnt; 

	if( typeof ItemNm1=="undefined" ) ItemNm1 = "InqPrsTotlNcnt";
	if( typeof ItemNm2=="undefined" ) ItemNm2 = "InqPrsTotlCnt";		
	if( typeof frmNm=="undefined" ) frmNm = "frm";
	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	
	frm = eval("document."+frmNm);
	InqPrsTotlNcnt = document.all[ItemNm1];
	InqPrsTotlCnt = document.all[ItemNm2];
	
	var gridTotlCnt = getGridRowCount_rMate(imsiRoot);
	//var gridTotlCnt = getGridRowCount_rMate();

	if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") {InqPrsTotlNcnt.innerHTML = gridTotlCnt; }
	if( InqPrsTotlCnt!=null && typeof InqPrsTotlCnt!="undefined") {InqPrsTotlCnt.innerHTML = gridTotlCnt; }
	
}


/**************************************************************************
* 그리드 Scroll Paging
* SchGb : (S : search N: Next)
* girdNm : 그리드명
* frmNm : 폼명 
**************************************************************************/
function gridPgScrollSchStart_rMate(SchGb, root, frmNm, ItemNm1, ItemNm2, app, layout){
	var imsiRoot;
	var imsiApp;
	var frm;
	var elemPrsPgNo; 
	var elemTrSupYn;
	var InqPrsTotlNcnt;
	var InqPrsTotlCnt;

	if( typeof ItemNm1=="undefined" ) ItemNm1 = "InqPrsTotlNcnt";
	if( typeof ItemNm2=="undefined" ) ItemNm2 = "InqPrsTotlCnt";
	if( typeof frmNm=="undefined" ) frmNm = "frm";
	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	if(!app || typeof app == "undefined"){
    	imsiApp = gridApp;
    }else{
    	imsiApp = app;
    }

	frm = eval("document."+frmNm);
	elemPrsPgNo = frm.PrsPgno;
	elemTrSupYn = frm.TrSupYn;
	InqPrsTotlNcnt = document.getElementById(ItemNm1);
	InqPrsTotlCnt = document.getElementById(ItemNm2);

	if(typeof SchGb=="undefined" || SchGb=="S" || SchGb==""){
		//grid.clear();
		rMateGridLayoutInit_rMate(imsiRoot, imsiApp, layout);
		elemPrsPgNo.value = "1";
		if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") InqPrsTotlNcnt.innerHTML = "0";
		if( InqPrsTotlCnt!=null && typeof InqPrsTotlCnt!="undefined") InqPrsTotlCnt.innerHTML = "0"; 
	}else{
		if(elemTrSupYn.value=="Y"){
			elemPrsPgNo.value = Number(elemPrsPgNo.value) +1;
		}
	}

	// 다음페이지여부 업데이트
	elemTrSupYn.value = "N";
	
	//gridPgScrollSchEnd_rMate 값 초기화
	TrSupYn_rMate = "";
	PrtReqCnt_rMate = "";
	InqTotlNcnt_rMate = "";
}

function gridPgScrollSchStart_rMate2(SchGb, root, frmNm, ItemNm1, ItemNm2, app, layout){
	var imsiRoot;
	var imsiApp;
	var frm;
	var elemPrsPgNo; 
	var elemTrSupYn;
	var InqPrsTotlNcnt;
	var InqPrsTotlCnt;

	if( typeof ItemNm1=="undefined" ) ItemNm1 = "InqPrsTotlNcnt";
	if( typeof ItemNm2=="undefined" ) ItemNm2 = "InqPrsTotlCnt";
	if( typeof frmNm=="undefined" ) frmNm = "frm";
	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	if(!app || typeof app == "undefined"){
    	imsiApp = gridApp;
    }else{
    	imsiApp = app;
    }

	frm = eval("document."+frmNm);
	elemPrsPgNo = frm.PrsPgno;
	elemTrSupYn = frm.TrSupYn;
	InqPrsTotlNcnt = document.getElementById(ItemNm1);
	InqPrsTotlCnt = document.getElementById(ItemNm2);

	
	if(typeof SchGb=="undefined" || SchGb=="S"){
		//grid.clear();
		rMateGridLayoutInit_rMate(imsiRoot, imsiApp, layout);
		elemPrsPgNo.value = "1";
		if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") InqPrsTotlNcnt.innerHTML = "0";
		if( InqPrsTotlCnt!=null && typeof InqPrsTotlCnt!="undefined") InqPrsTotlCnt.innerHTML = "0"; 
	}else{
		if(elemTrSupYn.value=="Y"){
			
			elemPrsPgNo.value = Number(elemPrsPgNo.value) +1;
		}
	}

	// 다음페이지여부 업데이트
	elemTrSupYn.value = "N";
	
}



/**************************************************************************
* 그리드 Scroll Paging
* TrSupYn ; 거래계속여부
* PrtReqCnt : 페이지요청건수
* InqTotlNcnt : 조회총건수
* girdNm : 그리드명
* frmNm : 폼명
**************************************************************************/
var TrSupYn_rMate = "";
var PrtReqCnt_rMate = "";
var InqTotlNcnt_rMate = "";
function gridPgScrollSchEnd_rMate(TrSupYn, PrtReqCnt, InqTotlNcnt, root, frmNm, ItemNm1, ItemNm2, dataGridId){
	var imsiRoot;
	var frm;
	var elemPrsPgNo; 
	var elemTrSupYn;
	var InqPrsTotlNcnt; 
	var InqPrsTotlCnt; 
	var imsiDataGrid;
	
	if( typeof ItemNm1=="undefined" ) ItemNm1 = "InqPrsTotlNcnt";
	if( typeof ItemNm2=="undefined" ) ItemNm2 = "InqPrsTotlCnt";		
	if( typeof frmNm=="undefined" ) frmNm = "frm";
	if( InqTotlNcnt==null || InqTotlNcnt=="null" ) InqTotlNcnt = "0";
	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	
	if( !dataGridId || typeof dataGridId=="undefined" )
		imsiDataGrid = dataGrid;
	else 
		imsiDataGrid = dataGridId;

	frm = eval("document."+frmNm);
	elemPrsPgNo = frm.PrsPgno;
	elemTrSupYn = frm.TrSupYn;
	InqPrsTotlNcnt = document.getElementById(ItemNm1);
	InqPrsTotlCnt = document.getElementById(ItemNm2);
	var gridTotlCnt = getGridRowCount_rMate(imsiRoot);

	if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") {InqPrsTotlNcnt.innerHTML = gridTotlCnt; }
	if( InqPrsTotlCnt!=null && typeof InqPrsTotlCnt!="undefined") {InqPrsTotlCnt.innerHTML = InqTotlNcnt; }
	
	//그리드 위치이동 - 해당 row로 이동
	var s = Number(gridTotlCnt)-Number(PrtReqCnt)-1;
	if(s < 0) s = 0;
	if(getGridRowCount_rMate(imsiRoot) > 0)	imsiDataGrid.setVerticalScrollPosition(s);
	
	if(typeof TrSupYn!="undefined" && TrSupYn=="N" ){	
		elemPrsPgNo.value = "0";
	}

	// 다음페이지여부 업데이트
	elemTrSupYn.value = TrSupYn;
	
}


function gridPgScrollSchEnd_rMate2(TrSupYn, PrtReqCnt, InqTotlNcnt, root, frmNm, ItemNm1, ItemNm2, dataGridId){
	var imsiRoot;
	var frm;
	var elemPrsPgNo; 
	var elemTrSupYn;
	var InqPrsTotlNcnt; 
	var InqPrsTotlCnt; 
	var imsiDataGrid;
	
	if( typeof ItemNm1=="undefined" ) ItemNm1 = "InqPrsTotlNcnt";
	if( typeof ItemNm2=="undefined" ) ItemNm2 = "InqPrsTotlCnt";		
	if( typeof frmNm=="undefined" ) frmNm = "frm";
	if( InqTotlNcnt==null || InqTotlNcnt=="null" ) InqTotlNcnt = "0";
	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	
	if( !dataGridId || typeof dataGridId=="undefined" )
		imsiDataGrid = dataGrid;
	else 
		imsiDataGrid = dataGridId;

	frm = eval("document."+frmNm);
	elemPrsPgNo = frm.PrsPgno;
	elemTrSupYn = frm.TrSupYn;
	InqPrsTotlNcnt = document.getElementById(ItemNm1);
	InqPrsTotlCnt = document.getElementById(ItemNm2);
	var gridTotlCnt = getGridRowCount_rMate(imsiRoot);

	if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") {InqPrsTotlNcnt.innerHTML = gridTotlCnt; }
	if( InqPrsTotlCnt!=null && typeof InqPrsTotlCnt!="undefined") {InqPrsTotlCnt.innerHTML = InqTotlNcnt; }
	
	//그리드 위치이동 - 해당 row로 이동
	var s = Number(gridTotlCnt)-Number(PrtReqCnt)-1;
	if(s < 0) s = 0;
	if(getGridRowCount_rMate(imsiRoot) > 0)	imsiDataGrid.setVerticalScrollPosition(s);
	
	/*if(typeof TrSupYn!="undefined" && TrSupYn=="N" ){	
		elemPrsPgNo.value = "0";
	}

	// 다음페이지여부 업데이트
	elemTrSupYn.value = TrSupYn;*/
	
}



/******************************************************************************
Purpose :     첫번째 행으로 이동 
Usage :     void setMoveFirstRecord() 
Parameter :      
Return :     없음 
Comment :     프로그램상에서 index 를 이동할뿐 값을 반환하지는 않는다. 
*****************************************************************************/
function setMoveFirstRecord_rMate(grid){
	var imsiDataGrid;
	
	if( !grid || typeof grid=="undefined" )
		imsiDataGrid = dataGrid;
	else 
		imsiDataGrid = grid;
	
	imsiDataGrid.setVerticalScrollPosition(0);
	
}



/**************************************************************************
* 그리드 그룹핑 확장
* grid : 대상그리드
* elem : checkbox 객체 
**************************************************************************/
function chkGroupEx_rMate(dGrid, elem){
	var imsiDataGrid;
	
	if( !dGrid || typeof dGrid=="undefined" )
		imsiDataGrid = dataGrid;
	else 
		imsiDataGrid = dGrid;
	
	if(elem.checked){
		imsiDataGrid.expandAll();
	}else{
		imsiDataGrid.collapseAll();
	}
}


/**************************************************************************
* 그리드 Button Paging
* SchGb : (S : search N: Next)
* girdNm : 그리드명
* frmNm : 폼명 
**************************************************************************/
//SchGb : (S : search N: Next)
function gridPgBtnSchStart_rMate(SchGb, root, frmNm){

	var frm;
	var nextBtn;
	var elemPrsPgNo; 
	var elemTrSupYn;
	var InqPrsTotlNcnt;
	var imsiRoot;
	var dataGridId;
	var imsiDataGrid;
	var imsiGridRoot;
	var imsiCollection;

	if( typeof frmNm=="undefined" ) frmNm = "frm";

	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	
	if( !dataGridId || typeof dataGridId=="undefined" )
		imsiDataGrid = dataGrid;
	else 
		imsiDataGrid = dataGridId;
	
	frm = eval("document."+frmNm);
	nextBtn = document.all["NextBtn"];
	elemPrsPgNo = frm.PrsPgno;
	elemTrSupYn = frm.TrSupYn;
	InqPrsTotlNcnt = document.all["InqPrsTotlNcnt"];

	
	// 다음버튼 비활성화
	nextBtn.style.display = "none";
	if(typeof SchGb=="undefined" || SchGb=="S" ){
		rMateGridLayoutInit_rMate(imsiRoot);
		elemPrsPgNo.value = "1";
		if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") InqPrsTotlNcnt.innerHTML = "[조회건수 : 0/0]";
	}else{
		elemPrsPgNo.value = Number(elemPrsPgNo.value) +1;
	}
	
	// 다음페이지여부 업데이트
	if(typeof elemTrSupYn!="undefined" && SchGb=="S"){
		elemTrSupYn.value = "N";
	}
} 

/**************************************************************************
* 그리드 Button Paging  2011.03.10
* SchGb : (S : search N: Next)
* girdNm : 그리드명
* frmNm : 폼명 
**************************************************************************/
//SchGb : (S : search N: Next)
function gridPgBtnSchStartRtr_rMate(SchGb, root, frmNm ){
	var frm;
	var nextBtn;
	var elemPrsPgNo; 
	var elemTrSupYn;
	var InqPrsTotlNcnt;
	var imsiRoot;
	var dataGridId;

	if( typeof frmNm=="undefined" ) frmNm = "frm_rt";

	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	
	frm = eval("document."+frmNm);
	nextBtn = document.all["NextBtnRt"]; //2011.03.10
	elemPrsPgNo = frm.PrsPgno;
	elemTrSupYn = frm.TrSupYn;
	InqPrsTotlNcnt = document.all["InqPrsTotlNcntRt"];

	
	// 다음버튼 비활성화
	nextBtn.style.display = "none";
	if(typeof SchGb=="undefined" || SchGb=="S" ){
		rMateGridLayoutInit_rMate(imsiRoot);
		elemPrsPgNo.value = "1";
		if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") InqPrsTotlNcnt.innerHTML = "[조회건수 : 0/0]";
	}else{
		elemPrsPgNo.value = Number(elemPrsPgNo.value) +1;
	}
	
	// 다음페이지여부 업데이트
	if(typeof elemTrSupYn!="undefined" && SchGb=="S"){
		elemTrSupYn.value = "N";
	}
} 


/**************************************************************************
* 그리드 Button Paging
* TrSupYn ; 거래계속여부
* PrtReqCnt : 페이지요청건수
* girdNm : 그리드명
* frmNm : 폼명
**************************************************************************/
function gridPgBtnSchEnd_rMate(TrSupYn, PrtReqCnt, InqTotlNcnt, root, frmNm, gridNo){
	var frm;
	var nextBtn;
	var elemPrsPgNo; 
	var elemTrSupYn;
	var InqPrsTotlNcnt;
	var imsiRoot;

	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	
	if( typeof frmNm=="undefined" ) frmNm = "frm";
	
	if( InqTotlNcnt==null || InqTotlNcnt=="null" ) InqTotlNcnt = "0";

	frm = eval("document."+frmNm);
	nextBtn = document.all["NextBtn"];
	elemPrsPgNo = frm.PrsPgno;
	elemTrSupYn = frm.TrSupYn;
	InqPrsTotlNcnt = document.all["InqPrsTotlNcnt"];
	if( typeof gridNo!="undefined" ) 
		InqPrsTotlNcnt = document.all[gridNo];
	
	//alert('xGrid Info Chk ::  InqPrsTotlNcnt = ' + InqPrsTotlNcnt);
	
	var gridTotlCnt = getGridRowCount_rMate(imsiRoot);
	
	//CHK	
	//alert('xGrid Info Chk ::  InqTotlNcnt = ' + InqTotlNcnt + ', gridTotlCnt = ' + gridTotlCnt + ', gridNm = ' + gridNm);
	

	if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") InqPrsTotlNcnt.innerHTML = "[조회건수 : "+ gridTotlCnt + "/"+ InqTotlNcnt +"]";
	//setShowSelectedRow(grid, gridTotlCnt-Number(PrtReqCnt));
	
	// 다음버튼 활성화
	if(typeof TrSupYn!="undefined" && TrSupYn=="Y" ){	
		nextBtn.style.display = "";
	}else{
		elemPrsPgNo.value = "0";
	}
	
	// 다음페이지여부 업데이트
	if(typeof elemTrSupYn!="undefined"){
		elemTrSupYn.value = TrSupYn;
	}
}

/**************************************************************************
* 그리드 Button Paging
* TrSupYn ; 거래계속여부
* PrtReqCnt : 페이지요청건수
* girdNm : 그리드명
* frmNm : 폼명
**************************************************************************/
function gridPgBtnSchEndRtr_rMate(TrSupYn, PrtReqCnt, InqTotlNcnt, root, frmNm){
	var frm;
	var nextBtn;
	var elemPrsPgNo; 
	var elemTrSupYn;
	var InqPrsTotlNcnt;
	var imsiRoot;

	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	
	if( typeof frmNm=="undefined" ) frmNm = "frm_rt";
	if( InqTotlNcnt==null || InqTotlNcnt=="null" ) InqTotlNcnt = "0";

	frm = eval("document."+frmNm);
	nextBtn = document.all["NextBtnRt"];
	elemPrsPgNo = frm.PrsPgno;
	elemTrSupYn = frm.TrSupYn;
	InqPrsTotlNcnt = document.all["InqPrsTotlNcntRt"];
	var gridTotlCnt = getGridRowCount_rMate(root);

	if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") InqPrsTotlNcntRt.innerHTML = "[조회건수 : "+ gridTotlCnt + "/"+ InqTotlNcnt +"]";
	//setShowSelectedRow(grid, gridTotlCnt-Number(PrtReqCnt));
	
	// 다음버튼 활성화
	if(typeof TrSupYn!="undefined" && TrSupYn=="Y" ){	
		nextBtn.style.display = "";
	}else{
		elemPrsPgNo.value = "0";
	}
	
	// 다음페이지여부 업데이트
	if(typeof elemTrSupYn!="undefined"){
		elemTrSupYn.value = TrSupYn;
	}
}


/******************************************************************************
Purpose :     특정행을 그리드의 제일 위쪽에 표시한다. 
Usage :     void setShowSelectedRow(int nIndex) 
Parameter :     nIndex : 행 번호 
Return :     없음 
Comment :     
*****************************************************************************/
/*
function setShowSelectedRow(grid, index)
{
	grid.SetTopRecordIndex(index - grid.DefaultSeq);
}
*/



/******************************************************************************
Purpose :     체크박스에 체크된 개수를 반환한다. 
Usage :     int getSelectedCount(String FieldName) 
Parameter :     FieldName : 체크박스 필드 이름 
Return :     int : 체크된 개수  
Comment :     
*****************************************************************************/
function getSelectedCount_rMate(root, columnname)
{
	var imsiRoot;
	var colNm;
	var imsiSelectorColumn;

	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	
	if( !columnname || typeof columnname=="undefined" )
		colNm = "selector";
	else 
		colNm = columnname;
	
	
	imsiSelectorColumn = imsiRoot.getObjectById(colNm);
    var arrChk = imsiSelectorColumn.getSelectedIndices();
    var arrLen = arrChk.length;
    
	return arrLen;
}


/******************************************************************************
Purpose   :   선택된 행의 키값을 불러온다. 
Usage     :   String getSelectedRow(grid) 
Parameter :   
Return    :   선택된 행의 번호
Comment   :   
*****************************************************************************/
function getSelectedRow_rMate(root, columnname)
{
	var imsiRoot;
	var colNm;
	var imsiSelectorColumn;
	var arrChk;

	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	
	if( !columnname || typeof columnname=="undefined" )
		colNm = "selector";
	else 
		colNm = columnname;
	
	
	imsiSelectorColumn = imsiRoot.getObjectById(colNm);
	if(imsiSelectorColumn.getAllowMultipleSelection()){	// true : 체크박스
		arrChk = imsiSelectorColumn.getSelectedIndices();
		
		if(arrChk.length < 1){
			alert("선택된 내역이 없습니다.");
			return false;
		}
		
	}else{
		arrChk = imsiSelectorColumn.getSelectedIndex();
		if(arrChk < 0){
			alert("선택된 내역이 없습니다.");
			return false;
		}
	}
	
	return arrChk;
}


/******************************************************************************
Purpose   :   전체 체크.
Usage     :   String getSelectedRow(grid) 
Parameter :   
Return    :   선택된 행의 번호
Comment   :   
*****************************************************************************/
function gridAllCheck_rMate(root) {
	var imsiGridRoot;
	var imsiSelectorColumn;
	
	if( !root || typeof root=="undefined" )
		imsiGridRoot = gridRoot;
	else 
		imsiGridRoot = root;
	

	var isData = false;
	imsiCollection = imsiGridRoot.getCollection();
	
    if (imsiCollection == null) {
    	isData = false;
    }

    var clen = imsiCollection.getLength();
    if(!clen>0){
    	isData = false;
    }else{
    	isData = true;
    }
    
	if(isData){	// 그리드 값이 존재하는경우
		
		imsiSelectorColumn = imsiGridRoot.getObjectById("selector");
		imsiSelectorColumn.setAllItemSelected(!imsiSelectorColumn.getAllItemSelected());
		
	}
	
}



/**************************************************************************
* 그리드 Board Paging
* SchGb : (S : search N: Next)
* girdNm : 그리드명
* frmNm : 폼명 
**************************************************************************/
function gridPgBrdSchStart_rMate(PrsPgno, root, frmNm){
	var frm;
	var imsiRoot;

	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	
	if( typeof frmNm=="undefined" ) frmNm = "frm";
	
	frm = eval("document."+frmNm);
	rMateGridLayoutInit_rMate(imsiRoot);
	
	frm.PrsPgno.value = PrsPgno;
	frm.TrSupYn.value = "Y";
	
	gridPageReset_rMate();
}



function gridPageReset_rMate(){
	var nextBtn = document.all["NextBtn"];
	var pageBrd = document.all["PageBrd"];
	
	if(typeof nextBtn!="undefined"){
		nextBtn.style.display = "none";
	}
	
	if(typeof pageBrd!="undefined"){
		pageBrd.innerHTML = "<li><a href=\"#\">&nbsp;</a></li>";
	}
}

/**************************************************************************
* 그리드 Board Paging
* TrSupYn ; 거래계속여부
* InqTotlNcnt : 조회총건수
* girdNm : 그리드명
* frmNm : 폼명
**************************************************************************/
var brdPage_rMate = "";

function gridPgBrdSchEnd_rMate(TrSupYn, InqTotlNcnt, brdPage, frmNm){
	var frm;
	if( typeof frmNm=="undefined" ) frmNm = "frm";
	frm = eval("document."+frmNm);
	
	document.all["InqPrsTotlNcnt"].innerHTML = toMoney(InqTotlNcnt);
	frm.TrSupYn.value = TrSupYn;
	
	document.getElementById("PageBrd").innerHTML = brdPage;
}




/******************************************************************
 * chkGridNgtNum	그리드금액입력부 마이너스체크
 * @param	그리드명,행,컬럼ID,컬럼명
 * @return
******************************************************************/
function chkGridNgtNum_rMate(root,rowIdx,colId,colNm){
	var imsiRoot;

	if( !root || typeof root=="undefined" )
		imsiRoot = gridRoot;
	else 
		imsiRoot = root;
	
	if(rowIdx == undefined) return false;
	if(colId == undefined) return false;
	if(colNm == undefined) return false;
	
	//getCell_rMate(root, idx, id)
	if(Number(getCell_rMate(imsiRoot, rowIdx, colId)) < 0){
		alert("["+colNm+"]"+" 에 \"-\" 를 입력하실 수 없습니다.");
		imsiRoot.setItemFieldAt("0", rowIdx, colId);     // 값, row, id
		return false;
	}
}


