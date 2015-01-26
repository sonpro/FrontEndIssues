function getBuclCds() {
	var chks = document.frm.BzClasCd;
	var nodes = dTree.aNodes;
	var str = "";
	var v_name = "";

	var v_tmp = "0";

	if(chks != undefined) {
		for(var i=0; i < chks.length; i++) {
			if(chks[i].checked) {
				v_tmp = "0";
			}
		}
		
		for(var i=0; i < chks.length; i++) {
			if(v_tmp == "0") {
				if(chks[i].checked && nodes[i].leaf == "Y") {
				//if(chks[i].checked) {
					if(str != "") {
						str += "',";
						v_name += ",";
					}
					//str += "'" + nodes[i].id;
					str += "'" + chks[i].value;
					v_name += nodes[i].target;
				}
			} else {
				if(chks[i].checked && nodes[i].leaf == "Y") {
				//if(chks[i].checked) {
					if(str != "") {
						str += "',";
						v_name += ",";
					}
					//str += "'" + nodes[i].id;
					str += "'" + chks[i].value;
					v_name += nodes[i].target;
				}
			}
		}
/*	
		if(v_tmp == "1") {
			frm.BzClasNm.value = v_name;
		} else if(v_tmp == "0") {
			frm.BzClasNm.value = "";
		}
*/	

		if(str != ""){
			str += "'";
		}
		
		if( typeof frm.BzClasNm !="undefined" ) frm.BzClasNm.value = v_name;
		if( typeof frm.BzClasCds!="undefined" ) frm.BzClasCds.value = str;
	}
	//alert("getBuclCds : " + str);
	return str;
}

function getBuclCd(name) {
	var chks = document.frm.BzClasCd;
	var nodes = dTree.aNodes;
	var str = "";
	var v_name = "";

	var v_tmp = "0";

	if(chks != undefined) {
		for(var i=0; i < chks.length; i++) {
			if(chks[i].checked) {
				v_tmp = "0";
			}
		}

		for(var i=0; i < chks.length; i++) {
			if(v_tmp == "0") {
				if(chks[i].checked) {
					if(str != "") {
						str += "',";
						v_name += ",";
					}
					//str += "'" + nodes[i].id;
					str += "'" + chks[i].value;
					v_name += nodes[i].target;
				}
			} else {
				if(chks[i].checked && nodes[i].leaf == "Y") {
					if(chks[i].checked) {
						if(str != "") {
							str += "',";
							v_name += ",";
						}
						//str += "'" + nodes[i].id;
						str += "'" + chks[i].value;
						v_name += nodes[i].target;
					}
				}
			}
		}

		if(str != ""){
			str += "'";
		}
		if( typeof frm.BzClasNm !="undefined" ) frm.BzClasNm.value = v_name;
		if( typeof frm.BzClasCds!="undefined" ) frm.BzClasCds.value = str;
	}
	return str;
}

function changeChild(idx) {
	var chks = document.frm.BzClasCd;
	var chkPmsId = document.frm.PmsId;
	
	var nodes = dTree.aNodes;
	var id = dTree.aNodes[idx].id;
	var bCheck = chks[idx].checked;
	chkPmsId[idx].checked = bCheck;
	
	for(var i=0; i < nodes.length; i++) {
		if(nodes[i].pid == id) {
			chks[i].checked = bCheck;
			chkPmsId[i].checked = bCheck;
			changeChild(i);
		}
	}
}

function changePmsId(obj){
	var chks		= document.frm.BzClasCd;
	var chkPmsId	= document.frm.PmsId;
	
	if( typeof chks.length=="undefined" ){
		chkPmsId.checked = chks.checked;
	}else{
	
		for(var i=0; i<chks.length; i++){
			if( chks[i] == event.srcElement ){
				chkPmsId[i].checked = chks[i].checked;
			}
		}
	}
}

function getPmsId(){
	var frm = document.frm;
	var PmsId="";
	if(typeof frm.PmsId.length=="undefined"){
		if(frm.PmsId.checked){
			PmsId = frm.PmsId.value;
		}
	}else{
		for(var i=0; i<frm.PmsId.length; i++){
			if(frm.PmsId[i].checked){
				if(PmsId=="")
					PmsId = frm.PmsId[i].value;
				else
					PmsId = PmsId +","+frm.PmsId[i].value;
			}
		}
	}
	
	return PmsId;
}

function getBzClasCd(){
	var frm = document.frm;
	var BzClasCd="";
	if(typeof frm.BzClasCd.length=="undefined"){
		if(frm.BzClasCd.checked){
			BzClasCd = frm.BzClasCd.value;
		}
	}else{
		for(var i=0; i<frm.BzClasCd.length; i++){
			if(frm.BzClasCd[i].checked){
				if(BzClasCd=="")
					BzClasCd = frm.BzClasCd[i].value;
				else
					BzClasCd = BzClasCd +","+frm.BzClasCd[i].value;
			}
		}
	}
	
	return BzClasCd;
}

function changeChildMnuGrp(idx) {
	var chks   = document.frm.pgmId;
	
	var nodes  = dTree.aNodes;
	var id     = dTree.aNodes[idx].id;
	var bCheck = chks[idx].checked;
	
	try {
		for(var i=0; i < nodes.length; i++) {
			if(nodes[i].pid == id) {
				chks[i].checked = bCheck;
				changeChildMnuGrp(i);
			}
			if (chks[i].checked) {
				nodes[i].info = "A03001";
			} else {
				nodes[i].info = "";
			}
		}
	} catch (ex) {		
	}
	
}