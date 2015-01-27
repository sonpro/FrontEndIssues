var _jex = function() {
	this.version = 0.1;
	this.type = "jex";
	this.locale = "ko";
	this.ajaxSetup = {
		dataType : "text",
		beforeSend : function() {
		},
		complete : function() {
		},
		async : true,
		cache : true,
		error : function() {
		}
	};
	this.ajaxBeforeSend = [];
	this.ajaxComplete = [];
	this.ajaxExt = ".jct";
	this.debuggerId = "jexDebugger";
	this.debug = true;
	this.errorHandler = [];
	this.debugHeader = [ {
		id : "type",
		style : "width:30px"
	}, {
		id : "code",
		style : "width:50px"
	}, {
		id : "msg",
		style : "width:200px"
	}, {
		id : "detail",
		style : "width:250px"
	}, {
		id : "time",
		style : "50px"
	} ];
	this.debuggerObj;
	this.msgObj;
	this.cache = {};
	this.pageLoader = [];
	this.msgFn = function(code) {
		return code;
	};
	this.isJSONExp = /(^{[^}]+})|^\[[^\]]+\]/;
};
_jex.instance = new _jex();
_jex.getInstance = function() {
	return _jex.instance;
};
_jex.prototype.createAjaxUtil = function(url, ext) {
	return new _jexAjaxUtil(url, (jex.isNull(ext)) ? this.ajaxExt : ext);
};
_jex.prototype.isNull = function(dat) {
	return dat == undefined || typeof (dat) == undefined || dat == null
			|| (typeof (dat) == "string" && $.trim(dat) == "");
};
_jex.prototype.null2Void = function(dat) {
	return _jex.getInstance().isNull(dat) ? "" : dat;
};
_jex.prototype.null2Str = function(dat, str) {
	return _jex.getInstance().isNull(dat) ? str : dat;
};
_jex.prototype.null2Array = function(dat) {
	return _jex.getInstance().isNull(dat) ? [] : dat;
};
_jex.prototype.isError = function(dat) {
	return dat['COMMON_HEAD']['ERROR'];
};
_jex.prototype.setAjaxExt = function(s) {
	this.ajaxExt = s;
};
_jex.prototype.addErrorHandler = function(type, fn) {
	this.errorHandler.push({
		"type" : type,
		"fn" : fn
	});
};
_jex.prototype.addErrorHandler = function(type, fn) {
	this.errorHandler.push({
		"type" : type,
		"fn" : fn
	});
};
_jex.prototype.setDebugger = function(obj) {
	this.debuggerObj = obj;
};
_jex.prototype.getDebugger = function() {
	return this.debuggerObj;
};
_jex.prototype.getDebuggerId = function() {
	return this.debuggerId;
};
_jex.prototype.getMicroTime = function() {
	return new Date().getTime();
};
_jex.prototype.printDebug = function(msg) {
	if (!jex.isNull(this.debuggerObj))
		this.debuggerObj.printDebug(msg);
	if (!jex.isNull(this.msgObj))
		this.msgObj.printDebug(msg);
};
_jex.prototype.printInfo = function(code, msg) {
	if (!jex.isNull(this.debuggerObj))
		this.debuggerObj.printInfo(code, msg);
	if (!jex.isNull(this.msgObj))
		this.msgObj.printInfo(code, msg);
};
_jex.prototype.printError = function(code, msg) {
	if (!jex.isNull(this.debuggerObj))
		this.debuggerObj.printError(code, msg);
	if (!jex.isNull(this.msgObj))
		this.msgObj.printError(code, msg);
};
_jex.prototype.confirm = function(code, msg) {
	return confirm(this.null2Void(code) + " "
			+ jex.null2Str(msg, (jex.isNull(code) ? "" : this.getMsg(code))));
};
_jex.prototype.isJSON = function(dat) {
	return this.isJSONExp.test(dat);
};
_jex.prototype.set = function(key, data) {
	this.cache[key] = data;
};
_jex.prototype.get = function(key) {
	return this.cache[key];
};
_jex.prototype.toStr = function(dat) {
	if (typeof (JSON.stringify) != "function")
		throw new JexSysException("json2.js�� inculde�� �Ǿ� ���� �ʽ��ϴ�.");
	return JSON.stringify(dat);
};
_jex.prototype.parse = function(dat) {
	if (dat == undefined || $.trim(dat) == "")
		return undefined;
	if (typeof (JSON.parse) != "function")
		throw new JexSysException("json2.js�� inculde�� �Ǿ� ���� �ʽ��ϴ�.");
	return JSON.parse(dat);
};
_jex.prototype.getMsg = function(dat) {
	return this.msgFn(dat);
};
_jex.prototype.setMsgFn = function(dat) {
	this.msgFn = dat;
};
_jex.prototype.lang = function() {
	return this.locale;
};
_jex.prototype.setLang = function(dat) {
	this.locale = dat;
};
_jex.prototype.hide = function(attr) {
	return $.each($("[" + attr + "]"), function() {
		$(this).hide();
	});
};
_jex.prototype.show = function(attr) {
	return $.each($("[" + attr + "]"), function() {
		$(this).show();
	});
};
_jex.prototype.getOpener = function() {
	return (opener == undefined) ? parent : opener;
};
_jex.prototype.isDebug = function() {
	return this.debug;
};
_jex.prototype.setMsgObj = function(obj) {
	this.msgObj = obj;
};
_jex.prototype.getMsgObj = function() {
	return this.msgObj;
};
_jex.prototype.getDocHeight = function() {
	var D = document;
	return Math.max(Math.max(D.body.scrollHeight,
			D.documentElement.scrollHeight), Math.max(D.body.offsetHeight,
			D.documentElement.offsetHeight), Math.max(D.body.clientHeight,
			D.documentElement.clientHeight));
};
_jex.prototype.addPageLoader = function(attr) {
	this.pageLoader.push(attr);
};
_jex_plugin = function() {
	this.plugIn = {};
};
_jex_plugin.prototype.add = function(key, obj) {
	this.plugIn[key] = obj;
};
_jex_plugin.prototype.get = function(key) {
	return this.plugIn[key];
};
_jex_plugin.prototype.newInstance = function(key, opt) {
	return new this.plugIn[key](opt);
};
_jex.prototype.plugin = new _jex_plugin();
_jex.prototype.makeTbl = function(dat, $t) {
	$t.find("table").remove();
	var $tbl = $("<table></table>");
	$.each(dat, function(i, v) {
		var $tr = $("<tr></tr>");
		$.each(v, function(i, v) {
			$td = $("<td></td>");
			$td.html(v);
			$td.appendTo($tr);
		});
		$tr.appendTo($tbl);
	});
	$tbl.appendTo($t);
	alert($t.html());
};
_jex.prototype.getQString = function() {
	var url = document.URL;
	var qst = url.split("?")[1];
	if (qst != undefined) {
		var rslt = {};
		var qar = qst.split("&");
		for ( var i = 0; i < qar.length; i++) {
			var rs = qar[i].split("=");
			rslt[decodeURIComponent(rs[0])] = decodeURIComponent(rs[1]);
		}
		return rslt;
	}
	return "";
};
_jex.prototype.getUrl = function() {
	return document.URL;
};
_jex.prototype.addAjaxBefore = function(fn) {
	this.ajaxBeforeSend.push(fn);
	jex.setAjaxBefore();
};
_jex.prototype.setAjaxBefore = function() {
	var _this = this;
	fn = function(xhr) {
		$.each(_this.ajaxBeforeSend, function(i, v) {
			v(xhr);
		});
	};
	this.ajaxSetup['beforeSend'] = fn;
	jQuery.ajaxSetup(this.ajaxSetup);
};
_jex.prototype.addAjaxComplete = function(fn) {
	this.ajaxComplete.push(fn);
	jex.setAjaxComplete();
};
_jex.prototype.setAjaxComplete = function() {
	var _this = this;
	fn = function(xhr) {
		$.each(_this.ajaxComplete, function(i, v) {
			v(xhr);
		});
	};
	this.ajaxSetup['complete'] = fn;
	jQuery.ajaxSetup(this.ajaxSetup);
};
_jex.prototype.time = function() {
	return {
		getMicroTime : function(get_as_float) {
			var now = new Date().getTime() / 1000;
			var s = parseInt(now, 10);
			return get_as_float ? now : Math.round(((now - s) * 1000) / 1000)
					+ ' ' + s;
		}
	};
};
_jex.prototype.date = function() {
	var mongthLen = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];
	var baseDt = {
		year : 0000,
		mon : 1,
		week : 5
	};
	function getToday() {
		var _date = new Date();
		var d = _date.getDate();
		var day = (d < 10) ? '0' + d : d;
		var m = _date.getMonth() + 1;
		var month = (m < 10) ? '0' + m : m;
		var yy = _date.getYear();
		var year = (yy < 1000) ? yy + 1900 : yy;
		var hh0 = _date.getHours();
		var hh = (hh0 < 10) ? '0' + hh0 : hh0;
		var mi0 = _date.getMinutes();
		var mi = (mi0 < 10) ? '0' + mi0 : mi0;
		var ss0 = _date.getSeconds();
		var ss = (ss0 < 10) ? '0' + ss0 : ss0;
		var ms0 = _date.getMilliseconds();
		var ms = (ms0 < 10) ? '000' + ms0 : (ms0 < 100) ? '00' + ms0
				: (ms0 < 100) ? '0' + ms0 : ms0;
		return year + "" + month + "" + day + "" + hh + "" + mi + "" + ss + ""
				+ ms;
	}
	;
	function getDate(a, b) {
		var date;
		var pattern;
		if (a == undefined) {
			date = getToday();
			pattern = 'yyyymmdd';
		} else if (b == undefined) {
			date = getToday();
			pattern = a;
		} else {
			date = a;
			pattern = b;
		}
		var yyyy, mm, dd, hh, mi, ss, ms;
		if (date.length < 8) {
			return "�߸��� �Է�";
		}
		yyyy = date.substr(0, 4);
		mm = date.substr(4, 2);
		dd = date.substr(6, 2);
		if (date.length >= 14) {
			try {
				hh = date.substr(8, 2);
				mi = date.substr(10, 2);
				ss = date.substr(12, 2);
				ms = date.substr(14, 3);
			} catch (e) {
				hh = (jex.isNull(hh)) ? "" : hh;
				mi = (jex.isNull(mi)) ? "" : mi;
				ss = (jex.isNull(ss)) ? "" : ss;
				ms = (jex.isNull(ms)) ? "" : ms;
			}
		} else {
			hh = mi = ss = ms = "";
		}
		return pattern.replace(/yyyy/, yyyy).replace(/mm/, mm)
				.replace(/dd/, dd).replace(/hh/, hh).replace(/mi/, mi).replace(
						/ss/, ss).replace(/ms/, ms);
	}
	;
	function getDayBetween(fromDate, toDate) {
		return "���� �̱���";
	}
	;
	function getEndDate(yyyy, mm) {
		return "���� �̱���";
	}
	;
	return {
		getDate : getDate,
		getDayBetween : getDayBetween,
		getDayBetween : getDayBetween
	};
};
_jex.getInstance().addErrorHandler("default", function() {
	alert("Error!");
});
var jex = _jex.getInstance();

String.prototype.startsWith = function(str) {
	return (this.match("^" + str) == str);
};
String.prototype.endsWith = function(str) {
	return (this.match(str + "$") == str);
};
String.prototype.isJSON = function(str) {
	return jex.isJSON(str);
};
Array.prototype.remove = function(from, to) {
	var rest = this.slice((to || from) + 1 || this.length);
	this.length = from < 0 ? this.length + from : from;
	return this.push.apply(this, rest);
};
(function($) {
	$.fn.setTagValue = function(dat) {
		var tag = $(this).get(0).tagName;
		var type = $(this).attr("type");
		switch (tag.toLowerCase()) {
		case "textarea":
		case "input":
			if (type == "radio" || type == "checkbox"
					&& !_jex.getInstance().isNull(dat))
				$(this).attr("checked", true);
			else
				$(this).val(dat);
			break;
		case "select":
			$(this).val(dat);
			break;
		case "img":
			if (!_jex.getInstance().isNull(dat))
				$(this).attr("src", dat);
			else if (_jex.getInstance().isNull($(this).attr("src")))
				$(this).remove();
			break;
		default:
			$(this).html(dat);
			break;
		}
		;
	};
	$.fn.getTagValue = function() {
		var tag = $(this).get(0).tagName;
		var type = $(this).attr("type");
		var rslt = "";
		switch (tag.toLowerCase()) {
		case "input":
			if (type == "radio" || type == "checkbox")
				rslt = $(this).attr("checked");
			else
				rslt = $(this).val();
			break;
		case "select":
		case "textarea":
			rslt = $(this).val();
			break;
		case "img":
			rslt = $(this).attr("src");
			break;
		default:
			rslt = $(this).html();
			break;
		}
		;
		return rslt;
	};
	$.fn.setAll = function(dat, formatter) {
		formatter = (jex.isNull(formatter)) ? {} : formatter;
		$.each($(this).find("[id]"), function() {
			var o = $(this).attr("id");
			if (jex.isNull(o))
				return true;
			var d = dat[o];
			var f = formatter[o];
			if (!jex.isNull(f) && typeof (f) == "function")
				d = f(d, dat);
			if (d != undefined)
				$(this).setTagValue(d);
		});
		return this;
	};
	$.fn.getAll = function(formatter) {
		var rslt = {};
		formatter = (jex.isNull(formatter)) ? {} : formatter;
		$.each($(this).find("[id]"), function() {
			var o = $(this).attr("id");
			if (jex.isNull(o))
				return true;
			var f = formatter[o];
			var d = $(this).getTagValue();
			d = (typeof (f) == "function") ? f(d) : d;
			if (jex.isNull(d))
				return true;
			rslt[o] = d;
		});
		return rslt;
	};
	$.fn.JexSimpleTblHandler = function(cmd, opt) {
		$r = $(this);
		function addRow(dat) {
			var $tr = $("<tr></tr>");
			$.each(dat, function(i, v) {
				$td = $("<td>" + v + "</td>");
				$td.appendTo($tr);
			});
			$r.find("tbody");
		}
		function make(opt) {
			$r.JexSimpleTblHandler('makeTblHeader', opt);
		}
		function addRows(dat) {
			$.each(dat, function(i, v) {
				$r.JexSimpleTblHandler('addRow', v);
			});
		}
		function rowDef(opt) {
			$r.data("rowDef", opt);
		}
		function delRow(idx) {
			$r.find("tbody").find("tr:eq(" + idx + ")").remove();
		}
		function makeTblHeader(dat) {
			var $tr = $("<tr></tr>");
			$.each(dat, function(i, v) {
				$td = $("<td>" + v + "</td>");
				$td.appendTo($tr);
			});
			$r.find("thead");
		}
		switch (cmd) {
		case make:
			return make(opt);
		case addRows:
			return addRows(opt);
		case addRow:
			return addRow(opt);
		case rowDef:
			return rowDef(opt);
		case delRow:
			return delRow(opt);
		}
	};
})(jQuery);
var _jexAjaxUtil = function(svc, ext) {
	this.svcId = (svc != undefined) ? svc : "";
	this.ext = ext;
	this.async = true;
	this.errorTrx = true;
	this.error = false;
	this.errFn = function(XMLHttpRequest, textStatus, errorThrown) {
		alert("CODE" + "Error!! :: " + textStatus + "::" + XMLHttpRequest);
	};
	this.cache = true;
	this.fn = function() {
	};
	this.input = {};
};
_jexAjaxUtil.prototype.setSvc = function(s) {
	this.svcId = s;
};
_jexAjaxUtil.prototype.setExt = function(s) {
	this.ext = s;
};
_jexAjaxUtil.prototype.setAsync = function(b) {
	this.async = b;
};
_jexAjaxUtil.prototype.setErr = function(b) {
	this.error = b;
};
_jexAjaxUtil.prototype.setErrFn = function(f) {
	this.errFn = f;
};
_jexAjaxUtil.prototype.setFn = function(f) {
	this.fn = f;
};
_jexAjaxUtil.prototype.setCache = function(b) {
	this.cache = b;
};
_jexAjaxUtil.prototype.get = function(key) {
	if (key == undefined)
		return this.input;
	else
		return this.input[key];
};
_jexAjaxUtil.prototype.set = function(key, value) {
	var rthis = this;
	if (jex.isNull(key))
		return;
	if (jex.isNull(value)) {
		if (typeof (key) != "string") {
			$.each(key, function(i, v) {
				rthis.input[i] = v;
			});
		}
	}
	this.input[key] = value;
};
_jexAjaxUtil.prototype.execute = function(fn) {
	var str_time = jex.getMicroTime();
	if (typeof (fn) == "function")
		this.fn = fn;
	var tranData = {
		"_JSON_" : encodeURIComponent(JSON.stringify(this.input))
	};
	var _this = this;
	var rslt;
//	jex.getDebugger().addMsg({
//		"TYPE" : "AJAX",
//		"CODE" : "INPUT",
//		"MSG" : "AJAXó������ [" + this.svcId + "]"
//	});
	jQuery.ajax({
		type : "POST",
		url : "/" + _this.svcId + this.ext,
		data : tranData,
		cache : _this.cache,
		async : _this.async,
		error : _this.errFn,
		success : function(msg) {
			var input = msg;
			if (typeof (msg) == "string")
				input = JSON.parse(msg);
			else
				input = msg;
			var p_time = jex.getMicroTime() - str_time;
//			jex.getDebugger().addMsg({
//				"TYPE" : "AJAX",
//				"CODE" : "OUTPUT",
//				"MSG" : "AJAXó���Ϸ� [" + _this.svcId + "]",
//				"PTM" : p_time + "ms"
//			});
			if (!_this.errorTrx || !jex.isError(input))
				_this.fn(input);
			else
				jex.printError("CODE", "ERROR!!");
			if (!_this.async)
				rslt = input;
		}
	});
	return rslt;
};
(function() {
	var initializing = false, fnTest = /xyz/.test(function() {
		xyz;
	}) ? /\b_super\b/ : /.*/;
	this.Class = function() {
	};
	Class.extend = function(prop) {
		var _super = this.prototype;
		initializing = true;
		var prototype = new this();
		initializing = false;
		for ( var name in prop) {
			prototype[name] = typeof prop[name] == "function"
					&& typeof _super[name] == "function"
					&& fnTest.test(prop[name]) ? (function(name, fn) {
				return function() {
					var tmp = this._super;
					this._super = _super[name];
					var ret = fn.apply(this, arguments);
					this._super = tmp;
					return ret;
				};
			})(name, prop[name]) : prop[name];
		}
		function Class() {
			if (!initializing && this.init)
				this.init.apply(this, arguments);
		}
		Class.prototype = prototype;
		Class.constructor = Class;
		Class.extend = arguments.callee;
		return Class;
	};
})();
var JexPlugin = Class.extend({
	init : function() {
	}
});
var JexDebugger = Class.extend({
	init : function() {
	},
	printDebug : function(msg) {
	},
	printInfo : function(code, msg) {
	},
	printError : function(code, msg) {
	}
});
var JexMsg = Class.extend({
	init : function() {
	},
	printInfo : function(code, msg) {
	},
	printError : function(code, msg) {
	},
	alert : function(code, msg) {
	},
	confirm : function(code, msg, callback) {
	}
});
var Exception = Class.extend({
	init : function(code, msg) {
		this.prototype = Error;
		this.name = "JexException";
		alert("code : " + code + " :: " + msg);
		try {
			throw new Error("");
		} catch (e) {
			alert("Exception :: stack + " + e.stack);
		}
		alert(Error);
	},
	printStackTrace : function() {
		alert("stack track");
	},
	getMessage : function() {
		alert("get Message");
	}
});
var JexWebException = Exception.extend({
	init : function(code, msg) {
		this._super(code, msg);
	},
	printStackTrace : function() {
		this._super();
	},
	getMessage : function() {
		this._super();
	}
});
var JexSysException = Exception.extend({
	init : function(code, msg) {
		alert("22");
		this._super(code, msg);
	},
	printStackTrace : function() {
		this._super();
	},
	getMessage : function() {
		this._super();
	}
});