package kr.go.rcms.web.util;

import java.util.List;
import java.util.Map;


/**
 * 계좌포맷관리 유틸
 * 
 * @author moon
 *
 */
public class AcctFormatUtil
{
	private static Map<String, List<Map<String, String>>> BANK_ACCT_FORMAT_1;//key == 8자리 은행코드
	private static Map<String, List<Map<String, String>>> BANK_ACCT_FORMAT_2;//key == 2자리or3자리 은행코드
	private static AcctFormatUtil acctFormatUtil;
	
	private AcctFormatUtil(){}
	
	/**
	 * 클래스의 인스턴스를 만들어서 리턴함
	 * 
	 * @return 싱글턴 인스턴스
	 */
	private static AcctFormatUtil getInstance(){
		if(acctFormatUtil==null){
			synchronized(AcctFormatUtil.class){
				if(acctFormatUtil==null){
					acctFormatUtil = new AcctFormatUtil();
				}
			}
		}
		return acctFormatUtil;
	}
	
	/**
	 * 계좌번호를 포맷팅하여 리턴한다
	 * ex) 1234567890  ---> 123-456-789-0 
	 *
	 * @param acct_no : 계좌번호
	 * @param acct_format : 계좌번호체계
	 * @param bank_gb : 은행 구분(01:은행, 02:증권, 04:카드, 05:자산운용,투신운용)
	 * @return java.lang.String
	 */
	private static String acctForm(String acct_no, String acct_format, String bank_gb) 
	{
		if((acct_no==null) || (acct_no.trim().length() == 0)) return "";

		StringBuffer sbAcctNo = new StringBuffer();	
		String	strFormat = "";	

		if( acct_format==null || acct_format.length()==0 ) {
			if("04".equals(bank_gb))
				strFormat = "4,4,4,4";
			else
				strFormat = "3,2,6";
		} else {
			strFormat = acct_format;	
		}

		String [] strNum = strFormat.split(",");

		try
		{
			for(int i=0,j=0,k=0;i<acct_no.length();i++){
				if((strNum.length-1) != j && Integer.parseInt(strNum[j])==k){
					sbAcctNo.append("-");
					j++;
					k=0;
				}

				sbAcctNo.append(acct_no.charAt(i));
				k++;
			}
		}catch(NullPointerException e){
			e.printStackTrace(System.out);
		}catch(Exception e){
			e.printStackTrace(System.out);
		}

		return sbAcctNo.toString();
	}
	

	/**
	 * 입력한 계좌번호를 포맷팅하여 리턴한다
	 *
	 * @param acct_no : 계좌번호
	 * @param bank_cd : 은행 코드(bank_cd, bank_scd 모두 포함, 길이에 따라서 구분함)
	 * @return java.lang.String
	 */
	public static String getAcctForm(String acct_no, String bank_cd){
		return getAcctForm(acct_no, bank_cd, "01");
	}
	
	
	/**
	 * 입력한 계좌번호를 포맷팅하여 리턴한다
	 *
	 * @param acct_no : 계좌번호
	 * @param bank_cd : 은행 코드(bank_cd, bank_scd 모두 포함, 길이에 따라서 구분함)
	 * @param bank_gb : 은행 구분(01:은행, 02:증권, 04:카드, 05:자산운용,투신운용)
	 * @return java.lang.String
	 */
	public static String getAcctForm(String acct_no, String bank_cd, String bank_gb)
	{
//		System.out.println(acct_no+"|"+bank_cd);
		//계좌번호 체크
		if(acct_no==null || acct_no.trim().length() == 0)	return "";
		
		acct_no = acct_no.trim();

		//은행구분체크
		if(bank_gb==null||bank_gb.trim().length()==0) bank_gb="01";
		
		//은행코드 체크
		if(bank_cd==null)	bank_cd="";
		else	bank_cd = bank_cd.trim();
		
		if((bank_cd.length() != 2) && (bank_cd.length() != 3) && (bank_cd.length() != 8)){
			return acctForm(acct_no,"",bank_gb);
		}
		
		String strFormat = null;
		
		//입력된 은행코드로 포맷데이터 얻기
//		List<Map<String, String>> bankAcctFormatList = getBankAcctFormat( bank_cd );
		/*
		//입력된 은행코드에 해당하는 포맷이 없을경우 기본포맷으로 리턴
		if(bankAcctFormatList==null) return acctForm(acct_no,"",bank_gb);
		
		int listSize = bankAcctFormatList.size();
		for(int i=0 ; i<listSize ; i++){
			Map<String, String> rowData = bankAcctFormatList.get(i);
			
			if( String.valueOf(acct_no.length()).equals(rowData.get("ACCT_LENGTH")) && bank_gb.equals(rowData.get("BANK_GB"))){
				if( "02".equals(rowData.get("BANK_GB"))){
					strFormat = rowData.get("ACCT_FORMAT");
					break;
				}else {
					int idx = Integer.parseInt(rowData.get("GWAMOK_COLUMN")) - 1;

					// 과목칼럼이 0 인 경우는 디폴트로 셋팅	
					if(idx == -1) {
						strFormat = rowData.get("ACCT_FORMAT");
						break;
					} else if( rowData.get("GWAMOK_CD").equals( acct_no.substring(idx, idx+Integer.parseInt(rowData.get("GWAMOK_LENGTH"))))){
						strFormat = rowData.get("ACCT_FORMAT");
						break;
					}
				}
			}
		}//end of "for" loop
		*/
		return acctForm(acct_no,strFormat,bank_gb);
	}
	
	
	
	/**
	 * 입력된 은행코드에 해당하는 계좌번호 포맷데이터를 반환한다.
	 * 최초거래시 DB에서 포멧데이터를 읽어서 메모리에 적재한다.
	 */
	
//	
//	private static List<Map<String, String>> getBankAcctFormat(String bank_cd)
//	{
//		boolean errYn = false;
//		if( BANK_ACCT_FORMAT_1==null || BANK_ACCT_FORMAT_1.size()==0 ||
//			BANK_ACCT_FORMAT_2==null || BANK_ACCT_FORMAT_2.size()==0 )
//		{
//			synchronized(AcctFormatUtil.class)
//			{
//				if( BANK_ACCT_FORMAT_1==null || BANK_ACCT_FORMAT_1.size()==0 ||
//					BANK_ACCT_FORMAT_2==null || BANK_ACCT_FORMAT_2.size()==0 )
//				{
//					//System.out.println("===BANK_ACCT_FORMAT start===");
//
//					try {
//
//						String _bankCd1="";
//						String _bankCd2="";
//						List<Map<String, String>> _list1 =  null;
//						List<Map<String, String>> _list2 =  null;
//						Map<String, List<Map<String, String>>> _bankAcctFormat1 = new HashMap<String, List<Map<String, String>>>();
//						Map<String, List<Map<String, String>>> _bankAcctFormat2 = new HashMap<String, List<Map<String, String>>>();
//
//						
//						SSVC_S07010_N001In input	= new SSVC_S07010_N001In(); 
//						SSVC_S07010_N001Out result =	(SSVC_S07010_N001Out)RCMSPTCommonUtil.execute2(null, input);
//						if( JexDomainUtil.isError(result) ){
//							throw new Exception();
//						}else{
//							JexRecordDataList<SSVC_S07010_N001_REC>	rs	= result.getRec();
//							SSVC_S07010_N001_REC data;
//							rs.beforeFirst();
//							while(rs.next()){
//								data = (SSVC_S07010_N001_REC)rs.get();
//								//key가 8자리은행코드인 데이터 생성
//								if( !_bankCd1.equals(data.getBankCd()) ){
//									if( _list1!=null ){
//										_bankAcctFormat1.put(_bankCd1, _list1);
//									}
//	
//									_bankCd1 = data.getBankCd();
//									_list1 = new ArrayList<Map<String, String>>();
//								}
//	
//								//key가 2자리or3자리 은행코드인 데이터 생성
//								if( !_bankCd2.equals(data.getBankScd()) ){
//									if( _list2!=null ){
//										List<Map<String, String>> tempList2 = _bankAcctFormat2.get(_bankCd2);
//	
//										if(tempList2==null){
//											_bankAcctFormat2.put(_bankCd2, _list2);
//										}else{
//											for(int i=0 ; i<_list2.size() ; i++){
//												tempList2.add(_list2.get(i));
//											}
//											_bankAcctFormat2.put(_bankCd2, tempList2);
//										}
//									}
//	
//									_bankCd2 = data.getBankScd();
//									_list2 = new ArrayList<Map<String, String>>();
//								}
//	
//								Map<String, String> _map = new HashMap<String, String>();
//								_map.put("ACCT_LENGTH"	, data.getAcctLength());
//								_map.put("BANK_GB"		, data.getBankGb());
//								_map.put("GWAMOK_COLUMN", data.getGwamokColumn());
//								_map.put("GWAMOK_LENGTH", data.getGwamokLength());
//								_map.put("GWAMOK_CD"	, data.getGwamokCd());
//								_map.put("ACCT_FORMAT"	, data.getAcctFormat());
//	
//								_list1.add(_map);
//								_list2.add(_map);
//							}
//						}//END OF WHILE
//
//						if( _list1!=null )	_bankAcctFormat1.put(_bankCd1, _list1);
//						if( _list2!=null )	_bankAcctFormat2.put(_bankCd2, _list2);					
//
//						BANK_ACCT_FORMAT_1 = _bankAcctFormat1;
//						BANK_ACCT_FORMAT_2 = _bankAcctFormat2;
//
//						//System.out.println("===BANK_ACCT_FORMAT end===");
//					}catch(Exception e) {
//						errYn = true;
//						e.printStackTrace(System.out);
//					}finally{
//						
//					}
//				}
//			}//end of "synchronized"
//		}
//		
//		if(errYn){
//			return null;
//		}else{
//			if(bank_cd.length()==8)	
//				return BANK_ACCT_FORMAT_1.get(bank_cd);
//			else	
//				return BANK_ACCT_FORMAT_2.get(bank_cd);
//		}
//	}
//	
}