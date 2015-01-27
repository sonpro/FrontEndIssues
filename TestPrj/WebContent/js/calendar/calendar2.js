 /*
 - �˾�â���� ī���ٸ� �� ��� �̿�Ǵ� javascript�̴�.
 - �������� �״�� �̿��Ѵ�.
 */

var target;                        // ȣ���� Object�� ����

/**
 * �޷� ����
 * <br> ex : sp_calendar('aform.cal1')
 * @param : ���ϰ��� �� input�� name
 */
function openCalendar2(name, offsetX, offsetY){
	var targetDate = eval(name);
	var tDateValue = targetDate.value;

	if(typeof offsetX=="undefined") offsetX = "0";
	if(typeof offsetY=="undefined") offsetY = "0";
	Calendar_ntr2(targetDate, offsetX, offsetY);
}

function Calendar_ntr2(obj, offsetX, offsetY) {            // jucke
	var now = obj.value.split("-");
	var x, y;
	
	target = obj;                      // Object ����;
	
	x = (document.layers) ? loc.pageX : event.clientX + 35 + Number(offsetX)*170;
	y = (document.layers) ? loc.pageY : event.clientY + document.documentElement.scrollTop;
	
	minical2.style.pixelTop = y+5;
	minical2.style.pixelLeft = x-50;
	
	if (now.length == 3) {             // ��Ȯ���� �˻�
		Show_cal2(now[0],now[1],now[2]);   // �Ѿ�� ���� ����Ϸ� �и�
	} else {
		now = new Date();
		Show_cal2(now.getFullYear(), now.getMonth()+1, now.getDate());   // ���� ��/��/���� �����Ͽ� �ѱ�.
	}

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
		if (el.id == "minical2") break;
	}
	if (el == null) {
		minical2.style.display ="none";
		Calendar.removeEvent(document, "mousedown", closeCal);
	}
}

function doOver() {                 // ���콺�� Į�������� ������
	var el = window.event.srcElement;
	cal_Day = el.title;

	if (cal_Day.length > 7) {          // ���� ���� ������.
		el.style.borderTopColor = el.style.borderLeftColor = "buttonhighlight";
		el.style.borderRightColor = el.style.borderBottomColor = "buttonshadow";
	}
 //window.clearTimeout(stime);      // Clear
}

function doClick(date) {                // ���ڸ� �����Ͽ��� ���
	gridPageReset();
	//alert(date);
	cal_Day = date;//window.event.srcElement.title;
	//window.event.srcElement.style.borderColor = "red";       // �׵θ� ���� ����������
	if (cal_Day != null && cal_Day.length > 7) {          // ���� ����������
		target.value=cal_Day;              // �� ����
		if ( target.name == "BUY_DATE_A" || target.name == "BUY_DATE_B" || target.name == "BUY_DATE_C" || target.name == "BUY_DATE_D" ) {
			var mmddObj = eval("document.all."+target.name+"_MMDD");
			mmddObj.value = cal_Day.substring(5,7)+cal_Day.substring(8,10);
		}
		// ���� ���ý� select�� ���� �Ҵ��Ŵ
		var date = new Date();
		var today = date.getYear() + (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : ''+(date.getMonth()+1)) +
						(date.getDate() < 10 ? '0'+date.getDate() : ''+date.getDate());
		var tagetObj = eval("document.all."+target.name);
		//���糯¥������ �����Ҽ� �ִ� makeDateSelectBoxToday�� �޺��ڽ��� �����ÿ��� tagetArryDate�� �����Ѵ�.
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

				//���� ��,�� �� ���õǱ� ���� ����� ����.
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
				//fromday, today ����.
				var fromday = eval("document.all."+target.name+"fromday.value");
				var today = eval("document.all."+target.name+"today.value");

				var yyObjMinValue = fromday.substring(0,4);
				var mmObjMinValue = fromday.substring(4,6);
				var ddObjMinValue = fromday.substring(6,8);

				var yyObjMaxValue = today.substring(0,4);
				var mmObjMaxValue = today.substring(4,6);
				var ddObjMaxValue = today.substring(6,8);
				var pickDay = now[0]+now[1]+now[2];
				//�⵵ �� => �� �� => �� ��
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
	minical2.style.display='none';      // ȭ�鿡�� ����
}

function doOut() {
	var el = window.event.fromElement;
	cal_Day = el.title;
	
	if (cal_Day.length > 7) {
		el.style.borderColor = "white";
	}
 //stime=window.setTimeout("minical.style.display='none';", 200);
}

function day2(d) {                  // 2�ڸ� ���ڷ� ����
var str = new String();

	if (parseInt(d) < 10) {
		str = "0" + parseInt(d);
	} else {
		str = "" + parseInt(d);
	}
	return str;
}

function Show_cal2(sYear, sMonth, sDay) {
	var Months_day = new Array(0,31,28,31,30,31,30,31,31,30,31,30,31);
	var Weekday_name = new Array("Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat");
	var intThisYear = new Number(), intThisMonth = new Number(), intThisDay = new Number();
	
	document.all.minical2.innerHTML = "";
	datToday = new Date();             // ���� ���� ����

	intThisYear = parseInt(sYear,10);
	intThisMonth = parseInt(sMonth,10);
	intThisDay = parseInt(sDay,10);

	if (intThisYear == 0) intThisYear = datToday.getFullYear();    // ���� ���� ���
	if (intThisMonth == 0) intThisMonth = parseInt(datToday.getMonth())+1; // �� ���� ������ ���� -1 �� ���� �ŵ��� ����.
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

	NowThisYear = datToday.getFullYear();          // ���� ��
	NowThisMonth = datToday.getMonth()+1;          // ���� ��
	NowThisDay = datToday.getDate();               // ���� ��

	datFirstDay = new Date(intThisYear, intThisMonth-1, 1);      // ���� ���� 1�Ϸ� ���� ��ü ����(���� 0���� 11������ ����(1������ 12��))
	intFirstWeekday = datFirstDay.getDay();        // ���� �� 1���� ������ ���� (0:�Ͽ���, 1:������)
	
	intSecondWeekday = intFirstWeekday;
	intThirdWeekday = intFirstWeekday;
	
	datThisDay = new Date(intThisYear, intThisMonth, intThisDay);    // �Ѿ�� ���� ���� ����
	intThisWeekday = datThisDay.getDay();              // �Ѿ�� ������ �� ����
	
	varThisWeekday = Weekday_name[intThisWeekday];     // ���� ���� ����
	
	intPrintDay = 1;                // ���� ���� ����
	secondPrintDay = 1;
	thirdPrintDay = 1;

	Stop_Flag = 0;

	if ((intThisYear % 4)==0) {             // 4�⸶�� 1���̸� (��γ����� ��������)
		if ((intThisYear % 100) == 0) {
			if ((intThisYear % 400) == 0) {
				Months_day[2] = 29;
			}
		} else {
			Months_day[2] = 29;
		}
	}
	intLastDay = Months_day[intThisMonth];          // ������ ���� ����
	Stop_flag = 0;

	 /*Cal_HTML = "<TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0 ONMOUSEOVER=doOver(); ONMOUSEOUT=doOut(); STYLE='font-size:8pt;font-family:Tahoma;'>"
	   + "<TR ALIGN=CENTER height='25' valign='center'><TD COLSPAN=7 nowrap=nowrap ALIGN=CENTER><SPAN TITLE='������' STYLE=cursor:hand; onClick='Show_cal("+intPrevYear+","+intPrevMonth+",1);'><!--img src='/ngmWeb/images/ukey/popup/icon_calerro01.gif' border='0' align='absmiddle'-->��</SPAN> "
	   + get_Yearinfo(intThisYear,intThisMonth,intThisDay)+"&nbsp;&nbsp;"+get_Monthinfo(intThisYear,intThisMonth,intThisDay)+"&nbsp;<SPAN TITLE='������' STYLE=cursor:hand; onClick='Show_cal("+intNextYear+","+intNextMonth+",1);'><!--img src='/ngmWeb/images/ukey/popup/icon_calerro02.gif' border='0' align='absmiddle'-->��</SPAN></TD></TR>"
	   + "<TR ALIGN=CENTER  BGCOLOR=WHITE height='25' ><TD>��</TD><TD>��</TD><TD>ȭ</TD><TD>��</TD><TD>��</TD><TD>��</TD><TD>��</TD></TR>";
	 */
     	

	 Cal_HTML = "<iframe id='iframeCal' style='position:absolute;z-index:-1;width:100%;height:100%;top:0;left:0;margin:0;padding:0;scrolling:no;' frameborder='0'></iframe>"
		    +   "<div style=\"z-index:210001;\">"
		    +   "<table cellpadding='0' cellspacing='0' class='cal_tbl'>"
			+	"<colgroup><col width='15%'><col width='16%'><col width='13%'><col width='14%'><col width='12%'><col width='16%'><col width='17%'></colgroup>"
			+	"<tr class='top'>"
			+	"	<th colspan='7'>"
			+	"		<a href='#' onclick='Show_cal2("+intPrevYear+","+intPrevMonth+",1);'>"
			+	"		<img src='/js/calendar/img/arr_cal_before.gif' alt='������' /></a>"
			+	"		<span>" + get_Yearinfo(intThisYear,intThisMonth,intThisDay) + "</span> �� <span>" + get_Monthinfo(intThisYear,intThisMonth,intThisDay) + "</span> ��"
			+	"		<a href='#' onclick='Show_cal2("+intNextYear+","+intNextMonth+",1);'>"
			+	"		<img src='/js/calendar/img/arr_cal_next.gif' alt='������' /></a>"
			+	"	</th>"
			+	"</tr>";
	
	for (var intLoopWeek=1; intLoopWeek < 7; intLoopWeek++) {      // �ִ��� ���� ����, �ִ� 6��
		Cal_HTML += "<tr  class=mid>";
		for (var intLoopDay=1; intLoopDay <= 7; intLoopDay++) {       // ���ϴ��� ���� ����, �Ͽ��� ����
			var clsStr = "";
	
			if (intThirdWeekday > 0) {           // ù�� �������� 1���� ũ��
				Cal_HTML += "<td onclick='doClick();' ";
				if(intLoopDay == 1) {
		 	 		Cal_HTML += " class=sun";
		 	 	}
		 	 	Cal_HTML += ">&nbsp;";
		 	 	intThirdWeekday--;
			} else {
			    if (thirdPrintDay > intLastDay) {        // �Է� ��¦ �������� ũ�ٸ�
		 	 		Cal_HTML += "<td onclick='doClick();' ";
		 	 		if(intLoopDay == 7) {
		 	 			Cal_HTML += " class=sat";
		 	 		}
		 	 		Cal_HTML += ">&nbsp;";
			    } else {              // �Է³�¥�� ������� �ش� �Ǹ�
	     			Cal_HTML += "<td onclick='doClick(\"" + intThisYear+"-"+day2(intThisMonth).toString()+"-"+day2(thirdPrintDay).toString()+ "\");' ";
	     			Cal_HTML += " title="+intThisYear+"-"+day2(intThisMonth).toString()+"-"+day2(thirdPrintDay).toString()+" style=cursor:hand; ";
					//if (intThisYear == NowThisYear && intThisMonth==NowThisMonth && thirdPrintDay==intThisDay) {
					if (thirdPrintDay==intThisDay) {
						clsStr = "today ";
					}
	     			switch(intLoopDay) {
						case 1:             // �Ͽ����̸� ���� ������
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
	
			    if (thirdPrintDay > intLastDay) {        // ���� ��¥ ���� ���� ������ ũ�� ������ Ż��
	     			Stop_Flag = 1;
	    		}
		   	}
	   		Cal_HTML += "</td>";
	  	}//end for
	  	Cal_HTML += "</tr>";
	  	if (Stop_Flag==1) break;
	}//end for
	
	Cal_HTML += "<tr class=bot><td colspan=7></td></tr></table></div>";
	document.all.minical2.innerHTML = Cal_HTML;
	
	$("#minical2").show();
	//$("#iframeCal").css("width","300");
	//$("#iframeCal").css("height","300");
}


function get_Yearinfo(year,month,day) {           // �� ������ �޺� �ڽ��� ǥ��
	var min = parseInt(year) - 4;
	var max = parseInt(year) + 4;
	var i = new Number();
	var str = new String();
	
	str = "<select onChange='Show_cal2(this.value,"+month+","+day+");' onmouseover=doOver(); style='font-size:8pt;behavior: url('');'>";//
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

function get_Monthinfo(year,month,day) {          // �� ������ �޺� �ڽ��� ǥ��
	var i = new Number();
	var str = new String();
	str = "<select onChange='Show_cal2("+year+",this.value,"+day+");' onmouseover=doOver(); style='font-size:8pt;behavior: url('');'>";
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

function get_PeriodYearinfo(nowday,fromday,today) {           // �� ������ �޺� �ڽ��� ǥ��
	if(nowday < fromday) nowday = fromday;
	if(nowday > today) nowday = today;
	
	var fromyear = fromday.substring(0,4);
	var toyear   = today.substring(0,4);
	var nowyear  = nowday.substring(0,4);
	var nowmonth = nowday.substring(4,6);
	var nowdate  = nowday.substring(6,8);
	
	var i = new Number();
	var str = new String();
	
	str = "<select onchange='Show_cal_period(this.value+\""+(nowmonth+nowdate)+"\",\""+fromday+"\",\""+today+"\");' onmouseover=doOver(); style='font-size:8pt;behavior: url('');'>";
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


function get_PeriodMonthinfo(nowday,fromday,today) {          // �� ������ �޺� �ڽ��� ǥ��\
 if(nowday < fromday) {
 	alert("��¥�� ������ ������ϴ�.");
 	return get_PeriodMonthinfo(fromday,fromday,today);
 }else if(nowday > today) {
 	alert("��¥�� ������ ������ϴ�.");
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
 //���� ���õ� ������ ���۳�¥�� �����ϰ��
 if(fromyear == nowyear) {
 	startMonth = parseInt(frommonth,10);
 	if(nowyear == toyear && parseInt(tomonth,10) < 12) endMonth = parseInt(tomonth,10);
 //���� ���õ� ������ ���ᳯ¥�� �����ϰ��
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

function getMenuItemCount(menu){
    var count = 0;
    var child = menu.firstChild;

    while (child){
        if (child.nodeName=="DIV") count = count + 1;
        child = child.nextSibling;
    }
    return count;
}
