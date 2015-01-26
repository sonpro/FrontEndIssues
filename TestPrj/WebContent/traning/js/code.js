
function getCodeVal(id,param){
	var rtnVal = "";
    if(typeof id == "undefined" || id == "" || typeof param == "undefined" || param == ""){
    	rtnVal = "";
    }else{
    	var code;
    	
    	code = eval("code_" + id);
    	//alert(JSON.stringify(code));
    	if(isNaN(param)){
    		rtnVal = eval("code." + param);
    	}else{
    		var strCodeVal = replace(JSON.stringify(code).replace("{","").replace("}",""), "\"", "");
    		var codeVal = strCodeVal.split(",");
    		for(i=0;i<codeVal.length;i++){
    			var keyVal = codeVal[i].split(":");
    			
    			if(keyVal[0] == param){
    				rtnVal = keyVal[1];
    			}
    		}
    	}
    } 
    
	return rtnVal;
}



var code_RND035 = {
		"A":"관리기관",
		"B":"전담기관",
		"C":"주관기관",
		"D":"공동개발기관",
		"E":"공동연구기관",
		"E":"공동연구기관",
		"F":"위탁기관",
		"G":"실시기업",
		"H":"국회",
		"I":"행정부",
		"J":"위탁회계기관"
};

var code_RND035_1 = {
		"C":"주관기관",
		"D":"공동개발기관",
		"E":"공동연구기관",
		"F":"위탁기관",
		"G":"실시기업"
		};


var code_RND045 = {
	"1":"승인",
	"2":"매입"
};


var code_RND064 = {
		"N":"미신청",
		"Y":"신청"
	};


var code_RND080 = {
		"C":"카드결재",
		"E":"기타증빙",
		"T":"전자세금계산서"
	};


var code_RND081 = {
		"0":"미등록",
		"1":"등록",
		"2":"이체전처리중",
		"2":"처리중",
		"3":"정상완료",
		"3":"정상",
		"4":"오류완료",
		"4":"오류",
		"5":"취소",
		"6":"이체대기",
		"7":"이체후처리중",
		"9":"임시저장",
		"Z":"전체"
		};

var code_RND085 = {
	    "1":"등록처리중",
	    "2":"등록확인중",
	    "3":"등록완료",
	    "4":"해지처리중",
	    "5":"해지완료",
	    "6":"완료"
	};


var code_RND088 = {
		"001":"한국은행",
		"002":"산업은행",
		"003":"기업은행",
		"004":"국민은행",
		"005":"외환은행",
		"007":"수협중앙회",
		"008":"수출입은행",
		"011":"농협중앙회",
		"012":"농협회원조합",
		"020":"우리은행",
		"023":"SC제일은행",
		"027":"한국씨티은행",
		"031":"대구은행",
		"032":"부산은행",
		"034":"광주은행",
		"035":"제주은행",
		"037":"전북은행",
		"039":"경남은행",
		"045":"새마을금고연합회",
		"048":"신협중앙회",
		"050":"상호저축은행",
		"052":"모건스탠리은행",
		"054":"HSBC은행",
		"055":"도이치은행",
		"056":"에이비엔암로은행",
		"057":"제이피모간체이스은행",
		"058":"미즈호코퍼레이트은행",
		"059":"미쓰비시도쿄UFJ은행",
		"060":"BOA은행",
		"064":"산림조합",
		"071":"정보통신부 우체국",
		"076":"신용보증기금",
		"077":"기술신용보증기금",
		"081":"하나은행",
		"088":"신한은행",
		"093":"한국주택금융공사",
		"094":"서울보증보험",
		"095":"경찰청",
		"099":"금융결제원"
};

var code_RND117 = {
		"A":"민간부담금",
		"B":"충전금",
		"C":"보전금",
		"D":"부가세보전금",
		"E":"예금이자",
		"F":"정산금",
		"G":"부담금",
		"H":"사업비이전금"
		};

var code_RND137 = {
		"1":"타계좌이체(연구비계좌경유이체)",
		"2":"자계좌이체(연구비계좌이체)"
};

var code_RND139 = {
		"0":"정지",
		"1":"정상"
	};


var code_RND139_1 = {
		"0":"정지",
		"1":"재개"
	};


var code_RND154 = {
		"N":"미연구비사용",
		"Y":"정상연구비사용"
	};

var code_RND155 = {
	    "A":"기업(법인)카드",
	    "B":"주유전용",
	    "C":"항공전용",
	    "D":"복지전용",
	    "E":"연구비전용",
	    "F":"지정자카드",
	    "R":"연구비겸용",
	    "T":"과제통합연구비카드"
	};



var code_RND159 = {
		"N":"미등록",
		"Y":"등록"
	};


var code_RND168 = {
		"A":"국내",
		"B":"해외"
	};


var code_RND237 = {
		"A":"민간부담금현금입금",
		"B":"연구비보충",
		"C":"연구비이체취소",
		"D":"부가세환원",
		"E":"카드결제환원",
		"F":"가상계좌일정산입금",
		"G":"이월금입금",
		"H":"사업비이전(대납)",
		"I":"부가세환원(결제전내역)",
		"J":"지자체부담금입금",
		"K":"연구비부분취소",
		"L":"카드결제부분환원",
		"M":"정부출연금입금",
		"N":"연구비집행",
		"O":"환수금환수",
		"P":"사업비이전(계좌변경)",
		"Q":"정산금환수",
		"R":"민간잔액지급",
		"S":"이자출금",
		"T":"이자입금",
		"U":"사업비이전(기관변경)",
		"V":"정부이자출금",
		"W":"입출금취소거래",
		"X":"거래사유없음(거래대사미완료)",
		"Y":"기타거래",
		"Z":"환수잔액지급"
		};


var code_RNDB04_2 = {
		"B04001":"미등록",
		"B04011":"미등록",
		"B04012":"미등록",
		"B04019":"미등록",
		"B04101":"집행전",
		"B04102":"처리중",
		"B04108":"부분오류",
		"B04109":"오류",
		"B0410A":"전담기관승인요청",
		"B0410B":"전담기관승인거부",
		"B04110":"정상완료",
		"B04121":"재요청",
		"B04122":"재요청",
		"B04199":"환원"
	};

var code_BNK_CD = {
		"002":"산업은행",
		"003":"기업은행",
		"004":"국민은행",
		"005":"외환은행",
		"007":"수협은행",
		"008":"한국수출입은행",
		"011":"농협",
		"020":"우리은행",
		"023":"SC제일은행",
		"024":"우리은행(한일은행)",
		"027":"한국씨티은행",
		"031":"대구은행",
		"032":"부산은행",
		"034":"광주은행",
		"035":"제주은행",
		"037":"전북은행",
		"039":"경남은행",
		"045":"새마을금고",
		"048":"신협",
		"050":"상호저축은행",
		"054":"HSBC",
		"055":"도이치",
		"056":"ABN암로",
		"057":"UFJ은행",
		"071":"우체국",
		"081":"하나은행",
		"088":"신한은행"
		};

var code_RNDB10 = {
		"B10001":"복원 요청",
		"B1000A":"전담기관 승인요청",
		"B1000B":"전담기관 승인거부",
		"B10010":"복원 완료",
		"B10099":"복원 취소"
		};


var code_BNK_CD_SUB = {
		"002":"산업",
		"003":"기업",
		"004":"국민",
		"005":"외환",
		"007":"수협",
		"008":"한국수출입",
		"011":"농협",
		"020":"우리",
		"023":"SC제일",
		"024":"우리",
		"027":"한국씨티",
		"031":"대구",
		"032":"부산",
		"034":"광주",
		"035":"제주",
		"037":"전북",
		"039":"경남",
		"045":"새마을",
		"048":"신협",
		"050":"상호저축",
		"054":"HSBC",
		"055":"도이치",
		"056":"ABN암로",
		"057":"UFJ",
		"071":"우체국",
		"081":"하나",
		"088":"신한"
	};

//getCodeVal("BNK_CD_NM", code)
var code_BNK_CD_NM = {
		"KJ":"광주은행",
		"IB":"기업BC카드",
		"NH":"NH카드",
		"LT":"롯데카드",
		"SS":"삼성카드",
		"SH":"신한카드",
		"KE":"외환카드",
		"JB":"전북은행",
		"HD":"현대카드",
		"WRB":"우리BC카드",
		"BSB":"부산BC카드",
		"CTB":"씨티BC카드",
		"DGB":"대구BC카드",
		"HNB":"하나BC카드",
		"KNB":"NHBC카드",
		"NHB":"NHBC카드",
		"SCB":"SC제일BC카드"
};
