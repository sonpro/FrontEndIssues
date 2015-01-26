package kr.go.rcms.web.data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.StringTokenizer;

public class SbjtData implements Serializable
{
	/**
     *
     */
    private static final long serialVersionUID = 3686210962999173888L;

	public SbjtData(){}

	private String PmsId				= null;	//PMSID
	private String CpcgInstID			= null;	//전담기관ID
	private String CpcgInstNm			= null;	//전담기관명
	private String CpcgInstBzRegNo 		= null;	//전담기관사업자번호
	private String CpcgInstCrpnRegNo	= null;	//전담기관법인등록번호
	private String BzClasCd				= null;	//사업분류코드
	private String BzClasNm				= null;	//사업분류명
	private String SbjtId				= null;	//과제ID
	private String SumupSbjtId			= null; //총괄과제ID
	private String SbjtNm				= null;	//과제명
	private String Annl					= null;	//현재연차차수
	private String PrsSbjtStg			= null;	//현재과제단계
	private String AgrmtCnclId			= null;	//협약체결ID
	private String SbjtDv				= null; //과제구분
	private String SbjtPrgrDv			= null;	//과제진행상태
	private String TotlDevTrmStrDt		= null;	//총개발기간시작일자
	private String TotlDevTrmEndDt		= null;	//총개발기간종료일자
	private String DevStrDt				= null;	// 개발시작일자
	private String DevEndDt				= null;	// 개발종료일자

	private String AgrmtSeqNo			= null;	//협약일련번호
	private String AgrmtInstId			= null;	//협약기관ID
	private String AgrmtInstNm			= null;	//협약기관명
	private String SpvsInstID			= null;	//주관기관ID
	private String SpvsInstNm			= null;	//주관기관명
	private String AgrmtInstCrpnRegNo	= null;	//협약기관법인등록번호
	private String AgrmtInstBzRegNo		= null;	//협약기관사업자등록번호
	private String InstRoleDv			= null;	//기관역할구분
	private String InstRoleSbDv			= null;	//기관역할세부구분
	private String SumupRsprExctnPossYn	= null; //총괄책임자집행가능여부
	private String NprfInstYn			= null; //비영리기관여부
	private String InstSbjtPrgrSt		= null;	//기관과제진행상태
	private String ExctnLimtSt			= null;	//집행제한상태
	private String InstExctnLimtSt		= null;	//기관집행가능상태
	private String SbjtResUsrNm			= null;	//과제책임자성함
	private String TotlInstAmt			= null;	//총사업금액
	private String InstTotlInstAmt		= null;	//기관총사업금액
	private String ExctnStgDv			= null;	//집행단계구분
	private String FncInstContId		= null;	//금융기관계약ID
	private String BzMomAcctBnkCd 		= null;	//사업모계좌은행코드
	private String BzMomAcctNo			= null;	//사업모계좌번호
	private String RchExpAcctBnkCd		= null;	//연구비계좌은행코드
	private String MyAcctTrnsAlwnYn		= null; //내계좌이체허용여부
	private String RchExpAcctNo			= null;	//연구비계좌번호
	private String RcmsGrpCd			= null;	//RCMS그룹코드
	private String HmpwRoleDv			= null;	//인력역할구분
	private String HmpwRoleSbDv			= null;	//인력역할세부구분
	private String MySbjtYn				= null;	//내과제여부

	private String FmbkNtryYn			= null; //펌뱅킹가입여부
	private String PwRegYn				= null; //비밀번호등록여부
	private String CrdcoRegYn			= null; //카드사등록여부
	private String TotlCrdNcnt			= null; //총카드건수
	private String InstLnkType			= null; //기관연계타입
	//2011.11.11 sonpro
	private String PsnlExpnAcctUseYn	= null; //인건비성지급계좌설정여부
	private String UnfyMgntInstYn		= null; //통합관리기관여부
	//2011.07.19
	private String SacShp				= null; //정상형태
	private String AifwCnt				= null;	//펌뱅킹신청카운트
	
	//2012.04.03
	private String AibsSeq				= null; //정산원장등록순번
	
	private String AgrmtTgtStrStg		= null; //협약대상시작단계
	private String AgrmtTgtStrAnnl		= null; //협약대상시작연차
	private String AgrmtTgtEndStg		= null; //협약대상종료단계
	private String AgrmtTgtEndAnnl		= null; //협약대상종료연차
	
	private String SacSn                = null;
	private String AgrmtDv              = null;
	private String AgcfYn               = null;
	
	private String OpagYn               = null; //규정에 대한 신,구비목 적용유무
	
	private String AgrmtStDt			= null; //협약상태일자
	
	private Hashtable<String, String> hmItxp							= null; // 비목
	private Hashtable<String, Hashtable<String,String>> hmItxpDtlsItxp	= null; // 비세목
	private Hashtable<String, String> hmDtlsItxp						= null; // 세목
	private Hashtable<String, Hashtable<String, String>> hmSubDtlsItxp	= null; // 세세목
	private Hashtable<String, String> hmUpItxp							= null; // 세세목으로 비목코드가져오기
	private Hashtable<String, String> HtSpotDtlsItxp					= null; // 현물사용가능세목

	private ArrayList<HashMap<String,String>> bzList			= null; // 사업리스트

	/**
	 * 사업리스트를 반환합니다.
	 **/
	public ArrayList<HashMap<String, String>> getBzList() {
		return bzList;
	}

	/**
	 * 사업리스트를 가져옵니다.
	 **/
	public void setBzList(ArrayList<HashMap<String, String>> bzList) {
		this.bzList = bzList;
	}

	/**
	 * 비영리기관여부를 반환합니다.
	 **/
	public String getNprfInstYn() {
		return NprfInstYn;
	}

	/**
	 * 비영리기관여부를 세팅합니다.
	 **/
	public void setNprfInstYn(String nprfInstYn) {
		NprfInstYn = nprfInstYn;
	}

	/**
	 * 기관역할세부구분를 반환합니다.
	 **/
	public String getInstRoleSbDv() {
		return InstRoleSbDv;
	}

	/**
	 * 기관역할세부구분을 세팅합니다.
	 **/
	public void setInstRoleSbDv(String instRoleSbDv) {
		InstRoleSbDv = instRoleSbDv;
	}

	/**
	 * 인력역할세부구분을 반환합니다.
	 **/
	public String getHmpwRoleSbDv() {
		return HmpwRoleSbDv;
	}

	/**
	 * 인력역할세부구분을 세팅합니다.
	 **/
	public void setHmpwRoleSbDv(String hmpwRoleSbDv) {
		HmpwRoleSbDv = hmpwRoleSbDv;
	}

	/**
	 * 총괄책임자집행가능여부를 반환합니다.
	 **/
	public String getSumupRsprExctnPossYn() {
		return SumupRsprExctnPossYn;
	}

	/**
	 * 총괄책임자집행가능여부를 세팅합니다.
	 **/
	public void setSumupRsprExctnPossYn(String sumupRsprExctnPossYn) {
		SumupRsprExctnPossYn = sumupRsprExctnPossYn;
	}

	/**
	 * 펌뱅킹가입여부를 반환합니다.
	 **/
	public String getFmbkNtryYn() {
		return FmbkNtryYn;
	}

	/**
	 * 펌뱅킹가입여부를 세팅합니다.
	 **/
	public void setFmbkNtryYn(String fmbkNtryYn) {
		FmbkNtryYn = fmbkNtryYn;
	}

	/**
	 * 비밀번호등록여부를 반환합니다.
	 **/
	public String getPwRegYn() {
		return PwRegYn;
	}

	/**
	 * 비밀번호등록여부를 세팅합니다.
	 **/
	public void setPwRegYn(String pwRegYn) {
		PwRegYn = pwRegYn;
	}

	/**
	 * 카드사등록여부를 반환합니다.
	 **/
	public String getCrdcoRegYn() {
		return CrdcoRegYn;
	}

	/**
	 * 카드사등록여부를 세팅합니다.
	 **/
	public void setCrdcoRegYn(String crdcoRegYn) {
		CrdcoRegYn = crdcoRegYn;
	}

	/**
	 * 총카드건수를 반환합니다.
	 **/
	public String getTotlCrdNcnt() {
		return TotlCrdNcnt;
	}

	/**
	 * 총카드건수를 세팅합니다.
	 **/
	public void setTotlCrdNcnt(String totlCrdNcnt) {
		TotlCrdNcnt = totlCrdNcnt;
	}

	/**
	 * 인력역할구분을 반환합니다.
	 **/
	public String getHmpwRoleDv() {
		return HmpwRoleDv;
	}

	/**
	 * 인력역할구분을 세팅합니다.
	 **/
	public void setHmpwRoleDv(String hmpwRoleDv) {
		HmpwRoleDv = hmpwRoleDv;
	}

	/**
	 * 집행제한상태를 반환합니다.
	 **/
	public String getExctnLimtSt() {
		return ExctnLimtSt;
	}

	/**
	 * 집행제한상태를 세팅합니다.
	 **/
	public void setExctnLimtSt(String exctnLimtSt) {
		ExctnLimtSt = exctnLimtSt;
	}

	/**
	 * 집행단계구분을 반환합니다.
	 **/
	public String getExctnStgDv() {
		return ExctnStgDv;
	}

	/**
	 * 집행단계구분을 세팅합니다.
	 **/
	public void setExctnStgDv(String exctnStgDv) {
		ExctnStgDv = exctnStgDv;
	}

	/**
	 * 협약기관사업자등록번호를 반환합니다.
	 **/
	public String getAgrmtInstBzRegNo() {
		return AgrmtInstBzRegNo;
	}

	/**
	 * 협약기관사업자등록번호를 세팅합니다.
	 **/
	public void setAgrmtInstBzRegNo(String agrmtInstBzRegNo) {
		AgrmtInstBzRegNo = agrmtInstBzRegNo;
	}

	/**
	 * 현재과제단계를 반환합니다.
	 **/
	public String getPrsSbjtStg() {
		return PrsSbjtStg;
	}

	/**
	 * 현재과제단계를 세팅합니다.
	 **/
	public void setPrsSbjtStg(String prsSbjtStg) {
		PrsSbjtStg = prsSbjtStg;
	}

	/**
	 * 개발시작일자를 반환합니다.
	 **/
	public String getDevStrDt() {
		return DevStrDt;
	}

	/**
	 * 개발시작일자를 세팅합니다.
	 **/
	public void setDevStrDt(String devStrDt) {
		DevStrDt = devStrDt;
	}

	/**
	 * 개발종료일자를 반환합니다.
	 **/
	public String getDevEndDt() {
		return DevEndDt;
	}

	/**
	 * 개발종료일자를 세팅합니다.
	 **/
	public void setDevEndDt(String devEndDt) {
		DevEndDt = devEndDt;
	}

	/**
	 * 현물사용가능세목을 반환합니다.
	 **/
	public Hashtable<String, String> getHtSpotDtlsItxp() {
		return HtSpotDtlsItxp;
	}

	/**
	 * 현물사용가능세목을 세팅합니다.
	 **/
	public void setHtSpotDtlsItxp(Hashtable<String, String> htSpotDtlsItxp) {
		HtSpotDtlsItxp = htSpotDtlsItxp;
	}

	/**
	 * 전담기관법인번호를 반환합니다.
	 **/
	public String getCpcgInstCrpnRegNo() {
		return CpcgInstCrpnRegNo;
	}

	/**
	 * 전담기관법인번호를 세팅합니다.
	 **/
	public void setCpcgInstCrpnRegNo(String cpcgInstCrpnRegNo) {
		CpcgInstCrpnRegNo = cpcgInstCrpnRegNo;
	}

	/**
	 * 협약기관ID를 반환합니다.
	 **/
	public String getAgrmtInstId() {
		return AgrmtInstId;
	}

	/**
	 * 협약기관ID를 세팅합니다.
	 **/
	public void setAgrmtInstId(String agrmtInstId) {
		AgrmtInstId = agrmtInstId;
	}

	/**
	 * 협약기관법인등록번호를 반환합니다.
	 **/
	public String getAgrmtInstCrpnRegNo() {
		return AgrmtInstCrpnRegNo;
	}

	/**
	 * 협약기관법인등록번호를 세팅합니다.
	 **/
	public void setAgrmtInstCrpnRegNo(String agrmtInstCrpnRegNo) {
		AgrmtInstCrpnRegNo = agrmtInstCrpnRegNo;
	}

	/**
	 * 금융기관계약ID를 반환합니다.
	 **/
	public String getFncInstContId() {
		return FncInstContId;
	}

	/**
	 * 금융기관계약ID를 세팅합니다.
	 **/
	public void setFncInstContId(String fncInstContId) {
		FncInstContId = fncInstContId;
	}

	/**
	 * 비목코드명을 반환합니다.
	 **/
	public Hashtable<String, String> getHmItxp() {
		return hmItxp;
	}

	/**
	 * 비목코드명을 세팅합니다.
	 **/
	public void setHmItxp(Hashtable<String, String> hmItxp) {
		this.hmItxp = hmItxp;
	}

	/**
	 * 비세목을 반환합니다.
	 **/
	public Hashtable<String, Hashtable<String, String>> getHmItxpDtlsItxp() {
		return hmItxpDtlsItxp;
	}

	/**
	 * 비세목을 세팅합니다.
	 **/
	public void setHmItxpDtlsItxp(Hashtable<String, Hashtable<String, String>> hmItxpDtlsItxp) {
		this.hmItxpDtlsItxp = hmItxpDtlsItxp;
	}

	/**
	 * 전담기관사업자번호를 반환합니다.
	 **/
	public String getCpcgInstBzRegNo() {
		return CpcgInstBzRegNo;
	}

	/**
	 * 전담기관사업자번호를 세팅합니다.
	 **/
	public void setCpcgInstBzRegNo(String cpcgInstBzRegNo) {
		CpcgInstBzRegNo = cpcgInstBzRegNo;
	}

	/**
	 * RCMS그룹코드를 반환합니다.
	 **/
	public String getRcmsGrpCd() {
		return RcmsGrpCd;
	}

	/**
	 * RCMS그룹코드를 세팅합니다.
	 **/
	public void setRcmsGrpCd(String rcmsGrpCd) {
		RcmsGrpCd = rcmsGrpCd;
	}

	/**
	 * 세목을 반환합니다.
	 **/
	public Hashtable<String, String> getHmDtlsItxp() {
		return hmDtlsItxp;
	}

	/**
	 * 세목을 가져옵니다.
	 **/
	public void setHmDtlsItxp(Hashtable<String, String> hmDtlsItxp) {
		this.hmDtlsItxp = hmDtlsItxp;
	}

	/**
	 * 세세목을 반환합니다.
	 **/
	public Hashtable<String, Hashtable<String, String>> getHmSubDtlsItxp() {
		return hmSubDtlsItxp;
	}

	/**
	 * 세세목을 가져옵니다.
	 **/
	public void setHmSubDtlsItxp(Hashtable<String, Hashtable<String, String>> hmSubDtlsItxp) {
		this.hmSubDtlsItxp = hmSubDtlsItxp;
	}

	/**
	 * 세목 상위비목을 반환합니다.
	 **/
	public Hashtable<String, String> getHmUpItxp() {
		return hmUpItxp;
	}

	/**
	 * 세목 상위비목을 반환합니다.
	 **/
	public String getHmUpItxp(String DtlsItxpCd){
		return hmUpItxp.get(DtlsItxpCd);
	}

	/**
	 * 세목 상위비목을 가져옵니다.
	 **/
	public void setHmUpItxp(Hashtable<String, String> hmUpItxp) {
		this.hmUpItxp = hmUpItxp;
	}

	/**
	 * 세목 상위비목코드를 반환합니다.
	 **/
	public String getUpItxpCd(String DtlsItxpCd){
		String itxp = getHmUpItxp(DtlsItxpCd);
		StringTokenizer st = new StringTokenizer(itxp, ";");

		return st.nextToken();
	}

	/**
	 * 세목 상위비목명을 반환합니다.
	 **/
	public String getUpItxpNm(String DtlsItxpCd){
		String itxp = getHmUpItxp(DtlsItxpCd);
		StringTokenizer st = new StringTokenizer(itxp, ";");

		st.nextToken();
		return st.nextToken();
	}

	/**
	 * 협약기관명 반환합니다.
	 **/
	public String getAgrmtInstNm() {
		return AgrmtInstNm;
	}

	/**
	 * 협약기관명 세팅합니다.
	 **/
	public void setAgrmtInstNm(String agrmtInstNm) {
		AgrmtInstNm = agrmtInstNm;
	}

	/**
	 * 주관기관ID를 반환합니다.
	 **/
	public String getSpvsInstID() {
		return SpvsInstID;
	}

	/**
	 * 주관기관ID를 세팅합니다.
	 **/
	public void setSpvsInstID(String spvsInstID) {
		SpvsInstID = spvsInstID;
	}

	/**
	 * 전담기관ID를 반환합니다.
	 **/
	public String getCpcgInstID() {
		return CpcgInstID;
	}

	/**
	 * 전담기관ID를 세팅합니다.
	 **/
	public void setCpcgInstID(String cpcgInstID) {
		CpcgInstID = cpcgInstID;
	}

	/**
	 * 기관총사업금액을 반환합니다.
	 **/
	public String getInstTotlInstAmt() {
		return InstTotlInstAmt;
	}

	/**
	 * 기관총사업금액을 세팅합니다.
	 **/
	public void setInstTotlInstAmt(String instTotlInstAmt) {
		InstTotlInstAmt = instTotlInstAmt;
	}

	/**
	 * 기관집행가능상태를 반환합니다.
	 **/
	public String getInstExctnLimtSt() {
		return InstExctnLimtSt;
	}

	/**
	 * 기관집행가능상태를 세팅합니다.
	 **/
	public void setInstExctnLimtSt(String InstExctnLimtSt) {
		this.InstExctnLimtSt = InstExctnLimtSt;
	}

	/**
	 * 기관과제진행상태를 반환합니다.
	 **/
	public String getInstSbjtPrgrSt() {
		return InstSbjtPrgrSt;
	}

	/**
	 * 기관과제진행상태를 세팅합니다.
	 **/
	public void setInstSbjtPrgrSt(String instSbjtPrgrSt) {
		InstSbjtPrgrSt = instSbjtPrgrSt;
	}

	/**
	 * PMSID를 반환합니다.
	 **/
	public String getPmsId() {
		return PmsId;
	}

	/**
	 * PMSID를 세팅합니다.
	 **/
	public void setPmsId(String pmsId) {
		PmsId = pmsId;
	}

	/**
	 * 사업분류코드를 반환합니다.
	 **/
	public String getBzClasCd() {
		return BzClasCd;
	}

	/**
	 * 사업분류코드를 세팅합니다.
	 **/
	public void setBzClasCd(String bzClasCd) {
		BzClasCd = bzClasCd;
	}

	/**
	 * 사업분류명을 반환합니다.
	 **/
	public String getBzClasNm() {
		return BzClasNm;
	}

	/**
	 * 사업분류명을 세팅합니다.
	 **/
	public void setBzClasNm(String bzClasNm) {
		BzClasNm = bzClasNm;
	}

	/**
	 * 현재연차차수를 반환합니다.
	 **/
	public String getAnnl() {
		return Annl;
	}

	/**
	 * 현재연차차수를 세팅합니다.
	 **/
	public void setAnnl(String Annl) {
		this.Annl = Annl;
	}

	/**
	 * 과제ID를 반환합니다.
	 **/
	public String getSbjtId() {
		return SbjtId;
	}

	/**
	 * 과제ID를 세팅합니다.
	 **/
	public void setSbjtId(String sbjtId) {
		SbjtId = sbjtId;
	}

	/**
	 * 주관기관명을 반환합니다.
	 **/
	public String getSpvsInstNm() {
		return SpvsInstNm;
	}

	/**
	 * 주관기관명을 세팅합니다.
	 **/
	public void setSpvsInstNm(String spvsInstNm) {
		SpvsInstNm = spvsInstNm;
	}

	/**
	 * 과제명을 반환합니다.
	 **/
	public String getSbjtNm() {
		return SbjtNm;
	}

	/**
	 * 과제명을 세팅합니다.
	 **/
	public void setSbjtNm(String sbjtNm) {
		SbjtNm = sbjtNm;
	}

	/**
	 * 전담기관명을 반환합니다.
	 **/
	public String getCpcgInstNm() {
		return CpcgInstNm;
	}

	/**
	 * 전담기관명을 세팅합니다.
	 **/
	public void setCpcgInstNm(String cpcgInstNm) {
		CpcgInstNm = cpcgInstNm;
	}

	/**
	 * 현약일련번호를 반환합니다.
	 **/
	public String getAgrmtSeqNo() {
		return AgrmtSeqNo;
	}

	/**
	 * 현약일련번호를 세팅합니다.
	 **/
	public void setAgrmtSeqNo(String agrmtSeqNo) {
		AgrmtSeqNo = agrmtSeqNo;
	}

	/**
	 * 과제진행상태를 반환합니다.
	 **/
	public String getSbjtPrgrDv() {
		return SbjtPrgrDv;
	}

	/**
	 * 과제진행상태를 세팅합니다.
	 **/
	public void setSbjtPrgrDv(String SbjtPrgrDv) {
		this.SbjtPrgrDv = SbjtPrgrDv;
	}

	/**
	 * 총사업금액을 반환합니다.
	 **/
	public String getTotlInstAmt() {
		return TotlInstAmt;
	}

	/**
	 * 총사업금액을 세팅합니다.
	 **/
	public void setTotlInstAmt(String totlInstAmt) {
		TotlInstAmt = totlInstAmt;
	}

	/**
	 * 사업모계좌은행코드를 반환합니다.
	 **/
	public String getBzMomAcctBnkCd() {
		return BzMomAcctBnkCd;
	}

	/**
	 * 사업모계좌은행코드를 세팅합니다.
	 **/
	public void setBzMomAcctBnkCd(String BzMomAcctBnkCd) {
		this.BzMomAcctBnkCd = BzMomAcctBnkCd;
	}

	/**
	 * 사업모계좌번호를 반환합니다.
	 **/
	public String getBzMomAcctNo() {
		return BzMomAcctNo;
	}

	/**
	 * 사업모계좌번호를 세팅합니다.
	 **/
	public void setBzMomAcctNo(String bzMomAcctNo) {
		BzMomAcctNo = bzMomAcctNo;
	}

	/**
	 * 연구비계좌은행코드를 반환합니다.
	 **/
	public String getRchExpAcctBnkCd() {
		return RchExpAcctBnkCd;
	}

	/**
	 * 연구비계좌은행코드를 세팅합니다.
	 **/
	public void setRchExpAcctBnkCd(String rchExpAcctBnkCd) {
		RchExpAcctBnkCd = rchExpAcctBnkCd;
	}

	/**
	 * 연구비계좌번호를 반환합니다.
	 **/
	public String getRchExpAcctNo() {
		return RchExpAcctNo;
	}

	/**
	 * 연구비계좌번호를 세팅합니다.
	 **/
	public void setRchExpAcctNo(String rchExpAcctNo) {
		RchExpAcctNo = rchExpAcctNo;
	}

	/**
	 * 총개발기간시작일자를 반환합니다.
	 **/
	public String getTotlDevTrmStrDt() {
		return TotlDevTrmStrDt;
	}

	/**
	 * 총개발기간시작일자를 세팅합니다.
	 **/
	public void setTotlDevTrmStrDt(String totlDevTrmStrDt) {
		TotlDevTrmStrDt = totlDevTrmStrDt;
	}

	/**
	 * 총개발기간종료일자를 반환합니다.
	 **/
	public String getTotlDevTrmEndDt() {
		return TotlDevTrmEndDt;
	}

	/**
	 * 총개발기간종료일자를 세팅합니다.
	 **/
	public void setTotlDevTrmEndDt(String totlDevTrmEndDt) {
		TotlDevTrmEndDt = totlDevTrmEndDt;
	}

	/**
	 * 협약체결ID를 반환합니다.
	 **/
	public String getAgrmtCnclId() {
		return AgrmtCnclId;
	}

	/**
	 * 협약체결ID를 세팅합니다.
	 **/
	public void setAgrmtCnclId(String agrmtCnclId) {
		AgrmtCnclId = agrmtCnclId;
	}

	/**
	 * 협약기관역할구분을 반환합니다.
	 **/
	public String getInstRoleDv() {
		return InstRoleDv;
	}

	/**
	 * 협약기관역할구분을 세팅합니다.
	 **/
	public void setInstRoleDv(String InstRoleDv) {
		this.InstRoleDv = InstRoleDv;
	}

	/**
	 * 과제책임자성함을 반환합니다..
	 **/
	public String  getSbjtResUsrNm() {
		return SbjtResUsrNm;
	}


	/**
	 * 과제책임자성함을 세팅합니다.
	 **/
	public void setSbjtResUsrNm(String SbjtResUsrNm) {
		this.SbjtResUsrNm = SbjtResUsrNm;
	}

	public String getSumupSbjtId() {
		return SumupSbjtId;
	}

	public void setSumupSbjtId(String sumupSbjtId) {
		SumupSbjtId = sumupSbjtId;
	}

	public String getSbjtDv() {
		return SbjtDv;
	}

	public void setSbjtDv(String sbjtDv) {
		SbjtDv = sbjtDv;
	}

	public String getMyAcctTrnsAlwnYn() {
		return MyAcctTrnsAlwnYn;
	}

	public void setMyAcctTrnsAlwnYn(String myAcctTrnsAlwnYn) {
		MyAcctTrnsAlwnYn = myAcctTrnsAlwnYn;
	}

	public String getMySbjtYn() {
		return MySbjtYn;
	}

	public void setMySbjtYn(String mySbjtYn) {
		MySbjtYn = mySbjtYn;
	}

	public String getInstLnkType() {
		return InstLnkType;
	}

	public void setInstLnkType(String instLnkType) {
		InstLnkType = instLnkType;
	}

	public void setSacShp(String sacShp) {
		SacShp = sacShp;
	}

	public String getSacShp() {
		return SacShp;
	}
	
	public void setAibsSeq(String aibsSeq) {
		AibsSeq = aibsSeq;
	}

	public String getAibsSeq() {
		return AibsSeq;
	}
	
	public void setPsnlExpnAcctUseYn(String psnlExpnAcctUseYn) {
		PsnlExpnAcctUseYn = psnlExpnAcctUseYn;
	}

	public String getPsnlExpnAcctUseYn() {
		return PsnlExpnAcctUseYn;
	}
	
	public void setUnfyMgntInstYn(String unfyMgntInstYn) {
		UnfyMgntInstYn = unfyMgntInstYn;
	}

	public String getUnfyMgntInstYn() {
		return UnfyMgntInstYn;
	}
	
	public void setAifwCnt(String aifwCnt){
		this.AifwCnt = aifwCnt;
	}
	
	public String getAifwCnt(){
		return AifwCnt;
	}
	
	public void setAgrmtTgtStrStg(String agrmtTgtStrStg){
		this.AgrmtTgtStrStg = agrmtTgtStrStg;
	}
	
	public String getAgrmtTgtStrStg(){
		return AgrmtTgtStrStg;
	}
	
	public void setAgrmtTgtStrAnnl(String agrmtTgtStrAnnl){
		this.AgrmtTgtStrAnnl = agrmtTgtStrAnnl;
	}
	
	public String getAgrmtTgtStrAnnl(){
		return AgrmtTgtStrAnnl;
	}
	
	public void setAgrmtTgtEndStg(String agrmtTgtEndStg){
		this.AgrmtTgtEndStg = agrmtTgtEndStg;
	}
	
	public String getAgrmtTgtEndStg(){
		return AgrmtTgtEndStg;
	}
	
	public void setAgrmtTgtEndAnnl(String agrmtTgtEndAnnl){
		this.AgrmtTgtEndAnnl = agrmtTgtEndAnnl;
	}
	
	public String getAgrmtTgtEndAnnl(){
		return AgrmtTgtEndAnnl;
	}

    public String getSacSn() {
        return SacSn;
    }

    public void setSacSn(String sacSn) {
        SacSn = sacSn;
    }

    public String getAgrmtDv() {
        return AgrmtDv;
    }

    public void setAgrmtDv(String agrmtDv) {
        AgrmtDv = agrmtDv;
    }

    public String getAgcfYn() {
        return AgcfYn;
    }

    public void setAgcfYn(String agcfYn) {
        AgcfYn = agcfYn;
    }
    
    public String getOpagYn() {
        return OpagYn;
    }

    public void setOpagYn(String opagYn) {
        OpagYn = opagYn;
    }

	public void setAgrmtStDt(String agrmtStDt) {
		AgrmtStDt = agrmtStDt;
	}

	public String getAgrmtStDt() {
		return AgrmtStDt;
	}
	
}
