package kr.go.rcms.web.data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;

public class UsrData implements Serializable
{
	/**
     *
     */
    private static final long serialVersionUID = 7883185583690856506L;
	private String SiteGb			= null;	// 사이트구분
	private String UsrId			= null;	// 사용자ID
	private String UsrNm			= null;	// 사용자명
	private String BzRegNo			= null;	// 기관사업자등록번호
	private String CrpnRegNo		= null;	// 법인번호
	private String InstId			= null;	// 기관ID
	private String InstNm			= null;	// 기관명
	private String EntrTypCd		= null;	// 업체유형코드
	private String ResRegNo		= null;	// 주민등록번호
	private String EmalAdr			= null;	// 이메일주소
	private String NatvYn			= null;	// 내국인여부
	private String NtrySt			= null;	// 가입상태
	private String LoginDT			= null;	// 로그인시간
	private String ReprYn			= null;	// 대표자여부
	private String ReprNm			= null;	// 대표자명
	private String TpopCd			= null;	// 업태
	private String TpbzCd			= null;	// 업종
	private String ZipNoSeqNo		= null;	// 우편번호
	private String LoctDtlsAdr		= null;	// 소재지상세주소
	private String PrsWkplDept		= null;	// 현직장부서

	private String PhoneNo			= null;	// 전화번호
	private String PhoneHp			= null;	// 핸드폰번호
	private String FaxNo			= null;	// 팩스번호
	private String PsnlExpnAcctUseYn			= null;	// 인건비성계좌사용여부

	private String usrDn			= null; // dn

	private Hashtable<String, String> htFncInst = null;							// 모계좌금융코드
	private Hashtable<String, Hashtable<String, String>> htMomAcctNo = null;	// 모계좌번호
	
	private Hashtable<String, String> htPmsId = null;							// 모계좌금융코드
	private ArrayList<HashMap<String,String>> sfbxBnkMomAcct		= null; 	//  금고 모계좌 정보

	private Hashtable<String,HashMap<String, String>> tempTest		= null;
	
	public String getSiteGbEng() {
		String sEngSiteGb = "";
		if( getSiteGb()==null || "1".equals(getSiteGb()) || "11".equals(getSiteGb())){
			sEngSiteGb = "C";
		}else{
			sEngSiteGb = "B";
		}
		return sEngSiteGb;
	}

	public Hashtable<String, String> getHtFncInst() {
		return htFncInst;
	}

	public void setHtFncInst(Hashtable<String, String> htFncInst) {
		this.htFncInst = htFncInst;
	}

	public Hashtable<String, Hashtable<String, String>> getHtMomAcctNo() {
		return htMomAcctNo;
	}

	public void setHtMomAcctNo(
			Hashtable<String, Hashtable<String, String>> htMomAcctNo) {
		this.htMomAcctNo = htMomAcctNo;
	}

	public String getSiteGbNo(String TopMenuCd){
		String sNoSiteGb = "1";

		if( TopMenuCd!=null && !"".equals(TopMenuCd)){
			if( TopMenuCd.charAt(0)=='B' ){
				sNoSiteGb = "0";
			}
			else if( TopMenuCd.charAt(0)=='D' ){//2011.3.24 chei.min.you 추가
				sNoSiteGb = "10";
			}
			else if( TopMenuCd.charAt(0)=='C' ){//2011.3.24 chei.min.you 추가
				sNoSiteGb = "11";
			}
		}
		return sNoSiteGb;
	}

	public String getUsrDn() {
		return usrDn;
	}

	public void setUsrDn(String usrDn) {
		this.usrDn = usrDn;
	}

	public String getPhoneNo() {
		return PhoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}

	public String getPhoneHp() {
		return PhoneHp;
	}

	public void setPhoneHp(String phoneHp) {
		PhoneHp = phoneHp;
	}

	public String getFaxNo() {
		return FaxNo;
	}

	public void setFaxNo(String faxNo) {
		FaxNo = faxNo;
	}

	public String getSiteGb() {
		return SiteGb;
	}

	public void setSiteGb(String siteGb) {
		SiteGb = siteGb;
	}

	public String getUsrId() {
		return UsrId;
	}

	public void setUsrId(String usrId) {
		UsrId = usrId;
	}

	public String getUsrNm() {
		return UsrNm;
	}

	public String getReprYn() {
		return ReprYn;
	}

	public void setReprYn(String reprYn) {
		ReprYn = reprYn;
	}

	public void setUsrNm(String usrNm) {
		UsrNm = usrNm;
	}

	public String getBzRegNo() {
		return BzRegNo;
	}

	public void setBzRegNo(String bzRegNo) {
		BzRegNo = bzRegNo;
	}

	public String getCrpnRegNo() {
		return CrpnRegNo;
	}

	public void setCrpnRegNo(String crpnRegNo) {
		CrpnRegNo = crpnRegNo;
	}

	public String getInstId() {
		return InstId;
	}

	public void setInstId(String instId) {
		InstId = instId;
	}

	public String getInstNm() {
		return InstNm;
	}

	public void setInstNm(String instNm) {
		InstNm = instNm;
	}

	public String getEntrTypCd() {
		return EntrTypCd;
	}

	public void setEntrTypCd(String entrTypCd) {
		EntrTypCd = entrTypCd;
	}

	public String getResRegNo() {
		return ResRegNo;
	}

	public void setResRegNo(String resRegNo) {
		ResRegNo = resRegNo;
	}

	public String getEmalAdr() {
		return EmalAdr;
	}

	public void setEmalAdr(String emalAdr) {
		EmalAdr = emalAdr;
	}

	public String getNatvYn() {
		return NatvYn;
	}

	public void setNatvYn(String natvYn) {
		NatvYn = natvYn;
	}

	public String getNtrySt() {
		return NtrySt;
	}

	public void setNtrySt(String ntrySt) {
		NtrySt = ntrySt;
	}

	public String getLoginDT() {
		return LoginDT;
	}

	public void setLoginDT(String loginDT) {
		LoginDT = loginDT;
	}

	public String getLoginYY(){
		String sReturn = "";
		if(getLoginDT()!=null && getLoginDT().length()>=12){
			sReturn = getLoginDT().substring(0, 4);
		}

		return sReturn;
	}

	public String getLoginMM(){
		String sReturn = "";
		if(getLoginDT()!=null && getLoginDT().length()>=12){
			sReturn = getLoginDT().substring(4, 6);
		}

		return sReturn;
	}

	public String getLoginDD(){
		String sReturn = "";
		if(getLoginDT()!=null && getLoginDT().length()>=12){
			sReturn = getLoginDT().substring(6, 8);
		}

		return sReturn;
	}

	public String getLoginHH(){
		String sReturn = "";
		if(getLoginDT()!=null && getLoginDT().length()>=12){
			sReturn = getLoginDT().substring(8, 10);
		}

		return sReturn;
	}

	public String getLoginMI(){
		String sReturn = "";
		if(getLoginDT()!=null && getLoginDT().length()>=12){
			sReturn = getLoginDT().substring(10, 12);
		}

		return sReturn;
	}

	public String getZipNoSeqNo() {
		return ZipNoSeqNo;
	}

	public void setZipNoSeqNo(String zipNoSeqNo) {
		ZipNoSeqNo = zipNoSeqNo;
	}

	public String getLoctDtlsAdr() {
		return LoctDtlsAdr;
	}

	public void setLoctDtlsAdr(String loctDtlsAdr) {
		LoctDtlsAdr = loctDtlsAdr;
	}

	public String getPrsWkplDept() {
		return PrsWkplDept;
	}

	public void setPrsWkplDept(String prsWkplDept) {
		PrsWkplDept = prsWkplDept;
	}

	public String getPsnlExpnAcctUseYn() {
		return PsnlExpnAcctUseYn;
	}

	public void setPsnlExpnAcctUseYn(String psnlExpnAcctUseYn) {
		PsnlExpnAcctUseYn = psnlExpnAcctUseYn;
	}

	public ArrayList<HashMap<String,String>> getSfbxBnkMomAcct() {
		return sfbxBnkMomAcct;
	}

	public void setSfbxBnkMomAcct(ArrayList<HashMap<String,String>> sfbxBnkMomAcct) {
		this.sfbxBnkMomAcct = sfbxBnkMomAcct;
	}

	public Hashtable<String, String> getHtPmsId() {
		return htPmsId;
	}

	public void setHtPmsId(Hashtable<String, String> htPmsId) {
		this.htPmsId = htPmsId;
	}

	public Hashtable<String,HashMap<String, String>> getTempTest() {
		return tempTest;
	}

	public void setTempTest(Hashtable<String,HashMap<String, String>> tempTest) {
		this.tempTest = tempTest;
	}
	public String getReprNm() {
		return ReprNm;
	}

	public void setReprNm(String reprNm) {
		ReprNm = reprNm;
	}

	public String getTpopCd() {
		return TpopCd;
	}

	public void setTpopCd(String tpopCd) {
		TpopCd = tpopCd;
	}

	public String getTpbzCd() {
		return TpbzCd;
	}

	public void setTpbzCd(String tpbzCd) {
		TpbzCd = tpbzCd;
	}
}
