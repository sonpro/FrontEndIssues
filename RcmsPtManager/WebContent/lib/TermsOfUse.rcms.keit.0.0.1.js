var RcmsUsageRules = { 
		/*
		 * "A~" : 여러가지 업무상황(증빙구분,등록업무,취소업무 등)에 따른 필수값 체크
		 */
		"AE001" : 	//ex.전자세금계산서등록시규칙코드
		{ "EvdcDv"  : "T", "RequiredValue" : ["splyamt","vatamt"] }
		,"AE002"  : 	//ex.카드등록시규칙코드
		{ "EvdcDv"  : "C", "RequiredValue" : ["splyamt","vatamt","trnsRsn"] }
		/*
		 * "B~" : ....
		 */
		,"BA001"  : 	//.....
		{ "temp"  : "temp", "temp" : ["temp"] }
		/*
		 * "F~" : 부등호체크(좌변,우변,등호로 체크)
		 * true조건을 명시해야한다
		 */
		,"FB001"  : 	//0원이어야한다 -->0이아니면오류(val!=0)
		{ "LTside"  : ["vatamt"], "sign" : "!=" ,"RTside":"0"}
		,"FB002"  : 	//0보다커야한다-->1보다작으면오류(val<1)
		{ "LTside"  : ["splyamt","vatamt"], "sign" : "<" ,"RTside":"1"}
}

var RcmsValueToNameDic = {
		"variables": [
			{"key":"splyamt" ,"name": "공급금액"}
			,{"key":"vatamt","name":"부가세액"}
			,{"key":"trnsRsn","name":"거래사유"}
		],
		"usageRules": [
  			{"key":"AE001" ,"name":"전자세금계산서등록시규칙코드","errMsg":" 은 필수값 입니다"}
  			,{"key":"AE002","name":"카드등록시규칙코드","errMsg":" 은 필수값 입니다"}
  			,{"key":"FB001","name":"0과동일","errMsg":" 은 0이어야 합니다"}
  			,{"key":"FB002","name":"0보다커야함","errMsg":" 은 0보다 커야합니다"}
  		]
}
