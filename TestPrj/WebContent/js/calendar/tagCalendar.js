 function makeDateSelectBoxTodayAfter(now,year,month,date,target,yearCnt,defaultValue,frm){
	if(yearCnt == undefined) yearCnt = 4;
	var nYear = now.substring(0,4);
	var sYear = parseInt(nYear,10);
	var sMonth = now.substring(4,6);
	var sDate  = now.substring(6,8);
	var eYear = parseInt(nYear,10)+ yearCnt;
	var nMonth = now.substring(4,6);
	var nDate = now.substr(6);
	//defaultValue�� ������� �ʱⰪ���� �ش簪�� �����Ѵ�.
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
	document.write("��");
	document.write(makeSelectBoxString(month,"onChangeLeapDateTodayAfter("+(frm+year)+","+(frm+month)+","+(frm+date)+","+target+","+"'"+now+"'"+")","sl_ss",sMonth,12,nMonth));
	document.write("��");
	document.write(makeSelectBoxString(date,"onChangeDate("+(frm+year)+","+(frm+month)+","+(frm+date)+","+target+")","sl_ss",1,sDate,nDate));
	document.write("��");

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
		 //���� ���ĳ����� �̵��� �ش���� ���� ��� �� ���� ������ ���� ����.
		if((month.options[0].value <= rmDate(target.value).substring(4,6)) && (month.options[month.options.length-1].value >= rmDate(target.value).substring(4,6)) ) {
			month.value = rmDate(target.value).substring(4,6);
		}else{
			month.options[month.options.length-1].selected = true;
		}
	}else{
		//���� �����⿡ �ش� ���� ������ ù ���� ����.
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
		//���� ���Ĵ޷� �̵��� �ش����� ���� ��� �� ���� ������ �Ϸ� ����.
		if((date.options[0].value <= rmDate(target.value).substring(6,8)) &&
				(date.options[date.options.length-1].value >= rmDate(target.value).substring(6,8))) {
			date.value =  rmDate(target.value).substring(6,8);
		}else{
			date.options[date.options.length-1].selected = true;
		}
	}else{
		//���� �����޿� �ش� ���� ������ ù ��¥�� ����.
		if((date.options[0].value <= rmDate(target.value).substring(6,8)) &&
				(date.options[date.options.length-1].value >= rmDate(target.value).substring(6,8)) &&
					today <= year.value + month.value + date.value) {
			date.value =  rmDate(target.value).substring(6,8);
		}else{
			var monthLastDay = findLeapEndDate(rmDate(target.value).substring(0,4),rmDate(target.value).substring(4,6));
			//�������� �����̰�  �����Ϻ��� ���ð��� ū ����  ���Ϸ� ����(������ ���) �׿ܴ�  ù ������ ������.
			if(monthLastDay == rmDate(target.value).substring(6,8) && today.substring(0,6) < year.value + month.value){
				date.options[date.options.length-1].selected = true;
			}else{
				date.options[0].selected = true;
			}
		}
	}


	//htc ���� ���� ������ select�ڽ��� �ٽ� �׸��� ���� �߰��Ѱ�(2008/05/16)
	year.reInitializeSelectBox();
	month.reInitializeSelectBox();
	if(date.length != undefined) date.reInitializeSelectBox();
	onChangeDate(year,month,date,target);
}

/**
 * �޷� ����
 * <br> ex : sp_calendar('aform.cal1')
 * @param : ���ϰ��� �� input�� name
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
	
	target = obj;                      // Object ����;
	
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
	
	//fromday, today�� �����ϸ� �Ⱓ ��ȸ �޷���.
	if(fromday != undefined && today != undefined){
		var nowday = "";
		if(now.length == 3) {
			nowday = now[0] + now[1] + now[2];
		}else{
			now = new Date();
			nowday = ""+now.getFullYear() + (now.getMonth()+1) + now.getDate();
		}
		Show_cal_period_ntr(nowday,fromday,today);
	}else if (now.length == 3) {             // ��Ȯ���� �˻�
		Show_cal(now[0],now[1],now[2]);   // �Ѿ�� ���� ����Ϸ� �и�
	} else {
		now = new Date();
		Show_cal(now.getFullYear(), now.getMonth()+1, now.getDate());   // ���� ��/��/���� �����Ͽ� �ѱ�.
	}

	openShim(minical,null);
	Calendar.addEvent(document, "mousedown", closeCal);
}
/**
 * �޷� ����
 * <br> ex : sp_calendar('aform.cal1')
 * @param : ���ϰ��� �� input�� name
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
	
	target = obj;                      // Object ����;
	
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
	
	//fromday, today�� �����ϸ� �Ⱓ ��ȸ �޷���.
	if(fromday != undefined && today != undefined){
		var nowday = "";
		if(now.length == 3) {
			nowday = now[0] + now[1] + now[2];
		}else{
			now = new Date();
			nowday = ""+now.getFullYear() + (now.getMonth()+1) + now.getDate();
		}
		Show_cal_period_ntr(nowday,fromday,today);
	}else if (now.length == 3) {             // ��Ȯ���� �˻�
		Show_cal(now[0],now[1],now[2]);   // �Ѿ�� ���� ����Ϸ� �и�
	} else {
		now = new Date();
		Show_cal(now.getFullYear(), now.getMonth()+1, now.getDate());   // ���� ��/��/���� �����Ͽ� �ѱ�.
	}

	openShim(minical,null);
	Calendar.addEvent(document, "mousedown", closeCal);
}

// �޷� Ŀ���͸���¡
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
	datToday = new Date(); // ���� ���� ����

	intThisYear = parseInt(nowday.substring(0, 4), 10);
	intThisMonth = parseInt(nowday.substring(4, 6), 10);
	intThisDay = parseInt(nowday.substring(6, 8), 10);

	intFromYear = parseInt(fromday.substring(0, 4), 10);
	intFromMonth = parseInt(fromday.substring(4, 6), 10);
	intFromDay = parseInt(fromday.substring(6, 8), 10);

	intToYear = parseInt(today.substring(0, 4), 10);
	intToMonth = parseInt(today.substring(4, 6), 10);
	intToDay = parseInt(today.substring(6, 8), 10);

	// ����� �ϳ�???
	if (intThisYear == 0)
		intThisYear = datToday.getFullYear(); // ���� ���� ���
	if (intThisMonth == 0)
		intThisMonth = parseInt(datToday.getMonth()) + 1; // �� ���� ������ ���� -1 ��
															// ���� �ŵ��� ����.
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

	NowThisYear = datToday.getFullYear(); // ���� ��
	NowThisMonth = datToday.getMonth() + 1; // ���� ��
	NowThisDay = datToday.getDate(); // ���� ��

	datFirstDay = new Date(intThisYear, intThisMonth - 1, 1); // ���� ���� 1�Ϸ� ����
																// ��ü ����(���� 0����
																// 11������ ����(1������
																// 12��))
	intFirstWeekday = datFirstDay.getDay(); // ���� �� 1���� ������ ���� (0:�Ͽ���, 1:������)

	intSecondWeekday = intFirstWeekday;
	intThirdWeekday = intFirstWeekday;

	datThisDay = new Date(intThisYear, intThisMonth, intThisDay); // �Ѿ�� ���� ����
																	// ����
	intThisWeekday = datThisDay.getDay(); // �Ѿ�� ������ �� ����

	varThisWeekday = Weekday_name[intThisWeekday]; // ���� ���� ����

	intPrintDay = 1; // ���� ���� ����
	secondPrintDay = 1;
	thirdPrintDay = 1;

	Stop_Flag = 0;

	if ((intThisYear % 4) == 0) { // 4�⸶�� 1���̸� (��γ����� ��������)
		if ((intThisYear % 100) == 0) {
			if ((intThisYear % 400) == 0) {
				Months_day[2] = 29;
			}
		} else {
			Months_day[2] = 29;
		}
	}
	intLastDay = Months_day[intThisMonth]; // ������ ���� ����
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
			+ "		<img src='/js/calendar/img/comm/button/arr_cal_before.gif' alt='������' /></a>"
			+ "		<span>"
			+ get_PeriodYearinfo_ntr(nowday, fromday, today)
			+ "</span> �� <span>"
			+ get_PeriodMonthinfo(nowday, fromday, today)
			+ "</span> ��"
			+ "		<a href='#' onClick='Show_cal_period_ntr(\""
			+ intNextYear
			+ (intNextMonth >= 10 ? intNextMonth : "0" + intNextMonth)
			+ "01"
			+ "\",\""
			+ fromday
			+ "\",\""
			+ today
			+ "\");'>"
			+ "		<img src='/js/calendar/img/comm/button/arr_cal_next.gif' alt='������' /></a>"
			+ "	</th>" + "</tr>";
	for (var intLoopWeek = 1; intLoopWeek < 7; intLoopWeek++) { // �ִ��� ���� ����, �ִ� 6��
		Cal_HTML += "<tr  class=mid>";
		for (var intLoopDay = 1; intLoopDay <= 7; intLoopDay++) { // ���ϴ��� ���� ����,
																// �Ͽ��� ����
			var clsStr = "";
			if (intThirdWeekday > 0) { // ù�� �������� 1���� ũ��
				Cal_HTML += "<td onClick='doClick_ntr();' ";
				if (intLoopDay == 1) {
					Cal_HTML += " class=sun";
				}
				Cal_HTML += ">";
				intThirdWeekday--;
			} else {
				if (thirdPrintDay > intLastDay) { // �Է� ��¥�� �������� ũ�ٸ�
					Cal_HTML += "<td onClick='doClick_ntr();' ";
					if (intLoopDay == 7) {
						Cal_HTML += " class=sat";
					}
					Cal_HTML += ">";
				} else { // �Է³�¥�� ������� �ش� �Ǹ�
					// ������ ��¥���� ũ�ų� ������� ��ũ�� ���� �ʴ´�.

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

				if (thirdPrintDay > intLastDay) { // ���� ��¥ ���� ���� ������ ũ�� ������ Ż��
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

// �޷� Ŀ���͸���¡ ����

// �޷� Ŀ���͸���¡2 ����
function doClick_ntr(date) { // ���ڸ� �����Ͽ��� ���
	cal_Day = date;// window.event.srcElement.title;
	if (cal_Day != null && cal_Day.length > 7) { // ���� ����������
		target.value = cal_Day; // �� ����
		// ���� ���ý� select�� ���� �Ҵ��Ŵ

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
	minical.style.display = 'none'; // ȭ�鿡�� ����
	closeShim(minical);
}

// �޷� Ŀ���͸���¡2 ����

function get_PeriodYearinfo_ntr(nowday, fromday, today) { // �� ������ �޺� �ڽ��� ǥ��
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

function get_PeriodMonthinfo(nowday, fromday, today) { // �� ������ �޺� �ڽ��� ǥ��\
	if (nowday < fromday) {
		alert("��¥�� ������ ������ϴ�.");
		return get_PeriodMonthinfo(fromday, fromday, today);
	} else if (nowday > today) {
		alert("��¥�� ������ ������ϴ�.");
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
	// ���� ���õ� ������ ���۳�¥�� �����ϰ��
	if (fromyear == nowyear) {
		startMonth = parseInt(frommonth, 10);
		if (nowyear == toyear && parseInt(tomonth, 10) < 12)
			endMonth = parseInt(tomonth, 10);
		// ���� ���õ� ������ ���ᳯ¥�� �����ϰ��
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