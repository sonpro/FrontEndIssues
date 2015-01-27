var projectRuleName	=	"RcmsUsageRules";


/*
 * Description
 * RcmsValueToNameDic에 등록된 key value 를 번역하여 준다
 * 
 * */
var TranslaterKeyValue = TranslaterKeyValue ||(function(){

	var RcmsValueName 	=	"";
	
	return{
		/*
		 * key에 대응하는 error message 또는 name 을 반환
		 */
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


/*
 * browser 단에서의 데이터 검증,가공 등을 담당한다
 * 
 * functions
 * 1) chkFormValues : 규칙코드에 따른 필수값체크
 */
var RcmsPTManager = RcmsPTManager || (function() {
    var frm = document.frm;
    //var data = "secret";

    return {
    	
      /*
       * 규칙코드에 따른 필수값체크
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
    		  pValue	=	eval(projectRuleName+"."+pValueArr[i]);
    		  
    		  switch(pValueArr[i].substr(0,1)){
    		  	//A타입 사용규칙 : 증빙구분에 따른 필수값 체크
	      	  	case 'A' :
		      	  	for(var prop in pValue.RequiredValue){
		      	  		//rule 조건이 true인경우
		    			if(eval("frm."+pValue.RequiredValue[prop]) && (eval("frm."+pValue.RequiredValue[prop]+".value")==null || eval("frm."+pValue.RequiredValue[prop]+".value").replace(/ /gi,"")=="")){
		    				//오류메시지
		    				alert("["+TranslaterKeyValue.getValuetoName("variables", pValue.RequiredValue[prop])+"]"+TranslaterKeyValue.getValuetoName("usageRules", pValueArr[i]));
		    				//focus
		    				$('#'+pValue.RequiredValue[prop]).focus();
		    				return false;
		    			}
		        	  }
		      	  	break;
		      	//F타입 사용규칙 : 값의 크기,범위 조건
	      	  	case 'F' :
		      	  	for(var prop in pValue.LTside){
		      	  		//console.log(eval("frm."+pValue.LTside[prop]+".value"));
		      	  		//rule 조건이 true인경우
			      	   	if(eval("frm."+pValue.LTside[prop]) && (eval("frm."+pValue.LTside[prop]+".value" + pValue.sign + pValue.RTside) )){
		    				//오류메시지
			      	   		alert("["+TranslaterKeyValue.getValuetoName("variables", pValue.LTside[prop])+"]"+TranslaterKeyValue.getValuetoName("usageRules",pValueArr[i]));
			      	   		//focus
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