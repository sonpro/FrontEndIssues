// ����Ÿ�� JSON���� ��� �־��ݴϴ�. (������ ���Ұ�� xml�� �ν��Ͽ� ������ �߻��մϴ�)
var flashVars = "dataType=json&bridgeName=gridBridge";


//rMateGrid ���� ��ü
var gridApp; // �÷��� �⺻ ��ü
var gridData; // �׸��� ������ ���
var gridRoot; // ����Ÿ�� �׸��带 �����ϴ� ��ü
var dataGrid; // �׸��� ���� ���
var collection; // �׸����� ����Ÿ ��ü
var selectorColumn;	// ������ �÷�
var eventFocusRowIndex;



//�˾�����
var editRowIndex;
var editDataRow;
var editDataField;





/**
 * ��ȸ �� �׸��� ������ �ʱ�ȭ�� ���� ����
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
    	imsiApp.setData([]);    //�׸��� �ʱ�ȭ
    	/*
    	setTimeout(
           function(){
        	   imsiApp.setData([]);    //�׸��� �ʱ�ȭ
           }
           , 100);   // 1000 = 1��
    	*/
    };
    
    var imsiLayout;

    if(!layout || typeof layout == "undefined"){
    	//imsiLayout = layoutStr;
    }else{
    	imsiLayout = layout;
    	imsiApp.setLayout(imsiLayout);   //�׸��� Layout �ʱ�ȭ
    }
    

}


/**
 * ��ȸ �� �׸��� ������ �ʱ�ȭ�� ���� Ÿ�Ӿƿ� ����
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
    	imsiApp.setData([]);    //�׸��� �ʱ�ȭ
    	
    	setTimeout(
           function(){
        	   imsiApp.setData([]);    //�׸��� �ʱ�ȭ
           }
           , 100);   // 1000 = 1��
    };
    
    var imsiLayout;

    if(!layout || typeof layout == "undefined"){
    	//imsiLayout = layoutStr;
    }else{
    	imsiLayout = layout;
    	imsiApp.setLayout(imsiLayout);   //�׸��� Layout �ʱ�ȭ
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
        	   imsiApp.setData([]);    //�׸��� �ʱ�ȭ
           }
           , 100);   // 1000 = 1��
    };
    
}



/**
 * ���̾�� �˾� ����
 * @param dataGrid
 * @param dataRow
 * @param type : body, window(popup)
 */
function layerDetail(dataGrid, dataRow, type) {

	if(!dataGrid) return;
    if(!dataRow) return;
	
    var columns = dataGrid.getColumns();
    var columnObj = {};     //grid ����
    var headerLength = 0;   //row ī��Ʈ
    
    //�׸��� �󼼳��� ���̺� ����
    var textHtml = "<table cellspacing=\"1px\" style=\"width:345px;font-size:12px;background:#c5c0d9;\">";
    for ( var i = 0; i < columns.length; i++){
        if (columns[i].getVisible()) {
            columnObj = dataGrid.getColumns()[i];   //�׸����� Header ���� ��������

            var headerText = columnObj.getHeaderText();
            //����� ������ ���������� �󼼺��⿡�� ����
            if( headerText == "" || headerText == null || headerText == "null" ) continue;
            
            headerLength++; // table ������ rowCount
            //���̺� ������ ����
            textHtml += "<tr align=\"left\" height=\"19px\">";
            textHtml += "<td width=\"140\" valign=\"middle\" bgcolor=\"#ebebeb\" style=\"padding-left:10px\">";
            textHtml += headerText;  //Header�� text ����
            textHtml += "</td>";
            textHtml += "<td width=\"185\" valign=\"middle\" bgcolor=\"#ffffff\" style=\"padding-left:10px\">";
            //textHtml += dataRow[columnObj.getDataField()];  //dataFiled�� ��
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
                textHtml += putComma(str);  ////dataFiled�� ��
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
    var winWidth = document.body.clientWidth; //����â�� ����
	var winHeight = document.body.clientHeight; //����â�� ����
    var x = (winWidth/2) - (355/2);
	var y = $(window).scrollTop()  + ($(window).scrollTop() - height)/2;    //��ũ�ѹ� ������� �߾ӿ� ǥ��
    
	alert(    "height : " + (45 + ( 21 * headerLength)) + "\n"
			+ "winWidth : " + document.body.clientWidth + "\n"
			+ "winHeight : " + document.body.clientHeight + "\n"
			+ "$(window).scrollTop() : " + $(window).scrollTop() + "\n"
			+ "x : " + ((winWidth/2) - (355/2)) + "\n"
			+ "Y : " + ($(window).scrollTop()  + (45 + ( 21 * headerLength)) ) + "\n"
			);
    */
    
    //���̾� ��Ÿ�� ����
    if(type == "window"){
    	//window
    	var height = 45 + ( 21 * headerLength);
        var winWidth = document.body.clientWidth; //����â�� ����
    	var winHeight = document.body.clientHeight; //����â�� ����
        var x = (winWidth/2) - (355/2);
    	var y = $(window).scrollTop()  + (45 + ( 21 * headerLength));    //��ũ�ѹ� ������� �߾ӿ� ǥ��
        if(y<10) y=10;
        
    	layerStyel = "border:2px solid;position:absolute;background:#fff;z-index:999999;left:"+x+"px;top:"+y+"px;";
    	
    }else{
    	//body
        var height = 45 + ( 21 * headerLength);
        var winHeight = document.body.clientHeight; //����â�� ����
        var y = $(window).scrollTop()  + ($(window).scrollTop() - height)/2;    //��ũ�ѹ� ������� �߾ӿ� ǥ��
        if(y<10) y=10;
    	layerStyel = "border:2px solid;position:absolute;background:#fff;z-index:999999;left:380px;top:"+y+"px;";
    	
    }
    
    $("#layerPopup").attr("style", layerStyel); //��Ÿ�� ����
    $("#layerPopupTable").html(textHtml);   //���̺� html
    $("#layerPopup").show();    //���̰�
    
}

/**
 * ���̾� �˾�â �ݱ�
 */
function layerClose() {
	$("#layerPopup").hide();
}



/**
 * �׸��忡�� ������ rowData���� �ش� ID�� ���� �����´�.
 * @param root : gridRoot; // ����Ÿ�� �׸��带 �����ϴ� ��ü ( ���߱׸��� �� ������ �߻��� �� �ֱ⿡ root�� �����Ѵ�. )
 * @param idx : ������ rowIndex
 * @param id : �ش� cell�� ID
 * @returns
 */
function getCell_rMate(root, idx, id){
	var rtnVal = "";
	var imsiGridRoot;

	if(!idx || typeof idx == "undefined") return null;
	if(!id || typeof id == "undefined") return null;
	
	
	if(!root || typeof root == "undefined" || root == ""){
		imsiGridRoot = gridRoot;    //�ش�idx�� row��
	}else{
		imsiGridRoot = root;    //�ش�idx�� row��
	}

	rtnVal = imsiGridRoot.getItemFieldAt(idx, id);                 //�ش�id�� ��
	
    return rtnVal;
}
    



/**********************************************
 * isIdMoney        ���̾��˾��� param�� �ݾ����� üũ
 * @param strId
 * @returns {Boolean}
 **********************************************/
function isIdMoney(strId){
    
    var rslt = false;
    
    if(!strId) return rslt;
    
    //�󼼺��� �� �޸��� ������ ID�Է�
    var strMoneyId = new Array();
    
    //U11_01_00
    strMoneyId.push("AGRMT_CASH_LIM_AMT");          //�����ѵ�
    strMoneyId.push("USE_APV_CASH_LIM_AMT");        //�������ѵ�
    strMoneyId.push("EXCTN_BAL");                   //����ܾ�
    strMoneyId.push("EXCTN_EXEC_AMT");              //��ü�Ϸ�ݾ�
    strMoneyId.push("EXCTN_REG_AMT");               //����ϱݾ�
    strMoneyId.push("USE_APV_CASH_LIM_AMT2");       //��ϰ��ɱݾ�
    strMoneyId.push("EXCTN_REG_VAT_AMT");           //�ΰ���ġ����
    strMoneyId.push("VAT_PSV_AMT");                 //�ΰ��������ݾ�
    strMoneyId.push("SPOT_PLAN");                   //������ȹ
    strMoneyId.push("SPOT_USE");                    //�������
    strMoneyId.push("SPOT_BAL");                    //�����ܾ�
    //U11_01_10
    strMoneyId.push("TRNS_AMT");                    //���ݾ�
    strMoneyId.push("SPLY_AMT");                    //���ޱݾ�
    strMoneyId.push("VAT_AMT");                     //�ΰ���ġ����
    strMoneyId.push("PART_PROC_AMT");               //�κ���ұݾ�
    //U11_01_20
    //strMoneyId.push("TRNS_AMT");                  //���ݾ�
    strMoneyId.push("USE_SPLY_AMT");                //���ޱݾ�
    strMoneyId.push("USE_VAT_AMT");                 //�ΰ���ġ����
    //strMoneyId.push("PART_PROC_AMT");             //�κ���ұݾ�
    //U11_01_30
    strMoneyId.push("INST_TOTL_INST_AMT");          //�����ѻ����
    strMoneyId.push("MNSR_CTBT_AMT");               //�����⿬�ݾ�
    strMoneyId.push("UPAY_MNSR_CTBT_AMT");          //�����������⿬�ݾ�
    strMoneyId.push("PRIVT_CASH_AMT");              //�ΰ����ݱݾ�
    strMoneyId.push("ALOT_CASH_AMT");               //����ü�δ�ݾ�
    strMoneyId.push("PRIVT_SPOT_AMT");              //�ΰ������ݾ�
    strMoneyId.push("EXCTN_BAL");                   //������ܾ�
    //U12_02_00
    strMoneyId.push("BZ_EXP_EXCTN_AMT");          	//�ݾ�
    //strMoneyId.push("USE_SPLY_AMT");                //���ޱݾ�
    //strMoneyId.push("USE_VAT_AMT");                 //�ΰ���ġ����
    
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
 * ���� export
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
    	alert("������ �����Ͱ� �����ϴ�.");
        return;
    };

    var clen = imsiCollection.getLength();
    if(!clen>0){
    	alert("������ �����Ͱ� �����ϴ�.");
    	return;
    }
    //dataGrid.setExportOnlyData(false);  //�����͸� ��½� ture, css���� �����Ͽ� ��½� false
    imsiGridRoot.excelExport();
}

/**
 * ���� export
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
    	alert("������ �����Ͱ� �����ϴ�.");
        return;
    };

    var clen = imsiCollection.getLength();
    if(!clen>0){
    	alert("������ �����Ͱ� �����ϴ�.");
    	return;
    }
   
    //�׸��� �÷��������ϱ�
    var columns = imsiDataGrid.getColumns();    
    //�迭����
    var gridNo = new Array();
    //���̴� �÷����ϱ�
    for ( var i = 0; i < columns.length; i++){
        if (columns[i].getVisible()) {
        	//�迭��PUSH
        	gridNo.push(i);        	           
        }
    }
    //export�� ������
    imsiDataGrid.setExportColumns(gridNo);
    
    //dataGrid.setExportOnlyData(false);  //�����͸� ��½� ture, css���� �����Ͽ� ��½� false
    imsiGridRoot.excelExport();
}

/**
 * �׸��� �μ�
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
    	alert("�μ��� �����Ͱ� �����ϴ�.");
        return;
    };

    var clen = imsiCollection.getLength();
    if(!clen>0){
    	alert("�μ��� �����Ͱ� �����ϴ�.");
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
 * �׸��� �μ�
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
    	alert("�μ��� �����Ͱ� �����ϴ�.");
        return;
    };

    var clen = imsiCollection.getLength();
    if(!clen>0){
    	alert("�μ��� �����Ͱ� �����ϴ�.");
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
 * �׸��� ������ ���翩��
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
 * �׸��� ���콺 �� �̺�Ʈ
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
    // �׸��尡 ��ũ�ѿ� ������ ��� true �ƴϸ� false (�� ����Ÿ�� ���ų� ���ų� ������ �ǾƷ��� ��ũ���� �ʿ���� ��� false)
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
 * �׸����� �ڷ���� �����´�.
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
 * �׸����� �ڷ���� �����´�.
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
 * �׸����� ��ü �ڷḦ �����Ѵ�.
 */
function removeAll(root) {
	if(!root || typeof root == "undefined" || root == ""){
		gridRoot.removeAll();
	}else{
		root.removeAll();
	}
}


/**
 * �׸����� Ư�� �ڷḦ �����Ѵ�.
 */
function removeItem(index, root) {
	var imsiGridRoot;
	var imsiCollection;
	
	if(!confirm("���õ� ������ �����Ͻðڽ��ϱ�?")) return false;
	
	if(!index || typeof index == "undefined") return;
	
	if(!root || typeof root == "undefined" || root == ""){
		imsiGridRoot = gridRoot;
	}else{
		imsiGridRoot = root;
	}
	
	if(index.length > 1){
		var totLength = getGridRowCount_rMate(imsiGridRoot);
		if(totLength == index.length){
			imsiGridRoot.removeAll();	//��ü����
		}else{
			var idx;
			index = index.sort(unSortNumber);	//������ ���ÿ� ���� �� �ϳ��� row�� ������ �Ǹ� �׸����� data�� �ٽ� �ѷ��ֱ⿡ ������ ������ �Ͽ� ������ �ϵ��� �Ѵ�.
			
			for(var i=0;i<index.length;i++){
				idx = index[i];
				imsiGridRoot.removeItemAt(idx);
			}
		}
	}else{
		imsiGridRoot.removeItemAt(index);
	}
}

//������ �������� ����
function sortNumber(a,b){
	return a-b;
}
//������ �������� ����
function unSortNumber(a,b){
	return b-a;
}

//styleJsFunctin �Լ��� �Ķ���ʹ� ������ �����ϴ�.
//function styleJsFunctin(item:Object, value:Object, column:Column)
//   item : �ش� ���� data ��ü
//   value : �ش� ���� ��
//   column : �ش� ���� ���� ������ Column ��ü
//
//null�� ��ȯ�ϸ� ��Ÿ���� ������� ������, ��Ÿ���� ������ ��ü�� ��ȯ�ϸ� ��Ÿ���� ����˴ϴ�.
//���ڿ��� ���� ���� ������ ��Ÿ���� ������ �����ϴ�.
//
// ��Ÿ�ϸ�     :  ������ ��     :    ����
//color          :     uint       : �۾���
//fontFamily     :     string     : ��Ʈ��
//fontSize       :      int       : ��Ʈũ��
//fontStyle      : normal,italic  : ���¸� ����
//fontWeight     :  normal,bold   : ���� ����
//textDecoration : none,underline : ���� ����
/**
 * ����ǥ��
 */
function columnUnderline(item, value, column) {
    if (value && value != "")
        return {
            textDecoration : "underline"
            , color :"0x0000FF"
        };
    return null;
}


//obj �� Ȯ�ο�
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
* ���õ� ������ �ִ��� Ȯ��
* obj : �׸��尴ü
* title : ���� ��
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
	
	if(imsi_selectorColumn.getAllowMultipleSelection()){	// true : üũ�ڽ�
		
		if(imsi_selectorColumn.getSelectedIndices().length != 1){ 
	    	alert("�Ѱ��� "+title+"������ �������ֽʽÿ�.");
	    	isData =  false;
	    }
	}else{
		
		if(imsi_selectorColumn.getSelectedIndex() < 0){ 
			alert("�Ѱ��� "+title+"������ �������ֽʽÿ�.");
			isData =  false; 
        }
		
	}
	   
	
	return isData;
}



/**************************************************************************
* ���õ� ������ �ִ��� Ȯ��
* obj : �׸��尴ü
* colName : checkbox, radio Į����
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
	
	if(imsi_selectorColumn.getAllowMultipleSelection()){	// true : üũ�ڽ�
		
		if(imsi_selectorColumn.getSelectedIndices().length < 1){ 
			alert("���õ� "+title+"������ �����ϴ�.");
			isData = false;
	    }
	}else{
		
		if(imsi_selectorColumn.getSelectedIndex() < 0){ 
			alert("���õ� "+title+"������ �����ϴ�.");
			isData = false;
        }
		
	}
		
	return isData;
}




//��ư ��Ÿ�� ����
function columnButtonStyle(item, value, column) {
    if (value && value != "")
        return { color: 0xFF0000 };
    return null;
}


//�÷����� ��Ÿ�� ����
function columnEditStyle(item, value, column) {
  return { color: 0xFF0000, backgroundColor: 0xCCCCCC    };
}





/******************************************************************
 * chkGridNullValue		�׸����Է°�nullüũ
 * @param	�׸����,��,�÷���
 * @return
******************************************************************/
function chkGridNullValue_rMate(value, colnm){
	var isRtn = true;
	if(value == undefined) return false;
	if(colnm	== undefined) return false;
	//grid = eval("document."+grid);
	
	if("" == value){
		alert("["+colnm+"]�� ������ �Է��ϼ���.");
		isRtn = false;
	}
	return isRtn;
}


/**************************************************************************
* �׸��� �Ǽ� ǥ��
* SchGb : (S : search)
* girdNm : �׸����
* frmNm : ���� 
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
* �׸��� 
* rootNm : �׸��� root ��
* frmNm : ����
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
* �׸��� Scroll Paging
* SchGb : (S : search N: Next)
* girdNm : �׸����
* frmNm : ���� 
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

	// �������������� ������Ʈ
	elemTrSupYn.value = "N";
	
	//gridPgScrollSchEnd_rMate �� �ʱ�ȭ
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

	// �������������� ������Ʈ
	elemTrSupYn.value = "N";
	
}



/**************************************************************************
* �׸��� Scroll Paging
* TrSupYn ; �ŷ���ӿ���
* PrtReqCnt : ��������û�Ǽ�
* InqTotlNcnt : ��ȸ�ѰǼ�
* girdNm : �׸����
* frmNm : ����
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
	
	//�׸��� ��ġ�̵� - �ش� row�� �̵�
	var s = Number(gridTotlCnt)-Number(PrtReqCnt)-1;
	if(s < 0) s = 0;
	if(getGridRowCount_rMate(imsiRoot) > 0)	imsiDataGrid.setVerticalScrollPosition(s);
	
	if(typeof TrSupYn!="undefined" && TrSupYn=="N" ){	
		elemPrsPgNo.value = "0";
	}

	// �������������� ������Ʈ
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
	
	//�׸��� ��ġ�̵� - �ش� row�� �̵�
	var s = Number(gridTotlCnt)-Number(PrtReqCnt)-1;
	if(s < 0) s = 0;
	if(getGridRowCount_rMate(imsiRoot) > 0)	imsiDataGrid.setVerticalScrollPosition(s);
	
	/*if(typeof TrSupYn!="undefined" && TrSupYn=="N" ){	
		elemPrsPgNo.value = "0";
	}

	// �������������� ������Ʈ
	elemTrSupYn.value = TrSupYn;*/
	
}



/******************************************************************************
Purpose :     ù��° ������ �̵� 
Usage :     void setMoveFirstRecord() 
Parameter :      
Return :     ���� 
Comment :     ���α׷��󿡼� index �� �̵��һ� ���� ��ȯ������ �ʴ´�. 
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
* �׸��� �׷��� Ȯ��
* grid : ���׸���
* elem : checkbox ��ü 
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
* �׸��� Button Paging
* SchGb : (S : search N: Next)
* girdNm : �׸����
* frmNm : ���� 
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

	
	// ������ư ��Ȱ��ȭ
	nextBtn.style.display = "none";
	if(typeof SchGb=="undefined" || SchGb=="S" ){
		rMateGridLayoutInit_rMate(imsiRoot);
		elemPrsPgNo.value = "1";
		if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") InqPrsTotlNcnt.innerHTML = "[��ȸ�Ǽ� : 0/0]";
	}else{
		elemPrsPgNo.value = Number(elemPrsPgNo.value) +1;
	}
	
	// �������������� ������Ʈ
	if(typeof elemTrSupYn!="undefined" && SchGb=="S"){
		elemTrSupYn.value = "N";
	}
} 

/**************************************************************************
* �׸��� Button Paging  2011.03.10
* SchGb : (S : search N: Next)
* girdNm : �׸����
* frmNm : ���� 
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

	
	// ������ư ��Ȱ��ȭ
	nextBtn.style.display = "none";
	if(typeof SchGb=="undefined" || SchGb=="S" ){
		rMateGridLayoutInit_rMate(imsiRoot);
		elemPrsPgNo.value = "1";
		if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") InqPrsTotlNcnt.innerHTML = "[��ȸ�Ǽ� : 0/0]";
	}else{
		elemPrsPgNo.value = Number(elemPrsPgNo.value) +1;
	}
	
	// �������������� ������Ʈ
	if(typeof elemTrSupYn!="undefined" && SchGb=="S"){
		elemTrSupYn.value = "N";
	}
} 


/**************************************************************************
* �׸��� Button Paging
* TrSupYn ; �ŷ���ӿ���
* PrtReqCnt : ��������û�Ǽ�
* girdNm : �׸����
* frmNm : ����
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
	

	if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") InqPrsTotlNcnt.innerHTML = "[��ȸ�Ǽ� : "+ gridTotlCnt + "/"+ InqTotlNcnt +"]";
	//setShowSelectedRow(grid, gridTotlCnt-Number(PrtReqCnt));
	
	// ������ư Ȱ��ȭ
	if(typeof TrSupYn!="undefined" && TrSupYn=="Y" ){	
		nextBtn.style.display = "";
	}else{
		elemPrsPgNo.value = "0";
	}
	
	// �������������� ������Ʈ
	if(typeof elemTrSupYn!="undefined"){
		elemTrSupYn.value = TrSupYn;
	}
}

/**************************************************************************
* �׸��� Button Paging
* TrSupYn ; �ŷ���ӿ���
* PrtReqCnt : ��������û�Ǽ�
* girdNm : �׸����
* frmNm : ����
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

	if( InqPrsTotlNcnt!=null && typeof InqPrsTotlNcnt!="undefined") InqPrsTotlNcntRt.innerHTML = "[��ȸ�Ǽ� : "+ gridTotlCnt + "/"+ InqTotlNcnt +"]";
	//setShowSelectedRow(grid, gridTotlCnt-Number(PrtReqCnt));
	
	// ������ư Ȱ��ȭ
	if(typeof TrSupYn!="undefined" && TrSupYn=="Y" ){	
		nextBtn.style.display = "";
	}else{
		elemPrsPgNo.value = "0";
	}
	
	// �������������� ������Ʈ
	if(typeof elemTrSupYn!="undefined"){
		elemTrSupYn.value = TrSupYn;
	}
}


/******************************************************************************
Purpose :     Ư������ �׸����� ���� ���ʿ� ǥ���Ѵ�. 
Usage :     void setShowSelectedRow(int nIndex) 
Parameter :     nIndex : �� ��ȣ 
Return :     ���� 
Comment :     
*****************************************************************************/
/*
function setShowSelectedRow(grid, index)
{
	grid.SetTopRecordIndex(index - grid.DefaultSeq);
}
*/



/******************************************************************************
Purpose :     üũ�ڽ��� üũ�� ������ ��ȯ�Ѵ�. 
Usage :     int getSelectedCount(String FieldName) 
Parameter :     FieldName : üũ�ڽ� �ʵ� �̸� 
Return :     int : üũ�� ����  
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
Purpose   :   ���õ� ���� Ű���� �ҷ��´�. 
Usage     :   String getSelectedRow(grid) 
Parameter :   
Return    :   ���õ� ���� ��ȣ
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
	if(imsiSelectorColumn.getAllowMultipleSelection()){	// true : üũ�ڽ�
		arrChk = imsiSelectorColumn.getSelectedIndices();
		
		if(arrChk.length < 1){
			alert("���õ� ������ �����ϴ�.");
			return false;
		}
		
	}else{
		arrChk = imsiSelectorColumn.getSelectedIndex();
		if(arrChk < 0){
			alert("���õ� ������ �����ϴ�.");
			return false;
		}
	}
	
	return arrChk;
}


/******************************************************************************
Purpose   :   ��ü üũ.
Usage     :   String getSelectedRow(grid) 
Parameter :   
Return    :   ���õ� ���� ��ȣ
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
    
	if(isData){	// �׸��� ���� �����ϴ°��
		
		imsiSelectorColumn = imsiGridRoot.getObjectById("selector");
		imsiSelectorColumn.setAllItemSelected(!imsiSelectorColumn.getAllItemSelected());
		
	}
	
}



/**************************************************************************
* �׸��� Board Paging
* SchGb : (S : search N: Next)
* girdNm : �׸����
* frmNm : ���� 
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
* �׸��� Board Paging
* TrSupYn ; �ŷ���ӿ���
* InqTotlNcnt : ��ȸ�ѰǼ�
* girdNm : �׸����
* frmNm : ����
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
 * chkGridNgtNum	�׸���ݾ��Էº� ���̳ʽ�üũ
 * @param	�׸����,��,�÷�ID,�÷���
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
		alert("["+colNm+"]"+" �� \"-\" �� �Է��Ͻ� �� �����ϴ�.");
		imsiRoot.setItemFieldAt("0", rowIdx, colId);     // ��, row, id
		return false;
	}
}


