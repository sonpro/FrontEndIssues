var dataCtrl = new (Class.extend({
	init : function() {		
	},
	setObjData : function(key, obj){
		if( !this.isStringType(obj)){
			alert("dataType�� �������� �ƴմϴ�.");
			return;
		}else {	
			var jexAjax= jex.createAjaxUtil("SVC_T00001_N001");
			jexAjax.setAsync(false);
			jexAjax.set("KEY_DV_CD", "SET");
			jexAjax.set("SESS_KEY", key);
			jexAjax.set("SESS_KEY_CTT", obj);
			jexAjax.execute(function(dat) {});
		}		
	},
	getObjData : function(key, filter){
		var result = null;
		var jexAjax= jex.createAjaxUtil("SVC_T00001_N001");
		
		jexAjax.setAsync(false);
		jexAjax.set("KEY_DV_CD", "GET");
		jexAjax.set("SESS_KEY", key);
		
		jexAjax.execute(function(dat) {
			//result = parse(dat.SESS_KEY_CTT);
			result = dat.SESS_KEY_CTT;
		});
		return result;
	},
	delObjData : function(key){
		var jexAjax= jex.createAjaxUtil("SVC_T00001_N001");
		jexAjax.setAsync(false);
		jexAjax.set("KEY_DV_CD", "DEL");
		jexAjax.set("SESS_KEY", key);
		jexAjax.execute(function(dat) {});				
	},
	delAllData : function(){	// ���� ���Ǳ��� ���ᰡ �Ǳ⿡ Ȯ�� �� ����
		var jexAjax= jex.createAjaxUtil("SVC_T00001_N001");
		jexAjax.setAsync(false);
		jexAjax.set("KEY_DV_CD", "ALLDEL");
		jexAjax.execute(function(dat) {});				
	},
	isStringType : function(obj){
		if( typeof obj == "string"){
			return true;
		}else {
			return false;
		}
	}
	/*
	,
	parse : function(dat){
		if (dat==undefined||$.trim(dat)=="") return undefined;
		if (typeof(JSON.parse)!="function") {
			alert("json2 ���� �ʾҽ��ϴ�.");
			return undefined;
		}
		return JSON.parse(dat);
	}
	*/
}))();	