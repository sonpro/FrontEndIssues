var prjRuleName	=	"RcmsUsageRules";

var RcmsValueToName = RcmsValueToName ||(function(){

	var RcmsValueName 	=	"";
	
	return{
		getValuetoName : function( dv, val ){
			RcmsValueName	=	eval("RcmsValueToNameDic."+dv);
			for(var idx in RcmsValueName){
				//console.log(RcmsValueToNameDic.variables[idx].key + "=="+val);
				if(RcmsValueName[idx].key===val){
					if(dv!="variables")
						return RcmsValueName[idx].errMsg
					else
						return RcmsValueName[idx].name
				}
			}
		}
	}
})(this)

var RcmsPTManager = RcmsPTManager || (function() {
    var frm = document.frm;
    //var data = "secret";

    return {
    	
      /*
       * 필수값체크
       * param
       * 	frmName 
       * 	pValue	: 규칙코드 RcmsUsageRules
       */
      chkFormValues : function(frmName,pRuleVal){
    	  frm		=	eval("document."+frmName) || frm;
    	  var 
    	  	pValueArr	=	pRuleVal.split("|")	// 규칙코드배열
    	  	,pValue;			//규칙코드

    	  for(var i=0;i<pValueArr.length;i++){
    		  pValue	=	eval(prjRuleName+"."+pValueArr[i]);
    		  
    		  switch(pValueArr[i].substr(0,1)){
    		  	//A타입 사용규칙 : 증빙구분에 따른 필수값 체크
	      	  	case 'A' :
		      	  	for(var prop in pValue.RequiredValue){
		    			if(eval("frm."+pValue.RequiredValue[prop]) && (eval("frm."+pValue.RequiredValue[prop]+".value")==null || eval("frm."+pValue.RequiredValue[prop]+".value").replace(/ /gi,"")==""
		    					// || eval("frm."+pValue.RequiredValue[prop]+".value")<=0
		    					)){
		    				alert("["+RcmsValueToName.getValuetoName("variables", pValue.RequiredValue[prop])+"]"+RcmsValueToName.getValuetoName("usageRules", pValueArr[i]));
		    				$('#'+pValue.RequiredValue[prop]).focus();
		    				return false;
		    			}
		        	  }
		      	  	break;
		      	//F타입 사용규칙 : 값의 크기,범위 조건
	      	  	case 'F' :
		      	  	for(var prop in pValue.LTside){
		      	  		console.log(eval("frm."+pValue.LTside[prop]+".value"));
			      	   	if(eval("frm."+pValue.LTside[prop]) && (eval("frm."+pValue.LTside[prop]+".value" + pValue.sign + pValue.RTside) )){
			      	   		alert("["+RcmsValueToName.getValuetoName("variables", pValue.LTside[prop])+"]"+RcmsValueToName.getValuetoName("usageRules",pValueArr[i]));
			      	   		$('#'+pValue.LTside[prop]).focus();
			      	   		return false;
			      	  	}
		      	  	}
		      	  	break;
	      	  	default :
	      	  		console.log("switch-default");
	      	  		break;
	      	  }
    	  }
    	  return true;
      }
    };

  // 내용더넣기

})( this );