/**
*	콤마설정.
*/
function putComma(input) {
	var num = input;

	if (num < 0) {
		num *= -1;
		var minus = true
	}else{
		var minus = false
	}

	var dotPos = (num+"").split(".")
	var dotU = dotPos[0]
	var dotD = dotPos[1]
	var commaFlag = dotU.length%3

	if(commaFlag) {
		var out = dotU.substring(0, commaFlag)
		if (dotU.length > 3) out += ","
	}
	else var out = ""

	for (var i=commaFlag; i < dotU.length; i+=3) {
		out += dotU.substring(i, i+3)
		if( i < dotU.length-3) out += ","
	}

	if(minus) out = "-" + out
	if(dotD) return out + "." + dotD
	else return out
}

/**
 * 전화번호 형식으로 바꾸기
 * 예)     02282342232 -> 02-8234-2232
 *         0312437845    -> 031-124-7845
 *         01071050616    -> 010-7105-0616
 * @param num
 * @return
 */
function phoneNumberFormat(num){
    return num.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
}

/**
 * 사업자번호 형식으로 바꾸기
 * 예)     1234567890 -> 123-45-67890
 * @param num
 * @return
 */
function corpNumberFormat(num){
    return num.replace(/([0-9]{3})([0-9]{2})([0-9]{5})/,"$1-$2-$3");
}


 


// Convert special characters to HTML entities  
// 
// version: 1006.1915
// discuss at: http://phpjs.org/functions/htmlspecialchars    // +   original by: Mirek Slugen
// +   improved by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
// +   bugfixed by: Nathan
// +   bugfixed by: Arno
// +    revised by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)    // +    bugfixed by: Brett Zamir (http://brett-zamir.me)
// +      input by: Ratheous
// +      input by: Mailfaker (http://www.weedem.fr/)
// +      reimplemented by: Brett Zamir (http://brett-zamir.me)
// +      input by: felix    // +    bugfixed by: Brett Zamir (http://brett-zamir.me)
// %        note 1: charset argument not supported
// *     example 1: htmlspecialchars("<a href='test'>Test</a>", 'ENT_QUOTES');
// *     returns 1: '&lt;a href=&#039;test&#039;&gt;Test&lt;/a&gt;'
// *     example 2: htmlspecialchars("ab\"c'd", ['ENT_NOQUOTES', 'ENT_QUOTES']);    // *     returns 2: 'ab"c&#039;d'
// *     example 3: htmlspecialchars("my "&entity;" is still here", null, null, false);
// *     returns 3: 'my &quot;&entity;&quot; is still here'
function htmlspecialchars (string, quote_style, charset, double_encode) {
    var optTemp = 0, i = 0, noquotes= false;
    if (typeof quote_style === 'undefined' || quote_style === null) {        quote_style = 2;
    }
    string = string.toString();
    if (double_encode !== false) { // Put this first to avoid double-encoding
        string = string.replace(/&/g, '&amp;');    }
    string = string.replace(/</g, '&lt;').replace(/>/g, '&gt;');
 
    var OPTS = {
        'ENT_NOQUOTES': 0,        'ENT_HTML_QUOTE_SINGLE' : 1,
        'ENT_HTML_QUOTE_DOUBLE' : 2,
        'ENT_COMPAT': 2,
        'ENT_QUOTES': 3,
        'ENT_IGNORE' : 4    };
    if (quote_style === 0) {
        noquotes = true;
    }
    if (typeof quote_style !== 'number') { // Allow for a single string or an array of string flags        quote_style = [].concat(quote_style);
        for (i=0; i < quote_style.length; i++) {
            // Resolve string input to bitwise e.g. 'PATHINFO_EXTENSION' becomes 4
            if (OPTS[quote_style[i]] === 0) {
                noquotes = true;            }
            else if (OPTS[quote_style[i]]) {
                optTemp = optTemp | OPTS[quote_style[i]];
            }
        }        quote_style = optTemp;
    }
    if (quote_style & OPTS.ENT_HTML_QUOTE_SINGLE) {
        string = string.replace(/'/g, '&#039;');
    }    if (!noquotes) {
        string = string.replace(/"/g, '&quot;');
    }
 
    return string;
}