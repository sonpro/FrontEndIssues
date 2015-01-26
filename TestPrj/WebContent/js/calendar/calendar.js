 /*
 - 팝업창에서 카렌다를 쓸 경우 이용되는 javascript이다.
 - 변형없이 그대로 이용한다.
 */

var target;                        // 호출한 Object의 저장
//var stime;
document.write("<div id=minical oncontextmenu='return false' ondragstart='return false' onselectstart='return false' style=\" margin:0; padding:0;width:160;display:none;position: absolute; z-index: 99\"></div>");

function Calendar(obj) {            // jucke
	var now = obj.value.split("-");
	var x, y;

	target = obj;                      // Object 저장;
	x = (document.layers) ? loc.pageX : event.clientX + 35;
	y = (document.layers) ? loc.pageY : event.clientY + document.body.scrollTop;
	openShim();
	var fromday = eval("document.getElementsByName(\""+obj.name+"fromday\").item(0).value");
	var today   = eval("document.getElementsByName(\""+obj.name+"today\").item(0).value");
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
		Show_cal_period(nowday,fromday,today);
	}else if (now.length == 3) {             // 정확한지 검사
		Show_cal(now[0],now[1],now[2]);   // 넘어온 값을 년월일로 분리
	} else {
		now = new Date();
		Show_cal(now.getFullYear(), now.getMonth()+1, now.getDate());   // 현재 년/월/일을 설정하여 넘김.
	}

	openShim(minical,null);
	Calendar.addEvent(document, "mousedown", closeCal);
}

Calendar.is_ie = ( (navigator.userAgent.toLowerCase().indexOf("msie") != -1) &&
		   (navigator.userAgent.toLowerCase().indexOf("opera") == -1) );

Calendar.addEvent = function(el, evname, func) {
	if (Calendar.is_ie) {
		el.attachEvent("on" + evname, func);
	} else {
		el.addEventListener(evname, func, true);
	}
};

Calendar.removeEvent = function(el, evname, func) {
	if (Calendar.is_ie) {
		el.detachEvent("on" + evname, func);
	} else {
		el.removeEventListener(evname, func, true);
	}
};

Calendar.getElement = function(ev) {
	if (Calendar.is_ie) {
		return window.event.srcElement;
	} else {
		return ev.currentTarget;
	}
};

Calendar.getTargetElement = function(ev) {
	if (Calendar.is_ie) {
		return window.event.srcElement;
	} else {
		return ev.target;
	}
};

function closeCal(ev){
	var el = Calendar.is_ie ? Calendar.getElement(ev) : Calendar.getTargetElement(ev);
	for (; el != null; el = el.parentNode) {
		if (el.id == "minical") break;
	}
	if (el == null) {
		minical.style.display ="none";closeShim(minical);
		Calendar.removeEvent(document, "mousedown", closeCal);
	}
}

function doOver() {                 // 마우스가 칼렌다위에 있으면
	var el = window.event.srcElement;
	cal_Day = el.title;

	if (cal_Day.length > 7) {          // 날자 값이 있으면.
		el.style.borderTopColor = el.style.borderLeftColor = "buttonhighlight";
		el.style.borderRightColor = el.style.borderBottomColor = "buttonshadow";
	}
 //window.clearTimeout(stime);      // Clear
}

function doClick(date) {                // 날자를 선택하였을 경우
	gridPageReset();
	//alert(date);
	cal_Day = date;//window.event.srcElement.title;
	//window.event.srcElement.style.borderColor = "red";       // 테두리 색을 빨간색으로
	if (cal_Day != null && cal_Day.length > 7) {          // 날자 값이있으면
		target.value=cal_Day;              // 값 설정
		if ( target.name == "BUY_DATE_A" || target.name == "BUY_DATE_B" || target.name == "BUY_DATE_C" || target.name == "BUY_DATE_D" ) {
			var mmddObj = eval("document.all."+target.name+"_MMDD");
			mmddObj.value = cal_Day.substring(5,7)+cal_Day.substring(8,10);
		}
		// 날자 선택시 select에 값을 할당시킴
		var date = new Date();
		var today = date.getYear() + (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : ''+(date.getMonth()+1)) +
						(date.getDate() < 10 ? '0'+date.getDate() : ''+date.getDate());
		var tagetObj = eval("document.all."+target.name);
		//현재날짜까지만 선택할수 있는 makeDateSelectBoxToday로 콤보박스를 생성시에는 tagetArryDate이 존재한다.
		var tagetArryDate = eval("document.all."+target.name+"DateBoxType");
		var yyObj = eval("document.all."+target.name+"_yy");
		if(yyObj != undefined) {
			var mmObj = eval("document.all."+target.name+"_mm");
			var ddObj = eval("document.all."+target.name+"_dd");
			var now = cal_Day.split("-");

			var maxYear = date.getYear();
			var maxMonth = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : (date.getMonth()+1));
			var maxDate = (date.getDate() < 10 ? '0'+date.getDate() : date.getDate());

			if(tagetArryDate != undefined  && tagetArryDate.value == "before" && parseInt(maxYear,10) <= parseInt(now[0],10)) {
				yyObj.value = maxYear;
				mmObj.value = maxMonth;
				ddObj.value = maxDate;

				//최초 달,일 로 셋팅되기 위해 사용한 변수.
				monthValue = "";
				dateValue  = "";

				if(parseInt(maxMonth,10) < parseInt(now[1],10)) {
					monthValue = maxMonth;
					dateValue = maxDate;
				}else if(parseInt(maxMonth,10) == parseInt(now[1],10)) {
					monthValue = maxMonth;
					if(parseInt(maxDate,10) < parseInt(now[2],10)) {
						dateValue = maxDate;
					}else {
						dateValue = now[2];
					}
				}else {
					monthValue = now[1];
					dateValue = now[2];
				}
				mmObj.value = monthValue;
				ddObj.value = dateValue;
				onChangeLeapDate(yyObj,mmObj,ddObj,tagetObj,today);
				ddObj.value = dateValue;
			}else if(tagetArryDate != undefined  && tagetArryDate.value == "after" && parseInt(maxYear,10) >= parseInt(now[0],10)) {
				yyObj.value = maxYear;
				mmObj.value = maxMonth;
				ddObj.value = maxDate;

				if(parseInt(maxMonth,10) > parseInt(now[1],10)) {
					mmObj.value = maxMonth;
					ddObj.value = maxDate;
				}else if(parseInt(maxMonth,10) == parseInt(now[1],10)) {
					mmObj.value = maxMonth;
					if(parseInt(maxDate,10) > parseInt(now[2],10)) {
						ddObj.value = maxDate;
					}else {
						ddObj.value = now[2];
					}
				}else {
					mmObj.value = now[1];
					ddObj.value = now[2];
				}
				onChangeLeapDateAfter(yyObj,mmObj,ddObj,tagetObj,today);
			}else if(tagetArryDate != undefined  && tagetArryDate.value == "period") {
				//fromday, today 설정.
				var fromday = eval("document.all."+target.name+"fromday.value");
				var today = eval("document.all."+target.name+"today.value");

				var yyObjMinValue = fromday.substring(0,4);
				var mmObjMinValue = fromday.substring(4,6);
				var ddObjMinValue = fromday.substring(6,8);

				var yyObjMaxValue = today.substring(0,4);
				var mmObjMaxValue = today.substring(4,6);
				var ddObjMaxValue = today.substring(6,8);
				var pickDay = now[0]+now[1]+now[2];
				//년도 비교 => 월 비교 => 일 비교
				if( fromday <= pickDay && today >= pickDay) {
					yyObj.value = now[0];
					mmObj.value = now[1];
					ddObj.value = now[2];
					onChangeLeapPeriodDate(yyObj,mmObj,ddObj,tagetObj,fromday,today);
					ddObj.value = now[2];
				}
			}else{
				onChangeLeapDate(yyObj,mmObj,ddObj,tagetObj);

				yyObj.value = now[0];
				mmObj.value = now[1];
				ddObj.value = now[2];
			}
		}
	}
	minical.style.display='none';      // 화면에서 지움
	closeShim(minical);
}

function doOut() {
	var el = window.event.fromElement;
	cal_Day = el.title;
	
	if (cal_Day.length > 7) {
		el.style.borderColor = "white";
	}
 //stime=window.setTimeout("minical.style.display='none';", 200);
}

function day2(d) {                  // 2자리 숫자료 변경
var str = new String();

	if (parseInt(d) < 10) {
		str = "0" + parseInt(d);
	} else {
		str = "" + parseInt(d);
	}
	return str;
}

function Show_cal(sYear, sMonth, sDay) {
	var Months_day = new Array(0,31,28,31,30,31,30,31,31,30,31,30,31);
	var Weekday_name = new Array("Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat");
	var intThisYear = new Number(), intThisMonth = new Number(), intThisDay = new Number();
	document.all.minical.innerHTML = "";
	datToday = new Date();             // 현재 날자 설정

	intThisYear = parseInt(sYear,10);
	intThisMonth = parseInt(sMonth,10);
	intThisDay = parseInt(sDay,10);

	if (intThisYear == 0) intThisYear = datToday.getFullYear();    // 값이 없을 경우
	if (intThisMonth == 0) intThisMonth = parseInt(datToday.getMonth())+1; // 월 값은 실제값 보다 -1 한 값이 돼돌려 진다.
	if (intThisDay == 0) intThisDay = datToday.getDate();

	switch(intThisMonth) {
		case 1:
			intPrevYear = intThisYear -1;
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

	NowThisYear = datToday.getFullYear();          // 현재 년
	NowThisMonth = datToday.getMonth()+1;          // 현재 월
	NowThisDay = datToday.getDate();               // 현재 일

	datFirstDay = new Date(intThisYear, intThisMonth-1, 1);      // 현재 달의 1일로 날자 객체 생성(월은 0부터 11까지의 정수(1월부터 12월))
	intFirstWeekday = datFirstDay.getDay();        // 현재 달 1일의 요일을 구함 (0:일요일, 1:월요일)
	
	intSecondWeekday = intFirstWeekday;
	intThirdWeekday = intFirstWeekday;
	
	datThisDay = new Date(intThisYear, intThisMonth, intThisDay);    // 넘어온 값의 날자 생성
	intThisWeekday = datThisDay.getDay();              // 넘어온 날자의 주 요일
	
	varThisWeekday = Weekday_name[intThisWeekday];     // 현재 요일 저장
	
	intPrintDay = 1;                // 달의 시작 일자
	secondPrintDay = 1;
	thirdPrintDay = 1;

	Stop_Flag = 0;

	if ((intThisYear % 4)==0) {             // 4년마다 1번이면 (사로나누어 떨어지면)
		if ((intThisYear % 100) == 0) {
			if ((intThisYear % 400) == 0) {
				Months_day[2] = 29;
			}
		} else {
			Months_day[2] = 29;
		}
	}
	intLastDay = Months_day[intThisMonth];          // 마지막 일자 구함
	Stop_flag = 0;

	 /*Cal_HTML = "<TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0 ONMOUSEOVER=doOver(); ONMOUSEOUT=doOut(); STYLE='font-size:8pt;font-family:Tahoma;'>"
	   + "<TR ALIGN=CENTER height='25' valign='center'><TD COLSPAN=7 nowrap=nowrap ALIGN=CENTER><SPAN TITLE='이전달' STYLE=cursor:hand; onClick='Show_cal("+intPrevYear+","+intPrevMonth+",1);'><!--img src='/ngmWeb/images/ukey/popup/icon_calerro01.gif' border='0' align='absmiddle'-->◀</SPAN> "
	   + get_Yearinfo(intThisYear,intThisMonth,intThisDay)+"&nbsp;&nbsp;"+get_Monthinfo(intThisYear,intThisMonth,intThisDay)+"&nbsp;<SPAN TITLE='다음달' STYLE=cursor:hand; onClick='Show_cal("+intNextYear+","+intNextMonth+",1);'><!--img src='/ngmWeb/images/ukey/popup/icon_calerro02.gif' border='0' align='absmiddle'-->▶</SPAN></TD></TR>"
	   + "<TR ALIGN=CENTER  BGCOLOR=WHITE height='25' ><TD>일</TD><TD>월</TD><TD>화</TD><TD>수</TD><TD>목</TD><TD>금</TD><TD>토</TD></TR>";
	 */
	 Cal_HTML = "<iframe style='position:absolute;z-index:-1;width:100%;height:100%;top:0;left:0;margin:0;padding:0;scrolling:no;' frameborder='0'></iframe>"
		    +   "<table cellpadding='0' cellspacing='0' class='cal_tbl'>"
			+	"<colgroup><col width='15%'><col width='16%'><col width='13%'><col width='14%'><col width='12%'><col width='16%'><col width='17%'></colgroup>"
			+	"<tr class='top'>"
			+	"	<th colspan='7'>"
			+	"		<a href='#' onClick='Show_cal("+intPrevYear+","+intPrevMonth+",1);'>"
			+	"		<img src='/js/calendar/img/arr_cal_before.gif' alt='이전달' /></a>"
			+	"		<span>" + get_Yearinfo(intThisYear,intThisMonth,intThisDay) + "</span> 년 <span>" + get_Monthinfo(intThisYear,intThisMonth,intThisDay) + "</span> 월"
			+	"		<a href='#' onClick='Show_cal("+intNextYear+","+intNextMonth+",1);'>"
			+	"		<img src='/js/calendar/img/arr_cal_next.gif' alt='다음달' /></a>"
			+	"	</th>"
			+	"</tr>";
	
	for (var intLoopWeek=1; intLoopWeek < 7; intLoopWeek++) {      // 주단위 루프 시작, 최대 6주
		Cal_HTML += "<tr  class=mid>";
		for (var intLoopDay=1; intLoopDay <= 7; intLoopDay++) {       // 요일단위 루프 시작, 일요일 부터
			var clsStr = "";
	
			if (intThirdWeekday > 0) {           // 첫주 시작일이 1보다 크면
				Cal_HTML += "<td onClick='doClick();' ";
				if(intLoopDay == 1) {
		 	 		Cal_HTML += " class=sun";
		 	 	}
		 	 	Cal_HTML += ">&nbsp;";
		 	 	intThirdWeekday--;
			} else {
			    if (thirdPrintDay > intLastDay) {        // 입력 날짝 월말보다 크다면
		 	 		Cal_HTML += "<td onClick='doClick();' ";
		 	 		if(intLoopDay == 7) {
		 	 			Cal_HTML += " class=sat";
		 	 		}
		 	 		Cal_HTML += ">&nbsp;";
			    } else {              // 입력날짜가 현재월에 해당 되면
	     			Cal_HTML += "<td onClick='doClick(\"" + intThisYear+"-"+day2(intThisMonth).toString()+"-"+day2(thirdPrintDay).toString()+ "\");' ";
	     			Cal_HTML += " title="+intThisYear+"-"+day2(intThisMonth).toString()+"-"+day2(thirdPrintDay).toString()+" style=cursor:hand; ";
					//if (intThisYear == NowThisYear && intThisMonth==NowThisMonth && thirdPrintDay==intThisDay) {
					if (thirdPrintDay==intThisDay) {
						clsStr = "today ";
					}
	     			switch(intLoopDay) {
						case 1:             // 일요일이면 빨간 색으로
							clsStr += "sun";
							break;
						case 7:
							clsStr += "sat";
							break;
	      				default:
	       					break;
	     			}
	
	     			if(clsStr != "") {
	     				clsStr += " class='" + clsStr + "' ";
	     			}
	
	    			//Cal_HTML += clsStr + "><a href='#'>"+thirdPrintDay + "</a>";
	     			Cal_HTML += clsStr + ">"+thirdPrintDay;
	    		}
			    thirdPrintDay++;
	
			    if (thirdPrintDay > intLastDay) {        // 만약 날짜 값이 월말 값보다 크면 루프문 탈출
	     			Stop_Flag = 1;
	    		}
		   	}
	   		Cal_HTML += "</td>";
	  	}//end for
	  	Cal_HTML += "</tr>";
	  	if (Stop_Flag==1) break;
	}//end for
	
	Cal_HTML += "<tr class=bot><td colspan=7></td></tr></table>";
	document.all.minical.innerHTML = Cal_HTML;
}



/**
 *  기간 ~ 기간 조회 가능한 달력 스크립트 추가
 */
function Show_cal_period(nowday,fromday,today) {
	 //sYear , sMonth, sDay
	if(nowday < fromday) nowday = fromday;
	if(nowday > today) nowday = today;
	
	var Months_day = new Array(0,31,28,31,30,31,30,31,31,30,31,30,31);
	var Weekday_name = new Array("Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat");
	var intThisYear = new Number(), intThisMonth = new Number(), intThisDay = new Number();
	var intFromYear = new Number(), intFromMonth = new Number(), intFromDay = new Number();
	var intToYear = new Number(), intToMonth = new Number(), intToDay = new Number();
	document.all.minical.innerHTML = "";
	datToday = new Date();             // 현재 날자 설정
	
	intThisYear = parseInt(nowday.substring(0,4),10);
	intThisMonth = parseInt(nowday.substring(4,6),10);
	intThisDay = parseInt(nowday.substring(6,8),10);
	
	intFromYear = parseInt(fromday.substring(0,4),10);
	intFromMonth = parseInt(fromday.substring(4,6),10);
	intFromDay = parseInt(fromday.substring(6,8),10);
	
	intToYear = parseInt(today.substring(0,4),10);
	intToMonth = parseInt(today.substring(4,6),10);
	intToDay = parseInt(today.substring(6,8),10);
	
	 //해줘야 하나???
	if (intThisYear == 0) intThisYear = datToday.getFullYear();    // 값이 없을 경우
	if (intThisMonth == 0) intThisMonth = parseInt(datToday.getMonth())+1; // 월 값은 실제값 보다 -1 한 값이 돼돌려 진다.
	if (intThisDay == 0) intThisDay = datToday.getDate();

	switch(intThisMonth) {
		case 1:
			intPrevYear = intThisYear -1;
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

	NowThisYear = datToday.getFullYear();          // 현재 년
	NowThisMonth = datToday.getMonth()+1;          // 현재 월
	NowThisDay = datToday.getDate();               // 현재 일
	
	datFirstDay = new Date(intThisYear, intThisMonth-1, 1);      // 현재 달의 1일로 날자 객체 생성(월은 0부터 11까지의 정수(1월부터 12월))
	intFirstWeekday = datFirstDay.getDay();        // 현재 달 1일의 요일을 구함 (0:일요일, 1:월요일)
	
	intSecondWeekday = intFirstWeekday;
	intThirdWeekday = intFirstWeekday;
	
	datThisDay = new Date(intThisYear, intThisMonth, intThisDay);    // 넘어온 값의 날자 생성
	intThisWeekday = datThisDay.getDay();              // 넘어온 날자의 주 요일
	
	varThisWeekday = Weekday_name[intThisWeekday];     // 현재 요일 저장
	
	intPrintDay = 1;                // 달의 시작 일자
	secondPrintDay = 1;
	thirdPrintDay = 1;
	
	Stop_Flag = 0;

	if ((intThisYear % 4)==0) {             // 4년마다 1번이면 (사로나누어 떨어지면)
		if ((intThisYear % 100) == 0) {
			if ((intThisYear % 400) == 0) {
				Months_day[2] = 29;
			}
		} else {
			Months_day[2] = 29;
		}
	}
	intLastDay = Months_day[intThisMonth];          // 마지막 일자 구함
	Stop_flag = 0;
	//alert(""+intPrevYear+(intPrevMonth > 10 ? intPrevMonth:"0"+intPrevMonth)+"01");
	//alert(""+intNextYear+(intNextMonth > 10 ? intNextMonth:"0"+intNextMonth)+"01");
	 /*
	 Cal_HTML = "<TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0 ONMOUSEOVER=doOver(); ONMOUSEOUT=doOut(); STYLE='font-size:8pt;font-family:Tahoma;'>"
	   + "<TR ALIGN=CENTER height='25' valign='center'><TD COLSPAN=7 nowrap=nowrap ALIGN=CENTER><SPAN TITLE='이전달' STYLE=cursor:hand; onClick='Show_cal_period(\""+intPrevYear+(intPrevMonth > 10 ? intPrevMonth:"0"+intPrevMonth)+"01"+"\",\""+fromday+"\",\""+today+"\");'><!--img src='/ngmWeb/images/ukey/popup/icon_calerro01.gif' border='0' align='absmiddle'-->◀</SPAN> "
	   + get_PeriodYearinfo(nowday,fromday,today)+"&nbsp;&nbsp;"+get_PeriodMonthinfo(nowday,fromday,today)+"&nbsp;<SPAN TITLE='다음달' STYLE=cursor:hand; onClick='Show_cal_period(\""+intNextYear+(intNextMonth >10 ? intNextMonth:"0"+intNextMonth)+"01"+"\",\""+fromday+"\",\""+today+"\");'><!--img src='/ngmWeb/images/ukey/popup/icon_calerro02.gif' border='0' align='absmiddle'-->▶</SPAN></TD></TR>"
	   + "<TR ALIGN=CENTER  BGCOLOR=WHITE height='25' ><TD>일</TD><TD>월</TD><TD>화</TD><TD>수</TD><TD>목</TD><TD>금</TD><TD>토</TD></TR>";
	 */
	
	Cal_HTML = "<table cellpadding='0' cellspacing='0' class='cal_tbl'>"
			+	"<colgroup><col width='15%'><col width='16%'><col width='13%'><col width='14%'><col width='12%'><col width='16%'><col width='17%'></colgroup>"
			+	"<tr class='top'>"
			+	"	<th colspan='7'>"
			+	"		<a href='#' onClick='Show_cal_period(\""+intPrevYear+(intPrevMonth > 10 ? intPrevMonth:"0"+intPrevMonth)+"01"+"\",\""+fromday+"\",\""+today+"\");'>"
			+	"		<img src='/js/calendar/img/arr_cal_before.gif' alt='이전달' /></a>"
			+	"		<span>" + get_PeriodYearinfo(nowday,fromday,today) + "</span> 년 <span>" + get_PeriodMonthinfo(nowday,fromday,today) + "</span> 월"
			+	"		<a href='#' onClick='Show_cal_period(\""+intNextYear+(intNextMonth >10 ? intNextMonth:"0"+intNextMonth)+"01"+"\",\""+fromday+"\",\""+today+"\");'>"
			+	"		<img src='/js/calendar/img/arr_cal_next.gif' alt='다음달' /></a>"
			+	"	</th>"
			+	"</tr>";
	
	for (var intLoopWeek=1; intLoopWeek < 7; intLoopWeek++) {      // 주단위 루프 시작, 최대 6주
	 	Cal_HTML += "<tr  class=mid>";
		for (var intLoopDay=1; intLoopDay <= 7; intLoopDay++) {       // 요일단위 루프 시작, 일요일 부터
			var clsStr = "";
	   		if (intThirdWeekday > 0) {           // 첫주 시작일이 1보다 크면
				Cal_HTML += "<td onClick='doClick();' ";
				if(intLoopDay == 1) {
		 	 		Cal_HTML += " class=sun";
		 	 	}
		 	 	Cal_HTML += ">";
		 	 	intThirdWeekday--;
			} else {
			    if (thirdPrintDay > intLastDay) {        // 입력 날짜가 월말보다 크다면
		 	 		Cal_HTML += "<td onClick='doClick();' ";
		 	 		if(intLoopDay == 7) {
		 	 			Cal_HTML += " class=sat";
		 	 		}
		 	 		Cal_HTML += ">";
			    } else {              // 입력날짜가 현재월에 해당 되면
			    	//지정된 날짜보다 크거나 작은경우 링크를 주지 않는다.
	     			if((intThisYear == intFromYear && intThisMonth == intFromMonth && intFromDay > thirdPrintDay) ||
	     					(intThisYear == intToYear && intThisMonth == intToMonth && intToDay < thirdPrintDay)) {
		     			Cal_HTML += "<td title="+intThisYear+"-"+day2(intThisMonth).toString()+"-"+day2(thirdPrintDay).toString()+"text-decoration:none";
					}else{
						Cal_HTML += "<td onClick='doClick(\"" + intThisYear+"-"+day2(intThisMonth).toString()+"-"+day2(thirdPrintDay).toString()+ "\");' ";
		     			Cal_HTML += " title="+intThisYear+"-"+day2(intThisMonth).toString()+"-"+day2(thirdPrintDay).toString()+" style=cursor:Hand;text-decoration:underline ";
					}
	
					//if (intThisYear == NowThisYear && intThisMonth==NowThisMonth && thirdPrintDay==intThisDay) {
					if (thirdPrintDay==intThisDay) {
						clsStr = "today ";
					}
	     			switch(intLoopDay) {
						case 1:             // 일요일이면 빨간 색으로
							clsStr += "sun";
							break;
						case 7:
							clsStr += "sat";
							break;
	      				default:
	       					break;
	     			}
	
	     			if(clsStr != "") {
	     				clsStr += " class='" + clsStr + "' ";
	     			}
	
	    			Cal_HTML += clsStr + ">"+thirdPrintDay;
	    		}
			    thirdPrintDay++;
	
			    if (thirdPrintDay > intLastDay) {        // 만약 날짜 값이 월말 값보다 크면 루프문 탈출
	     			Stop_Flag = 1;
	    		}
		   	}
	   		Cal_HTML += "</td>";
	  	}//end for
	  	Cal_HTML += "</tr>";
	  	if (Stop_Flag==1) break;
	 }//end for

	 Cal_HTML += "<tr class=bot><td colspan=7></td></tr></table>";
	 document.all.minical.innerHTML = Cal_HTML;
}

function get_Yearinfo(year,month,day) {           // 년 정보를 콤보 박스로 표시
	var min = parseInt(year) - 4;
	var max = parseInt(year) + 4;
	var i = new Number();
	var str = new String();
	
	str = "<select onChange='Show_cal(this.value,"+month+","+day+");' onmouseover=doOver(); style='font-size:8pt;behavior: url('');'>";//
	for (i=min; i<=max; i++) {
		if (i == parseInt(year)) {
			str += "<option value="+i+" selected onmouseover=doOver();>"+i+"</option>";
		} else {
			str += "<option value="+i+" onmouseover=doOver();>"+i+"</option>";
		}
	}
	str += "</select>";
	return str;
}

function get_Monthinfo(year,month,day) {          // 월 정보를 콤보 박스로 표시
	var i = new Number();
	var str = new String();
	str = "<select onChange='Show_cal("+year+",this.value,"+day+");' onmouseover=doOver(); style='font-size:8pt;behavior: url('');'>";
	for (i=1; i<=12; i++) {
		if (i == parseInt(month)) {
			str += "<option value="+i+" selected onmouseover=doOver();>"+i+"</option>";
		} else {
			str += "<option value="+i+" onmouseover=doOver();>"+i+"</option>";
		}
	}
	str += "</select>";
	return str;
}

function get_PeriodYearinfo(nowday,fromday,today) {           // 년 정보를 콤보 박스로 표시
	if(nowday < fromday) nowday = fromday;
	if(nowday > today) nowday = today;
	
	var fromyear = fromday.substring(0,4);
	var toyear   = today.substring(0,4);
	var nowyear  = nowday.substring(0,4);
	var nowmonth = nowday.substring(4,6);
	var nowdate  = nowday.substring(6,8);
	
	var i = new Number();
	var str = new String();
	
	str = "<select onChange='Show_cal_period(this.value+\""+(nowmonth+nowdate)+"\",\""+fromday+"\",\""+today+"\");' onmouseover=doOver(); style='font-size:8pt;behavior: url('');'>";
	for (i=fromyear; i<=toyear; i++) {
		if (i == parseInt(nowyear)) {
			str += "<option value="+i+" selected onmouseover=doOver();>"+i+"</option>";
		} else {
			str += "<option value="+i+" onmouseover=doOver();>"+i+"</option>";
		}
	}
	str += "</SELECT>";
	return str;
}


function get_PeriodMonthinfo(nowday,fromday,today) {          // 월 정보를 콤보 박스로 표시\
 if(nowday < fromday) {
 	alert("날짜의 범위를 벗어났습니다.");
 	return get_PeriodMonthinfo(fromday,fromday,today);
 }else if(nowday > today) {
 	alert("날짜의 범위를 벗어났습니다.");
 	return get_PeriodMonthinfo(today,fromday,today);
 }
 var i = new Number();
 var str = new String();

 var fromyear  = fromday.substring(0,4);
 var frommonth = fromday.substring(4,6);
 var toyear    = today.substring(0,4);
 var tomonth   = today.substring(4,6);
 var nowyear   = nowday.substring(0,4);
 var nowmonth  = nowday.substring(4,6);
 var nowdate   = nowday.substring(6,8);

 //if((nowday == fromday || nowday == today)) {
 //str = "<SELECT onChange='Show_cal_period(\""+nowday+"\",\""+fromday+"\",\""+today+"\");' ONMOUSEOVER=doOver(); style='font-size:8pt;behavior: url('');'>";
 //}else{
	str = "<select onChange='Show_cal_period(\""+nowyear+"\"+(this.value >= 10 ? this.value : \"0\"+this.value )+\""+nowdate+"\",\""+fromday+"\",\""+today+"\");' onmouseover=doOver(); style='font-size:8pt;behavior: url('');'>";
 //}

 var startMonth=1;
 var endMonth =12;
 //현재 선택된 연도가 시작날짜의 연도일경우
 if(fromyear == nowyear) {
 	startMonth = parseInt(frommonth,10);
 	if(nowyear == toyear && parseInt(tomonth,10) < 12) endMonth = parseInt(tomonth,10);
 //현재 선택된 연도가 종료날짜의 연도일경우
 }else if(toyear == nowyear) {
 	endMonth = parseInt(tomonth,10);
 	if(nowyear == fromyear && parseInt(tomonth,10) > 1) startMonth = parseInt(tomonth,10);
 }

 for (i=startMonth; i<=endMonth; i++) {
  if (i == parseInt(nowmonth,10)) {
   str += "<option value="+i+" selected onmouseover=doOver();>"+i+"</option>";
  } else {
   str += "<option value="+i+" onmouseover=doOver();>"+i+"</option>";
  }
 }
 str += "</select>";
 return str;
}

// Object 우선순위 문제로 div 가려지는 현상 debug를 위한 추가 소스

function openShim(menu,menuItem){
    if (menu==null) return;
    var shim = getShim(menu);
    if (shim==null) shim = createMenuShim(menu,getShimId(menu));
            
    //Change menu zIndex so shim can work with it
    menu.style.zIndex = 100;

    var width = menu.offsetWidth;
    var height;

    var height = menu.offsetHeight;

    shim.style.width = width;
    shim.style.height = height;
    shim.style.top = menu.style.top;
    shim.style.left = menu.style.left;
    shim.style.zIndex = menu.style.zIndex - 1;
    shim.style.position = "absolute";
    shim.style.display = "block";
}

//Closes the shim associated with the menu
function closeShim(menu){
    if (menu==null) return;
    var shim = getShim(menu);
    if (shim!=null) shim.style.display = "none";
}

//Creates a new shim for the menu
function createMenuShim(menu){
    if (menu==null) return null;

    // IE9 Fix
    var shim = document.createElement("iframe");
    shim.setAttribute("frameborder", "0");
    shim.setAttribute("scrolling", "no");
    shim.setAttribute("style", "'position:absolute; top:0px; left:0px; display:none");
    
    shim.name = getShimId(menu);
    shim.id = getShimId(menu);
    //Unremark this line if you need your menus to be transparent for some reason
   // shim.style.filter="progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0)";

    if (menu.offsetParent==null || menu.offsetParent.id==""){
        window.document.body.appendChild(shim);
    }else{
        menu.offsetParent.appendChild(shim);
    }

    return shim;
}

//Creates an id for the shim based on the menu id
function getShimId(menu){
    if (menu.id==null) return "__shim";
    return "__shim"+menu.id;
}

//Returns the shim for a specific menu
function getShim(menu){
    return document.getElementById(getShimId(menu));
}

function getMenuItemCount(menu){
    var count = 0;
    var child = menu.firstChild;

    while (child){
        if (child.nodeName=="DIV") count = count + 1;
        child = child.nextSibling;
    }
    return count;
}

//달력
function Calendar(obj, xtarget) {            // jucke
	var now = obj.value.split("-");
	var x, y;

	target = obj;                      // Object 저장;
	x = (document.layers) ? loc.pageX : event.clientX + 35;
	y = (document.layers) ? loc.pageY : event.clientY + document.body.scrollTop;

	var fromday = eval("document.all."+obj.name+"fromday");
	var today   = eval("document.all."+obj.name+"today");
	if(fromday != undefined) {
		var fromday = eval("document.all."+obj.name+"fromday").value;
		var today = eval("document.all."+obj.name+"today").value;
	}

	var xData = 50;
	
	if(xtarget != undefined) {
		xData = new Number(xtarget);
	}
	
	minical.style.pixelTop = y+5;
	minical.style.pixelLeft = x - xData;
	
	if(minical.style.display == "block") { minical.style.display ="none";closeShim(minical); }else{ minical.style.display ="block";openShim(minical,null);}
	
	//fromday, today가 존재하면 기간 조회 달력임.
	if(fromday != undefined && today != undefined){
	var nowday = "";
	if(now.length == 3) {
		nowday = now[0] + now[1] + now[2];
	}else{
		now = new Date();
		nowday = ""+now.getFullYear() + (now.getMonth()+1 > 10 ? now.getMonth()+1:"0"+(now.getMonth()+1)) + (now.getDate() > 10 ? now.getDate():"0"+now.getDate());
		//nowday = ""+now.getFullYear() + (now.getMonth()+1) + now.getDate();
	}
		Show_cal_period(nowday,fromday,today);
	}else if (now.length == 3) {             // 정확한지 검사
		Show_cal(now[0],now[1],now[2]);   // 넘어온 값을 년월일로 분리
	} else {
		now = new Date();
		Show_cal(now.getFullYear(), now.getMonth()+1, now.getDate());   // 현재 년/월/일을 설정하여 넘김.
	}
	
	openShim(minical,null);
	Calendar.addEvent(document, "mousedown", closeCal);
}