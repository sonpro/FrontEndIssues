 function makeDateSelectBoxTodayAfter(now,year,month,date,target,yearCnt,defaultValue,frm){
	if(yearCnt == undefined) yearCnt = 4;
	var nYear = now.substring(0,4);
	var sYear = parseInt(nYear,10);
	var sMonth = now.substring(4,6);
	var sDate  = now.substring(6,8);
	var eYear = parseInt(nYear,10)+ yearCnt;
	var nMonth = now.substring(4,6);
	var nDate = now.substr(6);
	//defaultValue가 있을경우 초기값으로 해당값을 선택한다.
	if(defaultValue != undefined && defaultValue != "") {
		var defaultDate = defaultValue.split("-");
		defaultValue = "";
		for(var i=0;i<defaultDate.length;i++) {
			defaultValue = defaultValue + defaultDate[i];
		}
		nYear  = defaultValue.substring(0,4);
		nMonth = parseInt(defaultValue.substring(4,6),10);
		nDate  = parseInt(defaultValue.substring(6,8),10);
	}

	var fromDay = now;
	var toDay = eYear + "12" + "31";

	if(frm ==undefined || frm == null || frm == "") {frm="form1.";}else{frm=frm+".";};

	document.write(makeSelectBoxString(year,"onChangeLeapDateAftertoYearToday("+(frm+year)+","+(frm+month)+","+(frm+date)+","+target+","+"'"+now+"'"+","+"'after'"+")","sl_ys",sYear,eYear,nYear));
	document.write("년");
	document.write(makeSelectBoxString(month,"onChangeLeapDateTodayAfter("+(frm+year)+","+(frm+month)+","+(frm+date)+","+target+","+"'"+now+"'"+")","sl_ss",sMonth,12,nMonth));
	document.write("월");
	document.write(makeSelectBoxString(date,"onChangeDate("+(frm+year)+","+(frm+month)+","+(frm+date)+","+target+")","sl_ss",1,sDate,nDate));
	document.write("일");

	var fromDayForCal = nYear+nMonth+'01';

//	document.write("<input type='hidden' name="+target+"DateBoxType value='after'>");
	document.write("<input type='hidden' name="+target+"fromday value="+fromDayForCal+">");
	document.write("<input type='hidden' name="+target+"today  value="+toDay+">");
	if(defaultValue > now) {
		var yearObj = document.getElementsByName(year)[0];
		yearObj.fireEvent("onchange");
		document.getElementsByName(year)[0].value = defaultValue.substring(0,4);
		var monthObj = document.getElementsByName(month)[0];
		monthObj = monthObj.fireEvent("onchange");
		document.getElementsByName(month)[0].value = defaultValue.substring(4,6);
		var dateObj  = document.getElementsByName(date)[0];
		dateObj  = dateObj.fireEvent("onchange");
		document.getElementsByName(date)[0].value = defaultValue.substring(6,8);

		document.getElementsByName(target)[0].value = defaultValue.substring(0,4)+"-"+defaultValue.substring(4,6)+"-"+defaultValue.substring(6,8);
	}
}

function onChangeLeapDateAftertoYearToday(year,month,date,target,today) {

	var i = 1;
	var k = 1;
	date.length = findLeapEndDate(year.value, month.value);
	month.length = 12;
	if(today !=undefined) {
		var nYear = today.substring(0,4);
		var nMonth = today.substring(4,6);
		var nDate = today.substr(6);
	}

	if(year.value == nYear) {
		month.length = month.length - parseInt(nMonth,10)+1;
		var total_month = month.length;
		var monthValue = nMonth.charAt(0) == '0' ? parseInt(nMonth.substring(1,2),10) : parseInt(nMonth,10);
		for(i=1 ; i <= total_month; i++) {
			k = i+monthValue-1;
			if(k < 10) k = '0' + k;
			month.options[i-1].text = k;
			month.options[i-1].value = k;
		}
	}else {
		var total_month = month.length;
		for(i=1 ; i <= total_month; i++) {
			k = i;
			if(i < 10) k = '0' + k;
			month.options[i-1].text = k;
			month.options[i-1].value = k;
		}
	}

	if(year.value == nYear && month.value == nMonth) {
		date.length = date.length - parseInt(nDate,10)+1;
		k=1;
	  	var total_days = date.length;
	  	var dateValue = nDate.charAt(0) == '0' ? parseInt(nDate.substring(1,2),10) : parseInt(nDate,10);
		for (i=1 ;i <= total_days;i++) {
			k = i;
			if(k < 10) k = '0' + k;
			date.options[i-1].text=k;
			date.options[i-1].value=k;
		}
	}else{
		k=1;
	  	var total_days = date.length;
		for (i=1 ;i <= total_days;i++) {
			k = i;
			if(i < 10) k = '0' + k;
			date.options[i-1].text=k;
			date.options[i-1].value=k;
		}
	}

	if(year.value > target.value.substring(0,4)) {
		 //만약 이후년으로 이동시 해당월이 없을 경우 그 해의 마지막 월로 선택.
		if((month.options[0].value <= rmDate(target.value).substring(4,6)) && (month.options[month.options.length-1].value >= rmDate(target.value).substring(4,6)) ) {
			month.value = rmDate(target.value).substring(4,6);
		}else{
			month.options[month.options.length-1].selected = true;
		}
	}else{
		//만약 이전년에 해당 월이 없으면 첫 월로 세팅.
		if((month.options[0].value <= rmDate(target.value).substring(4,6)) && (month.options[month.options.length-1].value >= rmDate(target.value).substring(4,6)) ) {
			month.value = rmDate(target.value).substring(4,6);
		}else{
			month.options[0].selected = true;
		}
	}

	onChangeLeapDateTodayAfter(year,month,date,target,today);
}

function onChangeLeapDateTodayAfter(year,month,date,target,today) {
	var i = 1;
	var k = 1;
	date.length = findLeapEndDate(year.value, month.value);
	month.length = 12;
	if(today !=undefined) {
		var nYear = today.substring(0,4);
		var nMonth = today.substring(4,6);
		var nDate = today.substr(6);

		if(year.value == nYear && month.value == nMonth) {
			date.length = parseInt(nDate,10);
		}
	}

	if(year.value == nYear) {
		month.length = month.length - parseInt(nMonth,10)+1;
		var total_month = month.length;
		var monthValue = nMonth.charAt(0) == '0' ? parseInt(nMonth.substring(1,2),10) : parseInt(nMonth,10);
		for(i=1 ; i <= total_month; i++) {
			k = i+monthValue-1;
			if(k < 10) k = '0' + k;
			month.options[i-1].text = k;
			month.options[i-1].value = k;
		}
	}else {
		var total_month = month.length;
		for(i=1 ; i <= total_month; i++) {
			k = i;
			if(i < 10) k = '0' + k;
			month.options[i-1].text = k;
			month.options[i-1].value = k;
		}
	}

	if(year.value == nYear && month.value == nMonth) {
//		date.length = date.length - parseInt(nDate,10)+1;
		k=1;
	  	var total_days = date.length;
	  	var dateValue = nDate.charAt(0) == '0' ? parseInt(nDate.substring(1,2),10) : parseInt(nDate,10);
		for (i=1 ;i <= total_days;i++) {
			k = i;
			if(k < 10) k = '0' + k;
			date.options[i-1].text=k;
			date.options[i-1].value=k;
		}
	}else{
		k=1;
	  	var total_days = date.length;
		for (i=1 ;i <= total_days;i++) {
			k = i;
			if(i < 10) k = '0' + k;
			date.options[i-1].text=k;
			date.options[i-1].value=k;
		}
	}

	if(year.value + month.value  > rmDate(target.value).substring(0,6)) {
		//만약 이후달로 이동시 해당일이 없을 경우 그 월의 마지막 일로 선택.
		if((date.options[0].value <= rmDate(target.value).substring(6,8)) &&
				(date.options[date.options.length-1].value >= rmDate(target.value).substring(6,8))) {
			date.value =  rmDate(target.value).substring(6,8);
		}else{
			date.options[date.options.length-1].selected = true;
		}
	}else{
		//만약 이전달에 해당 일이 없으면 첫 날짜로 세팅.
		if((date.options[0].value <= rmDate(target.value).substring(6,8)) &&
				(date.options[date.options.length-1].value >= rmDate(target.value).substring(6,8)) &&
					today <= year.value + month.value + date.value) {
			date.value =  rmDate(target.value).substring(6,8);
		}else{
			var monthLastDay = findLeapEndDate(rmDate(target.value).substring(0,4),rmDate(target.value).substring(4,6));
			//현재일이 말일이고  시작일보다 선택값이 큰 경우는  말일로 세팅(말일일 경우) 그외는  첫 값으로 세팅함.
			if(monthLastDay == rmDate(target.value).substring(6,8) && today.substring(0,6) < year.value + month.value){
				date.options[date.options.length-1].selected = true;
			}else{
				date.options[0].selected = true;
			}
		}
	}


	//htc 파일 설정 때문에 select박스를 다시 그리기 위해 추가한것(2008/05/16)
	year.reInitializeSelectBox();
	month.reInitializeSelectBox();
	if(date.length != undefined) date.reInitializeSelectBox();
	onChangeDate(year,month,date,target);
}

/**
 * 달력 띄우기
 * <br> ex : sp_calendar('aform.cal1')
 * @param : 리턴값이 들어갈 input의 name
 */
function openCalendar(name, offsetX, offsetY){
	var targetDate = eval(name);
	var tDateValue = targetDate.value;

	if(typeof offsetX=="undefined") offsetX = "0";
	if(typeof offsetY=="undefined") offsetY = "0";
	Calendar_ntr(targetDate, offsetX, offsetY);
}


function Calendar_ntr(obj, offsetX, offsetY) {            // jucke
	var now = obj.value.split("-");
	var x, y;
	
	target = obj;                      // Object 저장;
	
	x = (document.layers) ? loc.pageX : event.clientX + 35 + Number(offsetX)*170;
	//y = (document.layers) ? loc.pageY : event.clientY + document.body.scrollTop + Number(offsetY)*170;
	y = (document.layers) ? loc.pageY : event.clientY + document.documentElement.scrollTop;
	
	var fromday = eval("document.all."+obj.name+"fromday");
	var today   = eval("document.all."+obj.name+"today");
	if(fromday != undefined) {
		var fromday = eval("document.all."+obj.name+"fromday").value;
		var today = eval("document.all."+obj.name+"today").value;
	}
	
	minical.style.pixelTop = y+5;
	minical.style.pixelLeft = x-50;
	
	if(minical.style.display == "block") { minical.style.display ="none";closeShim(minical); }else{ minical.style.display ="block";openShim(minical,null);}
	
	//fromday, today가 존재하면 기간 조회 달력임.
	if(fromday != undefined && today != undefined){
		var nowday = "";
		if(now.length == 3) {
			nowday = now[0] + now[1] + now[2];
		}else{
			now = new Date();
			nowday = ""+now.getFullYear() + (now.getMonth()+1) + now.getDate();
		}
		Show_cal_period_ntr(nowday,fromday,today);
	}else if (now.length == 3) {             // 정확한지 검사
		Show_cal(now[0],now[1],now[2]);   // 넘어온 값을 년월일로 분리
	} else {
		now = new Date();
		Show_cal(now.getFullYear(), now.getMonth()+1, now.getDate());   // 현재 년/월/일을 설정하여 넘김.
	}

	openShim(minical,null);
	Calendar.addEvent(document, "mousedown", closeCal);
}
/**
 * 달력 띄우기
 * <br> ex : sp_calendar('aform.cal1')
 * @param : 리턴값이 들어갈 input의 name
 */
function openCalendarSac(name, offsetX, offsetY){
	var targetDate = eval(name);
	var tDateValue = targetDate.value;

	if(typeof offsetX=="undefined") offsetX = "0";
	if(typeof offsetY=="undefined") offsetY = "0";
	Calendar_ntrSac(targetDate, offsetX, offsetY);
}


function Calendar_ntrSac(obj, offsetX, offsetY) {            // jucke
	var now = obj.value.split("-");
	var x, y;
	
	target = obj;                      // Object 저장;
	
	x = (document.layers) ? loc.pageX : event.clientX + 35 + Number(offsetX)*170;
	//y = (document.layers) ? loc.pageY : event.clientY + document.body.scrollTop + Number(offsetY)*170;
	y = (document.layers) ? loc.pageY : event.clientY + document.documentElement.scrollTop;
	
	var fromday = eval("document.all."+obj.name+"fromday");
	var today   = eval("document.all."+obj.name+"today");
	if(fromday != undefined) {
		var fromday = eval("document.all."+obj.name+"fromday").value;
		var today = eval("document.all."+obj.name+"today").value;
	}
	
	minical.style.pixelTop = y+5;
	minical.style.pixelLeft = x-200;
	
	if(minical.style.display == "block") { minical.style.display ="none";closeShim(minical); }else{ minical.style.display ="block";openShim(minical,null);}
	
	//fromday, today가 존재하면 기간 조회 달력임.
	if(fromday != undefined && today != undefined){
		var nowday = "";
		if(now.length == 3) {
			nowday = now[0] + now[1] + now[2];
		}else{
			now = new Date();
			nowday = ""+now.getFullYear() + (now.getMonth()+1) + now.getDate();
		}
		Show_cal_period_ntr(nowday,fromday,today);
	}else if (now.length == 3) {             // 정확한지 검사
		Show_cal(now[0],now[1],now[2]);   // 넘어온 값을 년월일로 분리
	} else {
		now = new Date();
		Show_cal(now.getFullYear(), now.getMonth()+1, now.getDate());   // 현재 년/월/일을 설정하여 넘김.
	}

	openShim(minical,null);
	Calendar.addEvent(document, "mousedown", closeCal);
}

// 달력 커스터마이징
function Show_cal_period_ntr(nowday, fromday, today) {
	// sYear , sMonth, sDay
	if (nowday < fromday)
		nowday = fromday;
	if (nowday > today)
		nowday = today;

	var Months_day = new Array(0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	var Weekday_name = new Array("Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat");
	var intThisYear = new Number(), intThisMonth = new Number(), intThisDay = new Number();
	var intFromYear = new Number(), intFromMonth = new Number(), intFromDay = new Number();
	var intToYear = new Number(), intToMonth = new Number(), intToDay = new Number();
	document.all.minical.innerHTML = "";
	datToday = new Date(); // 현재 날자 설정

	intThisYear = parseInt(nowday.substring(0, 4), 10);
	intThisMonth = parseInt(nowday.substring(4, 6), 10);
	intThisDay = parseInt(nowday.substring(6, 8), 10);

	intFromYear = parseInt(fromday.substring(0, 4), 10);
	intFromMonth = parseInt(fromday.substring(4, 6), 10);
	intFromDay = parseInt(fromday.substring(6, 8), 10);

	intToYear = parseInt(today.substring(0, 4), 10);
	intToMonth = parseInt(today.substring(4, 6), 10);
	intToDay = parseInt(today.substring(6, 8), 10);

	// 해줘야 하나???
	if (intThisYear == 0)
		intThisYear = datToday.getFullYear(); // 값이 없을 경우
	if (intThisMonth == 0)
		intThisMonth = parseInt(datToday.getMonth()) + 1; // 월 값은 실제값 보다 -1 한
															// 값이 돼돌려 진다.
	if (intThisDay == 0)
		intThisDay = datToday.getDate();

	switch (intThisMonth) {
	case 1:
		intPrevYear = intThisYear - 1;
		intPrevMonth = 12;
		intNextYear = intThisYear;
		intNextMonth = 2;
		break;
	case 12:
		intPrevYear = intThisYear;
		intPrevMonth = 11;
		intNextYear = intThisYear + 1;
		intNextMonth = 1;
		break;
	default:
		intPrevYear = intThisYear;
		intPrevMonth = parseInt(intThisMonth) - 1;
		intNextYear = intThisYear;
		intNextMonth = parseInt(intThisMonth) + 1;
		break;
	}

	NowThisYear = datToday.getFullYear(); // 현재 년
	NowThisMonth = datToday.getMonth() + 1; // 현재 월
	NowThisDay = datToday.getDate(); // 현재 일

	datFirstDay = new Date(intThisYear, intThisMonth - 1, 1); // 현재 달의 1일로 날자
																// 객체 생성(월은 0부터
																// 11까지의 정수(1월부터
																// 12월))
	intFirstWeekday = datFirstDay.getDay(); // 현재 달 1일의 요일을 구함 (0:일요일, 1:월요일)

	intSecondWeekday = intFirstWeekday;
	intThirdWeekday = intFirstWeekday;

	datThisDay = new Date(intThisYear, intThisMonth, intThisDay); // 넘어온 값의 날자
																	// 생성
	intThisWeekday = datThisDay.getDay(); // 넘어온 날자의 주 요일

	varThisWeekday = Weekday_name[intThisWeekday]; // 현재 요일 저장

	intPrintDay = 1; // 달의 시작 일자
	secondPrintDay = 1;
	thirdPrintDay = 1;

	Stop_Flag = 0;

	if ((intThisYear % 4) == 0) { // 4년마다 1번이면 (사로나누어 떨어지면)
		if ((intThisYear % 100) == 0) {
			if ((intThisYear % 400) == 0) {
				Months_day[2] = 29;
			}
		} else {
			Months_day[2] = 29;
		}
	}
	intLastDay = Months_day[intThisMonth]; // 마지막 일자 구함
	Stop_flag = 0;

	Cal_HTML = "<table cellpadding='0' cellspacing='0' class='cal_tbl'>"
			+ "<colgroup><col width='15%'><col width='16%'><col width='13%'><col width='14%'><col width='12%'><col width='16%'><col width='17%'></colgroup>"
			+ "<tr class='top'>" + "	<th colspan='7'>"
			+ "		<a href='#' onClick='Show_cal_period_ntr(\""
			+ intPrevYear
			+ (intPrevMonth >= 10 ? intPrevMonth : "0" + intPrevMonth)
			+ "01"
			+ "\",\""
			+ fromday
			+ "\",\""
			+ today
			+ "\");'>"
			+ "		<img src='/js/calendar/img/comm/button/arr_cal_before.gif' alt='이전달' /></a>"
			+ "		<span>"
			+ get_PeriodYearinfo_ntr(nowday, fromday, today)
			+ "</span> 년 <span>"
			+ get_PeriodMonthinfo(nowday, fromday, today)
			+ "</span> 월"
			+ "		<a href='#' onClick='Show_cal_period_ntr(\""
			+ intNextYear
			+ (intNextMonth >= 10 ? intNextMonth : "0" + intNextMonth)
			+ "01"
			+ "\",\""
			+ fromday
			+ "\",\""
			+ today
			+ "\");'>"
			+ "		<img src='/js/calendar/img/comm/button/arr_cal_next.gif' alt='다음달' /></a>"
			+ "	</th>" + "</tr>";
	for (var intLoopWeek = 1; intLoopWeek < 7; intLoopWeek++) { // 주단위 루프 시작, 최대 6주
		Cal_HTML += "<tr  class=mid>";
		for (var intLoopDay = 1; intLoopDay <= 7; intLoopDay++) { // 요일단위 루프 시작,
																// 일요일 부터
			var clsStr = "";
			if (intThirdWeekday > 0) { // 첫주 시작일이 1보다 크면
				Cal_HTML += "<td onClick='doClick_ntr();' ";
				if (intLoopDay == 1) {
					Cal_HTML += " class=sun";
				}
				Cal_HTML += ">";
				intThirdWeekday--;
			} else {
				if (thirdPrintDay > intLastDay) { // 입력 날짜가 월말보다 크다면
					Cal_HTML += "<td onClick='doClick_ntr();' ";
					if (intLoopDay == 7) {
						Cal_HTML += " class=sat";
					}
					Cal_HTML += ">";
				} else { // 입력날짜가 현재월에 해당 되면
					// 지정된 날짜보다 크거나 작은경우 링크를 주지 않는다.

					if ((intThisYear == intFromYear
							&& intThisMonth == intFromMonth && NowThisDay < thirdPrintDay)) {
						Cal_HTML += "<td title=" + intThisYear + "-"
								+ day2(intThisMonth).toString() + "-"
								+ day2(thirdPrintDay).toString()
								+ " style='text-decoration:none;";
					} else {
						Cal_HTML += "<td onClick='doClick_ntr(\"" + intThisYear
								+ "-" + day2(intThisMonth).toString() + "-"
								+ day2(thirdPrintDay).toString() + "\");' ";
						Cal_HTML += " title="
								+ intThisYear
								+ "-"
								+ day2(intThisMonth).toString()
								+ "-"
								+ day2(thirdPrintDay).toString()
								+ " style='cursor:Hand;text-decoration:underline;";
					}

					if (thirdPrintDay == intThisDay) {
						clsStr += "font-weight:bold;";
					}
					switch (intLoopDay) {
					case 1:
						Cal_HTML += clsStr
								+ "padding-left:6px;border-left:1px solid #a8a8a8; color:#ff0000;' >"
								+ thirdPrintDay + "";
						break;
					case 7:
						Cal_HTML += clsStr
								+ "padding-right:6px;border-right:1px solid #a8a8a8; color:#00ff00;' >"
								+ thirdPrintDay + "";
						break;
					default:
						Cal_HTML += clsStr + "'>" + thirdPrintDay;
						break;
					}
				}
				thirdPrintDay++;

				if (thirdPrintDay > intLastDay) { // 만약 날짜 값이 월말 값보다 크면 루프문 탈출
					Stop_Flag = 1;
				}
			}
			Cal_HTML += "</td>";
		}// end for
		Cal_HTML += "</tr>";
		if (Stop_Flag == 1)
			break;
	}//end for

	Cal_HTML += "<tr class=bot><td colspan=7></td></tr></table>";
	//document.write(Cal_HTML);
	document.all.minical.innerHTML = Cal_HTML;
}

// 달력 커스터마이징 종료

// 달력 커스터마이징2 시작
function doClick_ntr(date) { // 날자를 선택하였을 경우
	cal_Day = date;// window.event.srcElement.title;
	if (cal_Day != null && cal_Day.length > 7) { // 날자 값이있으면
		target.value = cal_Day; // 값 설정
		// 날자 선택시 select에 값을 할당시킴

		var date = new Date();
		var today = date.getYear()
				+ (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1)
						: '' + (date.getMonth() + 1))
				+ (date.getDate() < 10 ? '0' + date.getDate() : '' + date.getDate());

		var tagetObj = eval("document.all." + target.name);
		var yyObj = eval("document.all." + target.name + "_yy");
		var tagetObj_mmdd = eval("document.all." + target.name + "_mmdd");

		if (yyObj != undefined) {
			var mmObj = eval("document.all." + target.name + "_mm");
			var ddObj = eval("document.all." + target.name + "_dd");
			var now = cal_Day.split("-");

			yyObj.value = now[0];
			mmObj.value = now[1];
			ddObj.value = now[2];

			onChangeDate(yyObj, mmObj, ddObj, tagetObj, today);

		}
	}
	minical.style.display = 'none'; // 화면에서 지움
	closeShim(minical);
}

// 달력 커스터마이징2 종료

function get_PeriodYearinfo_ntr(nowday, fromday, today) { // 년 정보를 콤보 박스로 표시
	if (nowday < fromday)
		nowday = fromday;
	if (nowday > today)
		nowday = today;

	var fromyear = fromday.substring(0, 4);
	var toyear = today.substring(0, 4);
	var nowyear = nowday.substring(0, 4);
	var nowmonth = nowday.substring(4, 6);
	var nowdate = nowday.substring(6, 8);

	var i = new Number();
	var str = new String();

	str = "<select onChange='Show_cal_period_ntr(this.value+\""
			+ (nowmonth + nowdate)
			+ "\",\""
			+ fromday
			+ "\",\""
			+ today
			+ "\");' onmouseover=doOver(); style='font-size:8pt;behavior: url('');'>";
	for (i = fromyear; i <= toyear; i++) {
		if (i == parseInt(nowyear)) {
			str += "<option value=" + i + " selected onmouseover=doOver();>"
					+ i + "</OPTION>";
		} else {
			str += "<option value=" + i + " onmouseover=doOver();>" + i
					+ "</option>";
		}
	}
	str += "</select>";
	return str;
}

function get_PeriodMonthinfo(nowday, fromday, today) { // 월 정보를 콤보 박스로 표시\
	if (nowday < fromday) {
		alert("날짜의 범위를 벗어났습니다.");
		return get_PeriodMonthinfo(fromday, fromday, today);
	} else if (nowday > today) {
		alert("날짜의 범위를 벗어났습니다.");
		return get_PeriodMonthinfo(today, fromday, today);
	}
	var i = new Number();
	var str = new String();

	var fromyear = fromday.substring(0, 4);
	var frommonth = fromday.substring(4, 6);
	var toyear = today.substring(0, 4);
	var tomonth = today.substring(4, 6);
	var nowyear = nowday.substring(0, 4);
	var nowmonth = nowday.substring(4, 6);
	var nowdate = nowday.substring(6, 8);

	str = "<select onChange='Show_cal_period_ntr(\""
			+ nowyear
			+ "\"+(this.value >= 10 ? this.value : \"0\"+this.value )+\""
			+ nowdate
			+ "\",\""
			+ fromday
			+ "\",\""
			+ today
			+ "\");' onmouseover=doOver(); style='font-size:8pt;behavior: url('');'>";

	var startMonth = 1;
	var endMonth = 12;
	// 현재 선택된 연도가 시작날짜의 연도일경우
	if (fromyear == nowyear) {
		startMonth = parseInt(frommonth, 10);
		if (nowyear == toyear && parseInt(tomonth, 10) < 12)
			endMonth = parseInt(tomonth, 10);
		// 현재 선택된 연도가 종료날짜의 연도일경우
	} else if (toyear == nowyear) {
		endMonth = parseInt(tomonth, 10);
		if (nowyear == fromyear && parseInt(tomonth, 10) > 1)
			startMonth = parseInt(tomonth, 10);
	}

	for (i = startMonth; i <= endMonth; i++) {
		if (i == parseInt(nowmonth, 10)) {
			str += "<option value=" + i + " selected onmouseover=doOver();>"
					+ i + "</option>";
		} else {
			str += "<option value=" + i + " onmouseover=doOver();>" + i
					+ "</option>";
		}
	}
	str += "</select>";
	return str;
}