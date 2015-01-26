package kr.go.rcms.web.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.StringTokenizer;

public class ComboUtil {
	/* select 박스 초기에 표시할 텍스트 옵션 */
	public static final int OPT_NONE = 0;
	public static final int OPT_ALL = 1;
	public static final int OPT_SEL = 2;

	public static final boolean isNameT = true;
	public static final boolean isNameF = false;

	/**
	 * 콤보 박스 함수 <br>
	 * 해당 그룹에 속해 있는 key, code 정보로 콤보를 만들어 반환한다.
	 * 소분류명을 사용하는 경우
	 *
	 * @param strGrpCode  등록된 대분류 코드
	 * @param strName	select 이름
	 * @param strClass	class or script
	 * @param strSelected	선택되게 표시할 값
	 * @param opt_state 첫번째 옵션값
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getComboBox(String strGrpCode, String strName, String strClass, String strStyleEvt,  String strSelected, int opt_state){
		return getComboBox(strGrpCode, strName, strClass, strStyleEvt, strSelected, opt_state, ComboUtil.isNameT);
	}

	/**
	 * 콤보 박스 함수 <br>
	 * 해당 그룹에 속해 있는 key, code 정보로 콤보를 만들어 반환한다.
	 * 소분류명을 사용하는 경우
	 *
	 * @param strGrpCode  등록된 대분류 코드
	 * @param strName	select 이름
	 * @param strClass	class or script
	 * @param strSelected	선택되게 표시할 값
	 * @param opt_state 첫번째 옵션값
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getComboBox(String strGrpCode, String strName, String strClass, String strStyleEvt,  String strSelected, int opt_state, String sort){
		return getComboBox(strGrpCode, strName, strClass, strStyleEvt, strSelected, opt_state, ComboUtil.isNameT, sort);
	}

	/**
	 * 콤보 박스 함수 <br>
	 * 해당 그룹에 속해 있는 key, code 정보로 콤보를 만들어 반환한다.
	 * 소분류 약어명을 사용하는 경우
	 *
	 * @param strGrpCode  등록된 대분류 코드
	 * @param strName	select 이름
	 * @param strClass	class or script
	 * @param strSelected	선택되게 표시할 값
	 * @param opt_state 첫번째 옵션값
	 * @param isName 소분류명사용여부
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getComboBox(String strGrpCode, String strName, String strClass, String strStyleEvt, String strSelected, int opt_state, boolean isName){
		return getComboBox(strGrpCode, strName, strClass, strStyleEvt, strSelected, opt_state, isName, "code");
	}

	/**
	 * 콤보 박스 함수 <br>
	 * 해당 그룹에 속해 있는 key, code 정보로 콤보를 만들어 반환한다.
	 * 소분류 약어명을 사용하는 경우
	 *
	 * @param strGrpCode  등록된 대분류 코드
	 * @param strName	select 이름
	 * @param strClass	class or script
	 * @param strSelected	선택되게 표시할 값
	 * @param opt_state 첫번째 옵션값
	 * @param isName 소분류명사용여부
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getComboBox(String strGrpCode, String strName, String strClass, String strStyleEvt, String strSelected, int opt_state, boolean isName, String sort){
		StringBuffer sbSelect = new StringBuffer();

		List<HashMap<String, String>> list = CodeUtil.getKeyCode(strGrpCode, sort, "ASC", isName);

		sbSelect.append("<select name='").append(strName).append("'  id='").append(strName).append("'  class='").append(strClass).append("' ").append(strStyleEvt).append(" >");
		if(opt_state == OPT_ALL) {
			sbSelect.append("<option value=''>").append(new String("전체")).append("</option>");
		}
		else if(opt_state == OPT_SEL) {
			sbSelect.append("<option value=''>").append(new String("선택")).append("</option>");
		}

		for (HashMap<String, String> map : list) {
			sbSelect.append("<option value='").append(map.get("key")).append("' ");
			if(strSelected.equals(map.get("key"))) sbSelect.append("selected");
			sbSelect.append(">").append(map.get("code")).append("</option>");
		}

		sbSelect.append("</select>");

		return sbSelect.toString();
	}

	/**
	 * 콤보 박스 함수 <br>
	 * 해당 그룹에 속해 있는 key, code 정보로 콤보를 만들어 반환한다.
	 * 소분류명을 사용하는 경우
	 *
	 * @param strGrpCode  등록된 대분류 코드
	 * @param strName	select 이름
	 * @param strId	select 아이디
	 * @param strClass	class or script
	 * @param strSelected	선택되게 표시할 값
	 * @param opt_state 첫번째 옵션값
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getComboBox2(String strGrpCode, String strName, String strId, String strClass, String strStyleEvt,  String strSelected, int opt_state, String sort){
		return getComboBox2(strGrpCode, strName, strId, strClass, strStyleEvt, strSelected, opt_state, ComboUtil.isNameT, sort);
	} 
	/**
	 * 콤보 박스 함수 <br>
	 * 해당 그룹에 속해 있는 key, code 정보로 콤보를 만들어 반환한다.
	 * 소분류명을 사용하는 경우
	 *
	 * @param strGrpCode  등록된 대분류 코드
	 * @param strName	select 이름
	 * @param strId	select 아이디
	 * @param strClass	class or script
	 * @param strSelected	선택되게 표시할 값
	 * @param opt_state 첫번째 옵션값
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getComboBox2(String strGrpCode, String strName, String strId, String strClass, String strStyleEvt,  String strSelected, int opt_state){
		return getComboBox2(strGrpCode, strName, strId, strClass, strStyleEvt, strSelected, opt_state, ComboUtil.isNameT);
	}

	/**
	 * 콤보 박스 함수 <br>
	 * 해당 그룹에 속해 있는 key, code 정보로 콤보를 만들어 반환한다.
	 * 소분류 약어명을 사용하는 경우
	 *
	 * @param strGrpCode  등록된 대분류 코드
	 * @param strName	select 이름
	 * @param strId	select 아이디
	 * @param strClass	class or script
	 * @param strSelected	선택되게 표시할 값
	 * @param opt_state 첫번째 옵션값
	 * @param isName 소분류명사용여부
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getComboBox2(String strGrpCode, String strName, String strId, String strClass, String strStyleEvt, String strSelected, int opt_state, boolean isName){
		return getComboBox2(strGrpCode, strName, strId, strClass, strStyleEvt, strSelected, opt_state, isName, "code");
	}	
	/**
	 * 콤보 박스 함수 <br>
	 * 해당 그룹에 속해 있는 key, code 정보로 콤보를 만들어 반환한다.
	 * 소분류 약어명을 사용하는 경우
	 *
	 * @param strGrpCode  등록된 대분류 코드
	 * @param strName	select 이름
	 * @param strId		select 아이디
	 * @param strClass	class or script
	 * @param strSelected	선택되게 표시할 값
	 * @param opt_state 첫번째 옵션값
	 * @param isName 소분류명사용여부
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getComboBox2(String strGrpCode, String strName, String strId, String strClass, String strStyleEvt, String strSelected, int opt_state, boolean isName, String sort){
		StringBuffer sbSelect = new StringBuffer();

		List<HashMap<String, String>> list = CodeUtil.getKeyCode(strGrpCode, sort, "ASC", isName);

		sbSelect.append("<select name='").append(strName).append("'  id='").append(strId).append("'  class='").append(strClass).append("' ").append(strStyleEvt).append(" >");
		if(opt_state == OPT_ALL) {
			sbSelect.append("<option value=''>").append(new String("전체")).append("</option>");
		}
		else if(opt_state == OPT_SEL) {
			sbSelect.append("<option value=''>").append(new String("선택")).append("</option>");
		}

		for (HashMap<String, String> map : list) {
			sbSelect.append("<option value='").append(map.get("key")).append("' ");
			if(strSelected.equals(map.get("key"))) sbSelect.append("selected");
			sbSelect.append(">").append(map.get("code")).append("</option>");
		}

		sbSelect.append("</select>");

		return sbSelect.toString();
	}
	
	/**
	 * 콤보 박스 함수 <br>
	 * HashMap으로 ComboBox를 만듦
	 *
	 * @param map			key, value 코드
	 * @param name			select 이름
	 * @param strStyleEvt	style and event
	 * @param strSelected	선택되게 표시할 값
	 * @param opt_state 첫번째 옵션값
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getMapComboBox(HashMap<String, String> map, String name, String strStyleEvt, String strSelected, int opt_state){
		return getMapComboBox(map, name, strStyleEvt, strSelected, opt_state, false);
	}

	public static String getMapComboBox(HashMap<String, String> map, String name, String strStyleEvt, String strSelected, int opt_state, boolean bKeySort){
		StringBuffer sbSelect = new StringBuffer();
		sbSelect.append("<select name=\""+name+"\"  "+ strStyleEvt+" >");

		if(opt_state == OPT_ALL) {
			sbSelect.append("<option value=\"\">").append(new String("전체")).append("</option>");
		}
		else if(opt_state == OPT_SEL) {
			sbSelect.append("<option value=\"\">").append(new String("선택")).append("</option>");
		}

		if(map!=null){
			Iterator<Map.Entry<String,String>> iter = mapSort(map, bKeySort);

			while ( iter.hasNext() )	{
				Map.Entry<String, String> entry = iter.next();
				sbSelect.append("<option value=\"").append(entry.getKey()).append("\" ");
				if(strSelected.equals(entry.getKey())) sbSelect.append("selected");
				sbSelect.append(">").append(entry.getValue()).append("</option>");
			}
		}
		sbSelect.append("</select>");

		return sbSelect.toString();
	}



	/**
	 * 콤보 박스 함수 <br>
	 * Hashtable ComboBox를 만듦
	 *
	 * @param map			key, value 코드
	 * @param name			select 이름
	 * @param strStyleEvt	style and event
	 * @param strSelected	선택되게 표시할 값
	 * @param opt_state 첫번째 옵션값
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getMapComboBox(Hashtable<String, String> map, String name, String strStyleEvt, String strSelected, int opt_state){
		StringBuffer sbSelect = new StringBuffer();
		sbSelect.append("<select name=\""+name+"\"  "+ strStyleEvt+" >");

		if(opt_state == OPT_ALL) {
			sbSelect.append("<option value=\"\">").append(new String("전체")).append("</option>");
		}
		else if(opt_state == OPT_SEL) {
			sbSelect.append("<option value=\"\">").append(new String("선택")).append("</option>");
		}

		if(map!=null){
			Iterator<Map.Entry<String,String>> iter = mapSort(map);

			while ( iter.hasNext() )	{
				Map.Entry<String, String> entry = iter.next();
				sbSelect.append("<option value=\"").append(entry.getKey()).append("\" ");
				if(strSelected.equals(entry.getKey())) sbSelect.append("selected");
				sbSelect.append(">").append(entry.getValue()).append("</option>");
			}
		}
		sbSelect.append("</select>");
		return sbSelect.toString();
	}

	/**
	 * 콤보/라디오 박스 함수 <br>
	 * Hashtable ComboBox를 만듦
	 *
	 * @param map			key, value 코드
	 * @param name			select 이름
	 * @param strStyleEvt	style and event
	 * @param strSelected	선택되게 표시할 값 구분자( ";" )
	 * @param opt_state 첫번째 옵션값
	 * @return 체크박스출력스트링 (java.lang.String)
	 */
	public static String getMapCheckBox(Hashtable<String, String> map, String name, String strStyleEvt, String strSelected, int opt_state){
		return getMapCheckBox(map, name, strStyleEvt, strSelected,opt_state, "checkbox");
	}

	/**
	 * 콤보/라디오 박스 함수 <br>
	 * Hashtable ComboBox를 만듦
	 *
	 * @param map			key, value 코드
	 * @param name			select 이름
	 * @param strStyleEvt	style and event
	 * @param strSelected	선택되게 표시할 값 구분자( ";" )
	 * @param opt_state 첫번째 옵션값
	 * @return 체크박스출력스트링 (java.lang.String)
	 */
	public static String getMapCheckBox(Hashtable<String, String> map, String name, String strStyleEvt, String strSelected, int opt_state, String type){
		return getMapCheckBox(map, name, strStyleEvt, strSelected,opt_state, type, false);
	}

	/**
	 * 콤보/라디오 박스 함수 <br>
	 * Hashtable ComboBox를 만듦
	 *
	 * @param map			key, value 코드
	 * @param name			select 이름
	 * @param strStyleEvt	style and event
	 * @param strSelected	선택되게 표시할 값 구분자( ";" )
	 * @param opt_state 첫번째 옵션값
	 * @return 체크박스출력스트링 (java.lang.String)
	 */
	public static String getMapCheckBox(Hashtable<String, String> map, String name, String strStyleEvt, String strSelected, int opt_state, String type, boolean bBr){
		StringBuffer sbSelect = new StringBuffer();

		if(opt_state == OPT_ALL) {
			sbSelect.append("<input type=\"").append(type).append("\" name=\"").append(name).append("\" ");
			sbSelect.append(" value=\"\" ").append(" onclick=\"if(this.checked) checkAll(this.name); else uncheckAll(this.name);\" /> 전체");
			if(bBr){
				sbSelect.append("<br />");
			}
		}

		if(map!=null){
			Iterator<Map.Entry<String,String>> iter = mapSort(map);

			while ( iter.hasNext() )	{
				Map.Entry<String, String> entry = iter.next();
				sbSelect.append("<input type=\"").append(type).append("\" name=\"").append(name).append("\" ");
				sbSelect.append(" value=\"").append(entry.getKey()).append("\" style=\"width:20px;\" ").append(strStyleEvt);

				StringTokenizer st = new StringTokenizer(strSelected,";");
				while(st.hasMoreTokens()){
					if( entry.getKey().equals(st.nextToken()) ){
						sbSelect.append(" checked=\"checked\" ");
					}
				}
				sbSelect.append(" /> "+entry.getValue());
				if(bBr){
					sbSelect.append("<br />");
				}else{
					sbSelect.append("&nbsp;");
				}
			}
		}
		return sbSelect.toString();
	}

	/**
	 * 콤보/라디오 박스 함수 <br>
	 * Hashtable ComboBox를 만듦
	 *
	 * @param map			key, value 코드
	 * @param name			select 이름
	 * @param strStyleEvt	style and event
	 * @param strSelected	선택되게 표시할 값 구분자( ";" )
	 * @param opt_state 첫번째 옵션값
	 * @return 체크박스출력스트링 (java.lang.String)
	 */
	public static String getMapCheckBox(HashMap<String, String> map, String name, String strStyleEvt, String strSelected, int opt_state){
		return getMapCheckBox(map, name, strStyleEvt, strSelected,opt_state, "checkbox");
	}

	/**
	 * 콤보/라디오 박스 함수 <br>
	 * Hashtable ComboBox를 만듦
	 *
	 * @param map			key, value 코드
	 * @param name			select 이름
	 * @param strStyleEvt	style and event
	 * @param strSelected	선택되게 표시할 값 구분자( ";" )
	 * @param opt_state 첫번째 옵션값
	 * @return 체크박스출력스트링 (java.lang.String)
	 */
	public static String getMapCheckBox(HashMap<String, String> map, String name, String strStyleEvt, String strSelected, int opt_state, String type){
		return getMapCheckBox(map, name, strStyleEvt, strSelected,opt_state, type, false);
	}

	/**
	 * 콤보/라디오 박스 함수 <br>
	 * Hashtable ComboBox를 만듦
	 *
	 * @param map			key, value 코드
	 * @param name			select 이름
	 * @param strStyleEvt	style and event
	 * @param strSelected	선택되게 표시할 값 구분자( ";" )
	 * @param opt_state 첫번째 옵션값
	 * @return 체크박스출력스트링 (java.lang.String)
	 */
	public static String getMapCheckBox(HashMap<String, String> map, String name, String strStyleEvt, String strSelected, int opt_state, String type, boolean bBr){
		StringBuffer sbSelect = new StringBuffer();

		if(opt_state == OPT_ALL) {
			sbSelect.append("<input type=\"").append(type).append("\" name=\"").append(name).append("\" ");
			sbSelect.append(" value=\"\" ").append(" onclick=\"if(this.checked) checkAll(this.name); else uncheckAll(this.name);\" /> 전체");
			if(bBr){
				sbSelect.append("<br />");
			}
		}

		if(map!=null){
			Iterator<Map.Entry<String,String>> iter = mapSort(map);

			while ( iter.hasNext() )	{
				Map.Entry<String, String> entry = iter.next();
				sbSelect.append("<input type=\"").append(type).append("\" name=\"").append(name).append("\" ");
				sbSelect.append(" value=\"").append(entry.getKey()).append("\"style=\"width:20px;\" ").append(strStyleEvt);

				StringTokenizer st = new StringTokenizer(strSelected,";");
				while(st.hasMoreTokens()){
					if( entry.getKey().equals(st.nextToken()) ){
						sbSelect.append(" checked=\"checked\" ");
					}
				}
				sbSelect.append(" /> "+entry.getValue());
				if(bBr){
					sbSelect.append("<br />");
				}else{
					sbSelect.append("&nbsp;");
				}
			}
		}
		return sbSelect.toString();
	}

	/**
	 * 비목 Chained Combo
	 *
	 * @param dtlsItxpMap		세목 key, value 코드
	 * @param subDtlsItxpMap	세세목 HashMap
	 * @param dtlsSelected		선택된 세목코드
	 * @param subDtlsSelected	선택된 세세목코드
	 * @param opt_state 첫번째 옵션값
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getItxpChainedCombo(Hashtable<String, String> dtlsItxpMap, Hashtable<String, Hashtable<String,String>> subDtlsItxpMap, String dtlsSelected, String subDtlsSelected, int opt_state){
		return getItxpChainedCombo(dtlsItxpMap, subDtlsItxpMap, dtlsSelected, subDtlsSelected, opt_state, false);
	}

	/**
	 * 비목 Chained Combo
	 *
	 * @param dtlsItxpMap		세목 key, value 코드
	 * @param subDtlsItxpMap	세세목 HashMap
	 * @param dtlsSelected		선택된 세목코드
	 * @param subDtlsSelected	선택된 세세목코드
	 * @param opt_state 첫번째 옵션값
	 * @param SpotDtlsItxp		현물여부(현물 Y)
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getItxpChainedCombo(Hashtable<String, String> dtlsItxpMap, Hashtable<String, Hashtable<String,String>> subDtlsItxpMap, String dtlsSelected, String subDtlsSelected, int opt_state, boolean bReadOnly){
		return getItxpChainedCombo(dtlsItxpMap, subDtlsItxpMap, dtlsSelected, subDtlsSelected, opt_state, bReadOnly, "");
	}

	/**
	 * 비목 Chained Combo
	 *
	 * @param dtlsItxpMap		세목 key, value 코드
	 * @param subDtlsItxpMap	세세목 HashMap
	 * @param dtlsSelected		선택된 세목코드
	 * @param subDtlsSelected	선택된 세세목코드
	 * @param opt_state 첫번째 옵션값
	 * @param SpotDtlsItxp		현물여부(현물 Y)
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getItxpChainedCombo(Hashtable<String, String> dtlsItxpMap, Hashtable<String, Hashtable<String,String>> subDtlsItxpMap, String dtlsSelected, String subDtlsSelected, int opt_state, boolean bReadOnly, String SpotDtlsItxp){
		StringBuffer sbSelect = new StringBuffer();
		String disabled = "";
		String evtNo = "";

		if(bReadOnly){
			disabled = "disabled";
		}

		if( "Y".equals(SpotDtlsItxp) ){
			evtNo = "1";
		}

		sbSelect.append("<select name=\"ReprDtlsItxpCd\" id=\"ReprDtlsItxpCd\" style=\"width:150px;\" ").append(disabled).append(" onchange=javascript:ReprDtlsItxpCdOnChange").append(evtNo).append("(this);  >");
		if(opt_state == OPT_ALL) {
			sbSelect.append("<option value=\"\">").append(new String("전체")).append("</option>");
		}
		else if(opt_state == OPT_SEL) {
			sbSelect.append("<option value=\"\">").append(new String("선택")).append("</option>");
		}

		try{
			if(dtlsItxpMap!=null){
				Iterator<Map.Entry<String,String>> iter = ComboUtil.mapSort(dtlsItxpMap);
				while ( iter.hasNext() )	{
					Map.Entry<String, String> entry = iter.next();
					sbSelect.append("<option value=\"").append(entry.getKey()).append("\" ");
					if(dtlsSelected.equals(entry.getKey())) sbSelect.append("selected");
					sbSelect.append(">").append(entry.getValue()).append("</option>");
				}
			}
		}catch(Exception e){}

		sbSelect.append("</select>");
		sbSelect.append("<select name=\"ReprSubDtlsItxpCd\" id=\"ReprSubDtlsItxpCd\" title=\"세세목선택\" style=\"width:150px;\" ").append(disabled).append(" >");
		if(opt_state == OPT_ALL) {
			sbSelect.append("<option value=\"\">").append(new String("전체")).append("</option>");
		}
		else if(opt_state == OPT_SEL) {
			sbSelect.append("<option value=\"\">").append(new String("선택")).append("</option>");
		}

		try{
			if( subDtlsItxpMap!=null && !"".equals(dtlsSelected) ){
				Iterator<Map.Entry<String,String>> iter2 =  ComboUtil.mapSort( subDtlsItxpMap.get(dtlsSelected) );

				while ( iter2.hasNext() ){
					Map.Entry<String, String> entry = iter2.next();
					sbSelect.append("<option value=\"").append(entry.getKey()).append("\" ");
					if(subDtlsSelected.equals(entry.getKey())) sbSelect.append("selected");
					sbSelect.append(">").append(entry.getValue()).append("</option>");
				}
			}
		}catch(Exception e){}

		sbSelect.append("</select>");

		return sbSelect.toString();
	}

	/**
	 * 모계좌 Chained Combo
	 *
	 * @param dtlsItxpMap		세목 key, value 코드
	 * @param subDtlsItxpMap	세세목 HashMap
	 * @param dtlsSelected		선택된 세목코드
	 * @param subDtlsSelected	선택된 세세목코드
	 * @param opt_state 첫번째 옵션값
	 * @param SpotDtlsItxp		현물여부(현물 Y)
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getChainedCombo(Hashtable<String, String> fCbMap, Hashtable<String, Hashtable<String,String>> sCbMap, String fName, String sName, String fStyle, String sStyle, String fSelected, String sSelected, int opt_state, boolean bReadOnly){
		StringBuffer sbScript = new StringBuffer();
		StringBuffer sbSelect = new StringBuffer();
		String disabled = "";
		String evtNo = "";

		sbScript.append("<script type=\"text/javascript\">");
		sbScript.append("var c").append(fName).append("Cd = new Array();").append("\n");
		sbScript.append("var c").append(fName).append("Nm = new Array();").append("\n");
		sbScript.append("var c").append(sName).append("Nm = new Array();").append("\n");
		sbScript.append("var c").append(sName).append("Cd = new Array();").append("\n");


		Iterator<Map.Entry<String,String>> iter = ComboUtil.mapSort(fCbMap);

		int idx = 0;
		while ( iter!=null && iter.hasNext() )	{
			Map.Entry<String, String> entry = iter.next();

			sbScript.append("c").append(fName).append("Cd["+idx+"] = \"").append(entry.getKey()).append("\";").append("\n");
			sbScript.append("c").append(fName).append("Nm["+idx+"] = \"").append(entry.getValue()).append("\";").append("\n");
			sbScript.append("c").append(sName).append("Cd["+idx+"] = new Array();").append("\n");
			sbScript.append("c").append(sName).append("Nm["+idx+"] = new Array();").append("\n");

			int cCnt = 0;
			Iterator<Map.Entry<String,String>> iter2 =  ComboUtil.mapSort( sCbMap.get(entry.getKey()) );
			while(  iter2!=null && iter2.hasNext() ){
				Map.Entry<String, String> entry2 = iter2.next();

				sbScript.append("c").append(sName).append("Cd["+idx+"]["+cCnt+"] = \""+entry2.getKey()+"\";").append("\n");
				sbScript.append("c").append(sName).append("Nm["+idx+"]["+cCnt+"] = \""+entry2.getValue()+"\";").append("\n");
				cCnt++;
			}

			idx++;
		}

		sbScript.append("function ").append(fName).append("OnChange(obj, opt_name){").append("\n");
		sbScript.append("	var tObj = document.all[\"").append(sName).append("\"];").append("\n");
		sbScript.append("	if(opt_name== null || opt_name==\"null\" || typeof opt_name==\"undefined\") opt_name = \"전체\";").append("\n");
		sbScript.append("	if(obj.selectedIndex !=0 ){").append("\n");
		sbScript.append("		tObj.options.length = c").append(sName).append("Cd[obj.selectedIndex-1].length+1;").append("\n");
		sbScript.append("		tObj.options[i] = new Option(opt_name, '');").append("\n");
		sbScript.append("		for(var i=0; i < c").append(sName).append("Cd[obj.selectedIndex-1].length; i++){").append("\n");
		sbScript.append("			tObj.options[i+1] = new Option(c").append(sName).append("Nm[obj.selectedIndex-1][i], c").append(sName).append("Cd[obj.selectedIndex-1][i]);").append("\n");
		sbScript.append("		}").append("\n");
		sbScript.append("	}else{").append("\n");
		sbScript.append("		tObj.options.length = 1; ").append("\n");
		sbScript.append("		tObj.options[0] = new Option(opt_name, ''); ").append("\n");
		sbScript.append("	}").append("\n");
		sbScript.append("}").append("\n");
		sbScript.append("</script>").append("\n");


		if(bReadOnly){
			disabled = "disabled";
		}

		String cbOptStat = "";
		if(opt_state == OPT_ALL) {
			cbOptStat = "전체";
		}else if(opt_state == OPT_SEL) {
			cbOptStat = "선택";
		}

		sbSelect.append("<select name=\"").append(fName).append("\" id=\"").append(fName).append("\" style=\"").append(fStyle).append("\" ").append(disabled).append(" onchange=\"").append(fName).append("OnChange").append(evtNo).append("(this, '").append(cbOptStat).append("')\">");
		if(opt_state == OPT_ALL) {
			sbSelect.append("<option value=\"\">").append(new String("전체")).append("</option>");
		}else if(opt_state == OPT_SEL) {
			sbSelect.append("<option value=\"\">").append(new String("선택")).append("</option>");
		}

		try{
			if(fCbMap!=null){
				//Iterator<Map.Entry<String,String>> iter = ComboUtil.mapSort(fCbMap);
				iter = ComboUtil.mapSort(fCbMap);

				while ( iter.hasNext() )	{
					Map.Entry<String, String> entry = iter.next();
					sbSelect.append("<option value=\"").append(entry.getKey()).append("\" ");
					if(fSelected.equals(entry.getKey())) sbSelect.append("selected");
					sbSelect.append(">").append(entry.getValue()).append("</option>");
				}
			}
		}catch(Exception e){}

		sbSelect.append("</select>&nbsp;");
		sbSelect.append("<select name=\"").append(sName).append("\" id=\"").append(sName).append("\" style=\"").append(sStyle).append("\" ").append(disabled).append(" >");
		if(opt_state == OPT_ALL) {
			sbSelect.append("<option value=\"\">").append(new String("전체")).append("</option>");
		}
		else if(opt_state == OPT_SEL) {
			sbSelect.append("<option value=\"\">").append(new String("선택")).append("</option>");
		}

		try{
			if( sCbMap!=null && !"".equals(fSelected) ){
				Iterator<Map.Entry<String,String>> iter2 =  ComboUtil.mapSort( sCbMap.get(fSelected) );

				while ( iter2.hasNext() ){
					Map.Entry<String, String> entry = iter2.next();
					sbSelect.append("<option value=\"").append(entry.getKey()).append("\" ");
					if(sSelected.equals(entry.getKey())) sbSelect.append("selected");
					sbSelect.append(">").append(entry.getValue()).append("</option>");
				}
			}
		}catch(Exception e){}

		sbSelect.append("</select>");

		//return sbSelect.toString();
		return sbScript.append(sbSelect.toString()).toString();
	}

	/**
	 * parent Chained Combo Array
	 *
	 * @param fCbMap  세목 key, value 코드
	 * @param sCBMap  세세목 HashMap
	 * @param fName	  세목 select Name
	 * @param sName   세세목 select Name
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getChainedComboArray(Hashtable<String, String> fCbMap, Hashtable<String, Hashtable<String,String>> sCbMap, String fName, String sName){
		StringBuffer sbScript = new StringBuffer();

		sbScript.append("<script type=\"text/javascript\">");

		Iterator<Map.Entry<String,String>> iter = ComboUtil.mapSort(fCbMap);

		int idx = 0;
		while ( iter!=null && iter.hasNext() )	{
			Map.Entry<String, String> entry = iter.next();

			sbScript.append("parent.").append(fName).append("Cd["+idx+"] = \"").append(entry.getKey()).append("\";").append("\n");
			sbScript.append("parent.").append(fName).append("Nm["+idx+"] = \"").append(entry.getValue()).append("\";").append("\n");
			sbScript.append("parent.").append(sName).append("Cd["+idx+"] = new Array();").append("\n");
			sbScript.append("parent.").append(sName).append("Nm["+idx+"] = new Array();").append("\n");

			int cCnt = 0;
			Iterator<Map.Entry<String,String>> iter2 =  ComboUtil.mapSort( sCbMap.get(entry.getKey()) );
			while(  iter2!=null && iter2.hasNext() ){
				Map.Entry<String, String> entry2 = iter2.next();

				sbScript.append("parent.").append(sName).append("Cd["+idx+"]["+cCnt+"] = \""+entry2.getKey()+"\";").append("\n");
				sbScript.append("parent.").append(sName).append("Nm["+idx+"]["+cCnt+"] = \""+entry2.getValue()+"\";").append("\n");
				cCnt++;
			}

			idx++;
		}

		sbScript.append("</script>");

		return sbScript.toString();
	}

	/**
	 * 금고모계좌조회 콤보박스
	 * @param fCbMap 금고모계좌 조회 HashMap
	 * @param UseYn Y:전체조회 N:선택조회
	 * @param sfbxAcctDv1 금고계좌구분코드
	 * @param sfbxAcctDv2 금고계좌구분코드
	 * @param rcmsAcctYn RCMS모계좌 Y:전체조회 N:선택조회
	 * @param
	 * @param
	 * @param
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getSfbxBnkMomAcctNo(ArrayList<HashMap<String, String>> fCbMap, String UseYn, String sfbxAcctDv1 ,String sfbxAcctDv2 ,String rcmsAcctYn,String SelYn) {
		
		StringBuffer sb = new StringBuffer();
		
		ArrayList<HashMap<String, String>> arList1 = fCbMap;
		
		sb.append("<select id='sfbxBnkAcctNo' name='sfbxBnkAcctNo'>");
		
		if("Y".equals(SelYn)){
			sb.append("<option value=''>선택</option>");
		}else{
			sb.append("<option value=''>전체</option>");			
		}
		
		for(int i = 0; i < arList1.size(); i++){
			
			HashMap<String, String> tmp = arList1.get(i);

			if("Y".equals(rcmsAcctYn)){
				
				if("Y".equals(UseYn)){
					
					if(tmp.get("SFBX_ACCT_DV").equals(sfbxAcctDv1)|| tmp.get("SFBX_ACCT_DV").equals(sfbxAcctDv2) || "C01005".equals(tmp.get("SFBX_ACCT_DV"))){
						
						sb.append(getSfbxBnkAcct(tmp));
						
					}
				}else{

					sb.append(getSfbxBnkAcct(tmp));
					
				}
			}else{
				
				if("Y".equals(UseYn)){
					
					if(tmp.get("SFBX_ACCT_DV").equals(sfbxAcctDv1)|| tmp.get("SFBX_ACCT_DV").equals(sfbxAcctDv2)){
						
						sb.append(getSfbxBnkAcct(tmp));
					}
				}else{
					
					if(!"C01005".equals(tmp.get("SFBX_ACCT_DV"))){
					
						sb.append(getSfbxBnkAcct(tmp));
					}
				}
			}
		}
		
		sb.append("</select>");
		
		return sb.toString();
		
	}
	
	public static String getSfbxBnkAcct(HashMap<String, String> fCbMap){
		
		StringBuffer sb = new StringBuffer();
		
		HashMap<String, String> tmp = fCbMap;
		
		sb.append("<option value=\"").append(tmp.get("MOM_ACCT_NO")+"|"+tmp.get("SFBX_BNK_CD")).append("\" ");
		sb.append(">");
		
		sb.append("["+CodeUtil.getCode("RNDC12", tmp.get("PMS_ID"))+"]" +"["+CodeUtil.getCode("BNK_CD", tmp.get("SFBX_BNK_CD"), false)+"] ");
		sb.append(AcctFormatUtil.getAcctForm(tmp.get("MOM_ACCT_NO"), tmp.get("SFBX_BNK_CD")));
		if(!"C01005".equals(tmp.get("SFBX_ACCT_DV"))){
			sb.append(" ("+ CodeUtil.getCode("RNDC01", tmp.get("SFBX_ACCT_DV")));
			sb.append(" , "+CodeUtil.getCode("RNDC02", tmp.get("ACCT_TAXT_TYP_DV"))+")");
		}
		sb.append("</option>");
		
		return sb.toString();
		
	}
	
	
	/**
	 * 금고모계좌조회 콤보박스
	 * @param fCbMap 금고모계좌 조회 HashMap
	 * @return 콤보박스출력스트링 (java.lang.String)
	 */
	public static String getSfbxBnkMomAcctNo2(Hashtable<String, String> fCbMap, ArrayList<HashMap<String, String>> sCbMap, String AcctInqYn, String SearchYn) {
		
		StringBuffer sbSelect = new StringBuffer();
		
		sbSelect.append("<select name=\"").append("pmsId").append("\" id=\"").append("pmsId").append("\" style=\"").append("width:100px").append("\" ").append("").append(" onchange=\"").append("").append("OnChange()\">");

		if("Y".equals(SearchYn)){
			sbSelect.append("<option value=\"%\">").append(new String("전체")).append("</option>");
		}

		try{
			if(fCbMap!=null){
				Iterator<Map.Entry<String,String>> iter = ComboUtil.mapSort(fCbMap);

				while ( iter.hasNext() )	{
					Map.Entry<String, String> entry = iter.next();
					
					if("L01".equals(entry.getKey()) || "L02".equals(entry.getKey())){
						continue;
					}else{
						sbSelect.append("<option value=\"").append(entry.getKey()).append("\" ");
						sbSelect.append(">").append(CodeUtil.getCode("RNDC12", entry.getKey())).append("</option>");
					}
				}
				
				if("Y".equals(AcctInqYn)){
					sbSelect.append("<option value=\"").append("RCMS").append("\">RCMS모계좌</option> ");
				}
			}
		}catch(Exception e){}
		
		sbSelect.append("</select>&nbsp;");
		
		if("Y".equals(AcctInqYn)){
		
			ArrayList<HashMap<String, String>> arList1 = sCbMap;
			
			sbSelect.append("<select id='sfbxBnkAcctNo' name='sfbxBnkAcctNo'>");
			sbSelect.append("<option value=''>전체</option>");
			
			for(int i = 0; i < arList1.size(); i++){
				
				HashMap<String, String> tmp = arList1.get(i);
				
				sbSelect.append("<option value=\"").append(tmp.get("MOM_ACCT_NO")+"|"+tmp.get("SFBX_BNK_CD")).append("\">");
				
				sbSelect.append("["+CodeUtil.getCode("BNK_CD", tmp.get("SFBX_BNK_CD"), false)+"] ");
				sbSelect.append(tmp.get("MOM_ACCT_NO"));
				if(!"C01005".equals(tmp.get("SFBX_ACCT_DV"))){
					sbSelect.append(" ("+ CodeUtil.getCode("RNDC01", tmp.get("SFBX_ACCT_DV")));
					sbSelect.append(" , "+CodeUtil.getCode("RNDC02", tmp.get("ACCT_TAXT_TYP_DV"))+")");
				}
				sbSelect.append("</option>");
			}
			
			sbSelect.append("</select>&nbsp;");
		
		}
		
		return sbSelect.toString();
		
	}
	
	/**
	 * Map 정렬
	 *
	 * @param map	정렬할 Map객체
	 * @return Iterator<Map.Entry<String,String>>
	 */
	public static Iterator<Map.Entry<String,String>> mapSort(Map<String, String> map){
		return mapSort(map, false);
	}

	@SuppressWarnings("unchecked")
	public static Iterator<Map.Entry<String,String>> mapSort(Map<String, String> map, boolean bKeySort){
		Iterator<Map.Entry<String,String>> iter = null;

		if(map!=null){
			ArrayList<Map.Entry<String, String>> list = new ArrayList<Entry<String, String>>( map.entrySet() );

			if(bKeySort){
				Collections.sort(list,  new KeyComparator());
			}else{
				Collections.sort(list,  new ValueComparator());
			}

			iter = list.iterator();
		}

		return iter;
	}

	@SuppressWarnings({"rawtypes"})
	public static class ValueComparator implements Comparator {
		public ValueComparator(){}

		@Override
		public int compare(Object o1, Object o2) {
			Map.Entry<String, String> e1 = extracted(o1) ;
			Map.Entry<String, String> e2 = extracted(o2) ;

			String first = e1.getValue();
			String second = e2.getValue();

			return first.compareTo( second );
		}
		@SuppressWarnings({"unchecked"})
		private Entry<String, String> extracted(Object o) {
			return (Map.Entry<String, String>)o;
		}
	}

	@SuppressWarnings("rawtypes")
	public static class KeyComparator implements Comparator {
		public KeyComparator(){}

		@Override
		public int compare(Object o1, Object o2) {
			Map.Entry<String, String> e1 = extracted(o1) ;
			Map.Entry<String, String> e2 = extracted(o2) ;

			String first = e1.getKey();
			String second = e2.getKey();

			return first.compareTo( second );
		}
		
		@SuppressWarnings("unchecked")
		private Entry<String, String> extracted(Object o) {
			return (Map.Entry<String, String>)o;
		}
	}
}